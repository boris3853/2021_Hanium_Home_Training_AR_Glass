#include <iostream>
#include <map>
#include <fstream>
#include <sstream>
#include "jsoncpp/json/json.h"
#include "ros/ros.h"
#include "msg_creator/Keypoints.h"
//------------------added-------
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/types.h>
#include <sys/msg.h>
#include <stdlib.h>
#include <string.h>

//-----------------------------------------//
// message type for External Communication
struct keypoint_data{
	float matrix[25][3];
	float TF_vector[25];
};

struct message{
	long msg_type;
	struct keypoint_data Data;
};

//-----------------------------------------//
// message type for External Communication

struct Keypoint{
        double x;
        double y;
        double prob;
        bool KeyTrue[25];
        int  type_ex; // type of exercise
};
std::map<int, Keypoint> Keypoints;

class TX2_Publisher{
private:
	msg_creator::Keypoints Keys;


public:
	TX2_Publisher(ros::NodeHandle nh, ros::Publisher pub)
	{
        	pub = nh.advertise<msg_creator::Keypoints>("chatter", 1000);
	}
	
	message getmsg(key_t key){
		int msqid;
		struct message msg_data;

		if((msqid=msgget(key,IPC_CREAT|0666))==-1){
			std::cout<<"msgget failed\n";
			exit(0);
		}
		for(int cnt=0;cnt<50;++cnt){
			if(msgrcv(msqid, &msg_data,sizeof(struct keypoint_data),0,0)==-1){
				puts("msgrcv failed");
				exit(0);
			}
		

			for(int r=0;r<25;++r){
				for(int c=0;c<3;++c) printf("%.2f\t", msg_data.Data.matrix[r][c]);
				printf("TF: %.2f\n", msg_data.Data.TF_vector[r]);
			}
			ROS_INFO("------------------------------------------------------\n");
		}
		
		if(msgctl(msqid, IPC_RMID, NULL)==-1){
			std::cout << "msgctl failed\n";
			exit(0);
		}

		return msg_data;
	}


	void createmsg(){


	}

	void publish(ros::Publisher pub){	
                pub.publish(this->Keys);
	}
};



int read_json(std::string str){
        Json::Value root;
        std::ifstream ifs(str, std::ifstream::in);
        Json::CharReaderBuilder builder;
        builder["collectComments"] = false;
        JSONCPP_STRING errs;

        if (!parseFromStream(builder, ifs, &root, &errs)) {
            std::cout << errs << std::endl;
            return EXIT_FAILURE;
        }

	Keypoints.clear();
        Json::Value Target = root["people"];
        for(Json::ValueIterator it1 = Target.begin(); it1 != Target.end(); ++it1){
                Json::Value NewTarget = (*it1)["pose_keypoints_2d"];
                for(Json::ValueIterator it2 = NewTarget.begin(); it2 != NewTarget.end();){
                        static int key_id = 0;
			if(key_id == 25) key_id = 0;

                        Keypoint cur;
                        
			cur.x = (*it2++).asDouble();
                        cur.y = (*it2++).asDouble();
                        cur.prob = (*it2++).asDouble();

                        Keypoints.insert(std::pair<int, Keypoint>(key_id++, cur));
                }
        }
        return EXIT_SUCCESS;

}

int main(int argc, char **argv){
        ros::init(argc, argv, "talker");
        ros::NodeHandle nh;
	ros::Publisher pub;
	TX2_Publisher(nh, pub);
        ros::Rate loop_rate(10);


        while(ros::ok()){
/*
                for(int i=0;i<25;++i){ // i as key_id
                        Keys.x[i] = Keypoints[i].x;
                        Keys.y[i] = Keypoints[i].y;
                        Keys.prob[i] = Keypoints[i].prob;

                        //ROS_INFO("x: %lf y: %lf prob: %lf", Keypoints[i].x, Keypoints[i].y, Keypoints[i].prob);
                        ROS_INFO("x[%2d]: %10.6lf y[%2d]: %10.6lf prob[%2d]: %10.6lf", i, Keys.x[i], i, Keys.y[i], i, Keys.prob[i]);
                }
*/

                ros::spinOnce();
                loop_rate.sleep();
        }
}
