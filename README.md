# 홈트레이닝 AR 글래스

### git 기본 명령어

- git clone
- git commit
- git pull
- git push

자세한거는 (한이음 마이페이지 > 학습방) 참고 혹은 구글링 해보시길..

     
     
## 디렉토리 설명

1. image_transport : (PI->Jetson) ROS 통신을 이용한 이미지 전송    
2. TX2_main : AIHub 데이터 파셔 + 유튜브 영상 crwaler ..
3. socket_comm : (Jetson -> Unity) WebSocket 통신


## 최근 변경점

image_transport 스크립트 추가 (21/07/24) 

1. clean.sh : CmakeFile, catkin_make 캐쉬 파일 제거 및 image/PI 안에 있는 .jpg file 제거 스크립트
2. tx2_update.sh: tx2 빌드 환경이 달라서 CMakeList.txt 및 헤더파일 수정 스크립트


socket_comm / TX2_main 추가 (21/08/01)

1. socket_comm: ROS-Sharp, Rosbridge 통해 TX2 -> Unity로 WebSocket 통신
2. TX2_main : json_parcers & crawling code 통합 + jsoncpp 통해서 json-reader 개발중




##### 마크다운 문법 사용법
다음 링크 참조: 
https://velog.io/@yuuuye/velog-%EB%A7%88%ED%81%AC%EB%8B%A4%EC%9A%B4MarkDown-%EC%9E%91%EC%84%B1%EB%B2%95



##### OpenPose
1. OpenPose 설치  
> git clone https://github.com/CMU-Perceptual-Computing-Lab/openpose

=> cmake시 다음과 같은 오류 발생하면 (https://github.com/CMU-Perceptual-Computing-Lab/openpose/issues/423)     
openpose/3rdparty/ 에서
> git clone https://github.com/CMU-Perceptual-Computing-Lab/caffe.git







#### alias

##### Openpose alias
cleanmake='make clean && make all -j6'
runcustomcode='cd ~/21_hf271/TX2_main/src/openpose && ./build/examples    /tutorial_api_cpp/03_keypoints_from_image.bin'
openposedemo='./build/examples/openpose/openpose.bin'

##### Other Project alias
alias socketserver='source ~/21_hf271/TX2_main/devel/setup.bash && roslaunch     rosbridge_server rosbridge_websocket.launch'
alias tx2_pub='source ~/21_hf271/TX2_main/devel/setup.bash && cd ~/21_hf271/    TX2_main && rosrun socket tx2_publisher'
alias sub='source ~/21_hf271/TX2_main/devel/setup.bash && cd ~/21_hf271/TX2_    main && rosrun webcam webcam_sub _image_transport:=compressed'