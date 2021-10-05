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
}msg_data;
msg_creator::Keypoints TX2_Keys;	
//-----------------------------------------//
// message type for External Communication

class TX2_Publisher{
private:


public:



	msg_creator::Keypoints getmsg(ros::Publisher pub, key_t msg_key){
		int msqid;

		if((msqid=msgget(msg_key,IPC_CREAT|0666))==-1){
			std::cout<<"msgget failed\n";
			exit(0);
		}

		for(int cnt=0;cnt<50;++cnt){
			std::cout << "num: " << cnt << "\n";
			if(msgrcv(msqid, &msg_data, sizeof(struct keypoint_data),0,0)==-1){
				puts("msgrcv failed");
				exit(0);
			}
		
			for(int r=0;r<25;++r){
				TX2_Keys.x[r] = msg_data.Data.matrix[r][0];
				TX2_Keys.y[r] = msg_data.Data.matrix[r][1];
				TX2_Keys.prob[r] = msg_data.Data.matrix[r][2];
				if(msg_data.Data.TF_vector[r] >= 1) TX2_Keys.KeyTrue[r] = true;
				else TX2_Keys.KeyTrue[r] = false;
			}

			for(int r=0;r<25;++r){
                                 //for(int c=0;c<3;++c) printf("%.2f\t", msg_data.Data.matrix[r][c]);
                                  //printf("TF: %.2f\n", this->msg_data.Data.TF_vector[r]);
                                 ROS_INFO("x[%2d]: %10.6lf y[%2d]: %10.6lf prob[%2d]: %10.6lf", r, TX2_Keys.x[r], r, TX2_Keys.y[r], r, TX2_Keys.prob[r]);
                          }
                          ROS_INFO("------------------------------------------------------\n");
			pub.publish(TX2_Keys);

		}
/*		
		if(msgctl(msqid, IPC_RMID, NULL)==-1){
			std::cout << "msgctl failed\n";
			exit(0);
		}
*//*
			for(int r=0;r<25;++r){
                                  //for(int c=0;c<3;++c) printf("%.2f\t", msg_data.Data.matrix[r][c]);
                                  //printf("TF: %.2f\n", this->msg_data.Data.TF_vector[r]);
                                  ROS_INFO("x[%2d]: %10.6lf y[%2d]: %10.6lf prob[%2d]: %10.6lf", r, TX2_Keys.x[r], r, TX2_Keys.y[r], r, TX2_Keys.prob[r]);
                          }
                          ROS_INFO("------------------------------------------------------\n");
*/


		return TX2_Keys;
	}
};
int main(int argc, char **argv){
        ros::init(argc, argv, "talker");
        ros::NodeHandle nh;
	ros::Publisher pub;
        pub = nh.advertise<msg_creator::Keypoints>("chatter", 1000);

	TX2_Publisher TX2;
        ros::Rate loop_rate(10);
	key_t key=1234;

        while(ros::ok()){

		TX2.getmsg(pub, key);
		//pub.publish(TX2_Keys);

/*
		for(int r=0;r<25;++r){
                                  ROS_INFO("x[%2d]: %10.6lf y[%2d]: %10.6lf prob[%2d]: %10.6lf", r, TX2_Keys.x[r], r, TX2_Keys.y[r], r, TX2_Keys.prob[r]);
                }
                ROS_INFO("------------------------------------------------------\n");
*/


                ros::spinOnce();
                loop_rate.sleep();
        }
}
