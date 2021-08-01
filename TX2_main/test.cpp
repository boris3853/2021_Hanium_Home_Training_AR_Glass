#include <iostream>
#include <map>
#include <fstream>
#include "jsoncpp/json/json.h"



struct Keypoint{
	double x;
	double y;
	double prob;
	bool KeyTrue[25];
	int  type_ex; // type of exercise
};
std::map<int, Keypoint> Keypoints;


int read_json(char *str){
	Json::Value root;
        std::ifstream ifs(str, std::ifstream::in);
        Json::CharReaderBuilder builder;
        builder["collectComments"] = false;
        JSONCPP_STRING errs;

        if (!parseFromStream(builder, ifs, &root, &errs)) {
            std::cout << errs << std::endl;
            return EXIT_FAILURE;
        }


        Json::Value Target = root["people"];
        for(Json::ValueIterator it1 = Target.begin(); it1 != Target.end(); ++it1){
                Json::Value NewTarget = (*it1)["pose_keypoints_2d"];
                for(Json::ValueIterator it2 = NewTarget.begin(); it2 != NewTarget.end();){
                	static int key_id = 0;
			Keypoint cur;

			cur.x = (*it2++).asDouble();
			cur.y = (*it2++).asDouble();
			cur.prob = (*it2++).asDouble();

			Keypoints.insert(std::pair<int, Keypoint>(key_id++, cur));
		}
        }
        return EXIT_SUCCESS;

}

void write_json(char *str){
	
}

void print(int num){
	std::cout << "x: " << Keypoints[num].x <<
	        "\ny: " << Keypoints[num].y <<
		"\nprob: " << Keypoints[num].prob << std::endl;
}

int main(int argc, char **argv){
	int num;
	if(argc != 2) {
		std::cout << "Usage : ./test [Json file]\n";
		return 0;
	}

	read_json(argv[1]);
	while(1){
		std::cout << "keypoint_id(0 ~ 24): ";
		std::cin >> num;
		print(num);
	}
}
