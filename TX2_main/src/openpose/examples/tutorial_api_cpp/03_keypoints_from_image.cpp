// ----------------------- OpenPose C++ API Tutorial - Example 3 - Body from image -----------------------
// It reads an image, process it, and displays it with the pose (and optionally hand and face) keypoints. In addition,
// it includes all the OpenPose configuration flags (enable/disable hand, face, output saving, etc.).

// Third-party dependencies
#include <opencv2/opencv.hpp>
// Command-line user interface
#define OPENPOSE_FLAGS_DISABLE_PRODUCER
#define OPENPOSE_FLAGS_DISABLE_DISPLAY
#include <openpose/flags.hpp>
// OpenPose dependencies
#include <openpose/headers.hpp>
#include <stdio.h>
#include<string.h>
// Custom Caffemodel
#include <opencv2/dnn.hpp>
#include <opencv2/imgproc.hpp>
// Pipe between process
#include <memory.h>
#include <sys/msg.h>
#include <sys/ipc.h>
#include <sys/types.h>
#include <iostream>
#include <iostream>
#include <unistd.h>
#include <fcntl.h>

DEFINE_string(image_path, "examples/media/test.jpg",
    "Process an image. Read all standard formats (jpg, png, bmp, etc.).");

// Display
DEFINE_bool(no_display,                 true,
    "Enable to disable the visual display.");

struct keypoint_data{
	float matrix[25][3];
	float TF_vector[25];
};
struct message{
	long msg_type;
	struct keypoint_data Data;
};
void printMsgInfo(int msqid){

        struct msqid_ds m_stat;
        printf("========== messege queue info =============\n");
        if(msgctl(msqid,IPC_STAT,&m_stat)==-1){
                printf("msgctl failed");
                exit(0);
        }
        printf(" message queue info \n");
        printf(" msg_lspid : %d\n",m_stat.msg_lspid);
        printf(" msg_qnum : %d\n",m_stat.msg_qnum);
        printf(" msg_stime : %d\n",m_stat.msg_stime);

        printf("========== messege queue info end =============\n");
}

// This worker will just read and return all the jpg files in a directory
void display(const std::shared_ptr<std::vector<std::shared_ptr<op::Datum>>>& datumsPtr)
{
    try
    {
        // User's displaying/saving/other processing here
            // datum.cvOutputData: rendered frame with pose or heatmaps
            // datum.poseKeypoints: Array<float> with the estimated pose
        if (datumsPtr != nullptr && !datumsPtr->empty())
        {
            // Display image
            const cv::Mat cvMat = OP_OP2CVCONSTMAT(datumsPtr->at(0)->cvOutputData);
            if (!cvMat.empty())
            {
                cv::imshow(OPEN_POSE_NAME_AND_VERSION + " - Tutorial C++ API", cvMat);
                cv::waitKey(0);
            }
            else
                op::opLog("Empty cv::Mat as output.", op::Priority::High, __LINE__, __FUNCTION__, __FILE__);
        }
        else
            op::opLog("Nullptr or empty datumsPtr found.", op::Priority::High);
    }
    catch (const std::exception& e)
    {
        op::error(e.what(), __LINE__, __FUNCTION__, __FILE__);
    }
}

void printKeypoints(const std::shared_ptr<std::vector<std::shared_ptr<op::Datum>>>& datumsPtr)
{
    try
    {
        // Example: How to use the pose keypoints
        if (datumsPtr != nullptr && !datumsPtr->empty())
        {
            op::opLog("Body keypoints: " + datumsPtr->at(0)->poseKeypoints.toString(), op::Priority::High);
            op::opLog("Face keypoints: " + datumsPtr->at(0)->faceKeypoints.toString(), op::Priority::High);
            op::opLog("Left hand keypoints: " + datumsPtr->at(0)->handKeypoints[0].toString(), op::Priority::High);
            op::opLog("Right hand keypoints: " + datumsPtr->at(0)->handKeypoints[1].toString(), op::Priority::High);
        }
        else
            op::opLog("Nullptr or empty datumsPtr found.", op::Priority::High);
    }
    catch (const std::exception& e)
    {
        op::error(e.what(), __LINE__, __FUNCTION__, __FILE__);
    }
}

void configureWrapper(op::Wrapper& opWrapper)
{
    try
    {
        // Configuring OpenPose

        // logging_level
        op::checkBool(
            0 <= FLAGS_logging_level && FLAGS_logging_level <= 255, "Wrong logging_level value.",
            __LINE__, __FUNCTION__, __FILE__);
        op::ConfigureLog::setPriorityThreshold((op::Priority)FLAGS_logging_level);
        op::Profiler::setDefaultX(FLAGS_profile_speed);

        // Applying user defined configuration - GFlags to program variables
        // outputSize
        const auto outputSize = op::flagsToPoint(op::String(FLAGS_output_resolution), "128x128");
        // netInputSize
        const auto netInputSize = op::flagsToPoint(op::String(FLAGS_net_resolution), "352x288");
        // faceNetInputSize
        const auto faceNetInputSize = op::flagsToPoint(op::String(FLAGS_face_net_resolution), "368x368 (multiples of 16)");
        // handNetInputSize
        const auto handNetInputSize = op::flagsToPoint(op::String(FLAGS_hand_net_resolution), "368x368 (multiples of 16)");
        // poseMode
        const auto poseMode = op::flagsToPoseMode(FLAGS_body);
        // poseModel
        const auto poseModel = op::flagsToPoseModel(op::String(FLAGS_model_pose));
        // JSON saving
        if (!FLAGS_write_keypoint.empty())
            op::opLog(
                "Flag `write_keypoint` is deprecated and will eventually be removed. Please, use `write_json`"
                " instead.", op::Priority::Max);
        // keypointScaleMode
        const auto keypointScaleMode = op::flagsToScaleMode(FLAGS_keypoint_scale);
        // heatmaps to add
        const auto heatMapTypes = op::flagsToHeatMaps(FLAGS_heatmaps_add_parts, FLAGS_heatmaps_add_bkg,
                                                      FLAGS_heatmaps_add_PAFs);
        const auto heatMapScaleMode = op::flagsToHeatMapScaleMode(FLAGS_heatmaps_scale);
        // >1 camera view?
        const auto multipleView = (FLAGS_3d || FLAGS_3d_views > 1);
        // Face and hand detectors
        const auto faceDetector = op::flagsToDetector(FLAGS_face_detector);
        const auto handDetector = op::flagsToDetector(FLAGS_hand_detector);
        // Enabling Google Logging
        const bool enableGoogleLogging = true;

        // Pose configuration (use WrapperStructPose{} for default and recommended configuration)
        const op::WrapperStructPose wrapperStructPose{
            poseMode, netInputSize, FLAGS_net_resolution_dynamic, outputSize, keypointScaleMode, FLAGS_num_gpu,
            FLAGS_num_gpu_start, FLAGS_scale_number, (float)FLAGS_scale_gap,
            op::flagsToRenderMode(FLAGS_render_pose, multipleView), poseModel, !FLAGS_disable_blending,
            (float)FLAGS_alpha_pose, (float)FLAGS_alpha_heatmap, FLAGS_part_to_show, op::String(FLAGS_model_folder),
            heatMapTypes, heatMapScaleMode, FLAGS_part_candidates, (float)FLAGS_render_threshold,
            FLAGS_number_people_max, FLAGS_maximize_positives, FLAGS_fps_max, op::String(FLAGS_prototxt_path),
            op::String(FLAGS_caffemodel_path), (float)FLAGS_upsampling_ratio, enableGoogleLogging};
        opWrapper.configure(wrapperStructPose);
        /*
		// Face configuration (use op::WrapperStructFace{} to disable it)
        const op::WrapperStructFace wrapperStructFace{
            FLAGS_face, faceDetector, faceNetInputSize,
            op::flagsToRenderMode(FLAGS_face_render, multipleView, FLAGS_render_pose),
            (float)FLAGS_face_alpha_pose, (float)FLAGS_face_alpha_heatmap, (float)FLAGS_face_render_threshold};
        opWrapper.configure(wrapperStructFace);
        // Hand configuration (use op::WrapperStructHand{} to disable it)
        const op::WrapperStructHand wrapperStructHand{
            FLAGS_hand, handDetector, handNetInputSize, FLAGS_hand_scale_number, (float)FLAGS_hand_scale_range,
            op::flagsToRenderMode(FLAGS_hand_render, multipleView, FLAGS_render_pose), (float)FLAGS_hand_alpha_pose,
            (float)FLAGS_hand_alpha_heatmap, (float)FLAGS_hand_render_threshold};
        opWrapper.configure(wrapperStructHand);
        // Extra functionality configuration (use op::WrapperStructExtra{} to disable it)
        const op::WrapperStructExtra wrapperStructExtra{
            FLAGS_3d, FLAGS_3d_min_views, FLAGS_identification, FLAGS_tracking, FLAGS_ik_threads};
        opWrapper.configure(wrapperStructExtra);
		*/
        // Output (comment or use default argument to disable any output)
        const op::WrapperStructOutput wrapperStructOutput{
            FLAGS_cli_verbose, op::String(FLAGS_write_keypoint), op::stringToDataFormat(FLAGS_write_keypoint_format),
            op::String(FLAGS_write_json), op::String(FLAGS_write_coco_json), FLAGS_write_coco_json_variants,
            FLAGS_write_coco_json_variant, op::String(FLAGS_write_images), op::String(FLAGS_write_images_format),
            op::String(FLAGS_write_video), FLAGS_write_video_fps, FLAGS_write_video_with_audio,
            op::String(FLAGS_write_heatmaps), op::String(FLAGS_write_heatmaps_format), op::String(FLAGS_write_video_3d),
            op::String(FLAGS_write_video_adam), op::String(FLAGS_write_bvh), op::String(FLAGS_udp_host),
            op::String(FLAGS_udp_port)};
        opWrapper.configure(wrapperStructOutput);
        // No GUI. Equivalent to: opWrapper.configure(op::WrapperStructGui{});
        // Set to single-thread (for sequential processing and/or debugging and/or reducing latency)
        if (FLAGS_disable_multi_thread)
            opWrapper.disableMultiThreading();
    }
    catch (const std::exception& e)
    {
        op::error(e.what(), __LINE__, __FUNCTION__, __FILE__);
    }
}


int tutorialApiCpp()
{
    try
    {
        op::opLog("Starting OpenPose demo...", op::Priority::High);
        const auto opTimer = op::getTimerInit();

        // Configuring OpenPose
        op::opLog("Configuring OpenPose...", op::Priority::High);
        op::Wrapper opWrapper{op::ThreadManagerMode::Asynchronous};
        configureWrapper(opWrapper);
	
        // Starting OpenPose
        op::opLog("Starting thread(s)...", op::Priority::High);
        opWrapper.start();
	const char* modeltxt = "models/custom/squat_model/deploy.prototxt"; //prototxt
	const char* modelBin = "models/custom/squat_model/model.caffemodel";//binary¸ðµ¨
	cv::dnn::Net net = cv::dnn::readNetFromCaffe(modeltxt, modelBin);
	if (net.empty()) { exit(-1); }
        // Process and push Mk-queue
	char path_PI1[100];
	char path_PI2[100];
	key_t key_id;
	struct message msg_data;
	key_id =msgget((key_t)1234, IPC_CREAT|0666);
	msg_data.msg_type=1;
	for (int cnt = 0; cnt < 50; cnt++) {
		//char path_PI1[100]={0,};
		//char path_PI2[100]={0,};
		sprintf(path_PI1, "../../image/PI1/image%d.jpg", cnt);
		sprintf(path_PI2, "../../image/PI2/image%d.jpg", cnt);
		const cv::Mat cvImageToProcessPI_1 = cv::imread(path_PI1);
		const cv::Mat cvImageToProcessPI_2 = cv::imread(path_PI2);
		op::Matrix imageToProcessPI_1 = OP_CV2OPCONSTMAT(cvImageToProcessPI_1);
		op::Matrix imageToProcessPI_2 = OP_CV2OPCONSTMAT(cvImageToProcessPI_2);
		auto datumProcessedPI_1 = opWrapper.emplaceAndPop(imageToProcessPI_1);
		auto datumProcessedPI_2 = opWrapper.emplaceAndPop(imageToProcessPI_2);
		if (datumProcessedPI_1 != nullptr&& datumProcessedPI_2 != nullptr)
			{
				auto PI1_keypoints = datumProcessedPI_1->at(0)->poseKeypoints;
				auto PI2_keypoints = datumProcessedPI_2->at(0)->poseKeypoints;
				float keypoint_3D[25][3];
				if(PI1_keypoints.getSize(0)<=0) continue;
				//memcpy(keypoint_3D, &(PI1_keypoints.at(0)), sizeof(float) * 75);
				/* 
				for(int r=0;r<25;r++){
                                         for(int c=0;c<3;c++){
                                                 keypoint_3D[r][c]=PI1_keypoints[r*3+c];
						printf("%.3f\t",keypoint_3D[r][c]);
					}
					printf("\n"); 
				}
                                printf("-------------------------------\n");                                 
				*/
				float min[3] = { 99999,99999,99999 }, max[3] = { -99999,-99999,-99999 }    ;
				for (int i = 0; i < 25; i++) {
					float w1 = PI1_keypoints[{0,i,2}];
					float w2 = PI2_keypoints[{0,i,2}];
					keypoint_3D[i][0] = PI1_keypoints[{0,i,0}];
					keypoint_3D[i][2] = PI2_keypoints[{0,i,0}];
					if (w1 + w2 != 0)
						keypoint_3D[i][1] = (PI1_keypoints[{0,i,1}] + PI2_keypoints[{0,i,1}]) /2;
					for (int c = 0; c < 3; c++) {
	                                            if (max[c] < keypoint_3D[i][c] && keypoint_3D[i][c] != 0)
	                                                         max[c] = keypoint_3D[i][c];
	                                            if (min[c] > keypoint_3D[i][c] && keypoint_3D[i][c] != 0)
	                                                         min[c] = keypoint_3D[i][c];
	                                 }
				}
				memcpy(msg_data.Data.matrix,keypoint_3D,sizeof(float)*75);
				
				for(int r=0;r<25;r++){
					for(int c=0;c<3;c++)
						printf("%.2f\t",keypoint_3D[r][c]);
				printf("\n");
				}
				printf("-------------------------------\n");
				
				//printKeypoints(datumProcessedPI_1);
				//printKeypoints(datumProcessedPI_2);
				if (!FLAGS_no_display) {
					display(datumProcessedPI_1);
					display(datumProcessedPI_2);
				}
/*
				float min[3] = { 99999,99999,99999 }, max[3] = { -99999,-99999,-99999 };
				for (int r = 0; r < 25; r++) {//find max, min
					for (int c = 0; c < 3; c++) {
						if (max[c] < keypoint_3D[r][c] && keypoint_3D[r][c] != 0)
							max[c] = keypoint_3D[r][c];
						if (min[c] > keypoint_3D[r][c] && keypoint_3D[r][c] != 0)
							min[c] = keypoint_3D[r][c];
					}
				
				}
*/
				for (int r = 0; r < 25; r++) {//normalize
					for (int c = 0; c < 3; c++) {
						keypoint_3D[r][c] = (keypoint_3D[r][c] - min[c]) / (max[c] - min[c]);
					}
					if (keypoint_3D[r][0] < 0 || keypoint_3D[r][1] < 0 || keypoint_3D[r][2] < 0||
						r==20|| r == 21|| r == 23|| r == 24)
					{
						keypoint_3D[r][0] = -1; keypoint_3D[r][1] = -1; keypoint_3D[r][2] = -1;
					}
				}
				/*
				printf("-----------------------------\n");
				for (int i = 0; i < 25; i++) {
					for (int j = 0; j < 3; j++) {
						printf("%f\t", keypoint_3D[i][j]);
					}
					printf("\n");
				}
				*/
				cv::Mat key_in = cv::Mat(25, 3, CV_32FC1,keypoint_3D);
				cv::Mat blobs = cv::dnn::blobFromImage(key_in, 1, key_in.size());
				cv::Mat result;
				net.setInput(blobs, "data");
				result = net.forward("reshape_1");
				memcpy(msg_data.Data.TF_vector,result.ptr<float>(0),sizeof(float)*25);
				//printf("success!\n");
				//printMsgInfo(key_id);
				msgsnd(key_id,&msg_data,sizeof(struct keypoint_data),0);
			}
			else
				op::opLog("Image could not be processed.", op::Priority::High);
			// Measuring total time
		}
        op::printTime(opTimer, "OpenPose demo successfully finished. Total time: ", " seconds.", op::Priority::High);

        // Return
        return 0;
    }
    catch (const std::exception&)
    {
        return -1;
    }
}

int main(int argc, char *argv[])
{
    // Parsing command line flags
    gflags::ParseCommandLineFlags(&argc, &argv, true);

    // Running tutorialApiCpp
    return tutorialApiCpp();
}
