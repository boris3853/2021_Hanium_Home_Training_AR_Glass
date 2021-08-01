#include <iostream>
#include <fstream>
#include "jsoncpp/json/json.h"


int main(){
	Json::Value root;
	std::ifstream ifs("target.json", std::ifstream::in);
	Json::CharReaderBuilder builder;
	builder["cikkectComments"] = false;
	JSONCPP_STRING errs;

	if (!parseFromStream(builder, ifs, &root, &errs)) {
	    std::cout << errs << std::endl;
    	    return EXIT_FAILURE;
  	}
	int cnt = 0;
	Json::Value Target = root["people"];
	for(Json::ValueIterator it1 = Target.begin(); it1 != Target.end(); ++it1){
		//static int cnt = 0;
		Json::Value NewTarget = (*it1)["pose_keypoints_2d"];	
 		for(Json::ValueIterator it2 = NewTarget.begin(); it2 != NewTarget.end(); ++it2){
			std::cout << (*it2) << std::endl;
	       		if((cnt++) == 2){
				cnt = 0;
				puts("");
			}	
		}
	}
  	return EXIT_SUCCESS;
}
