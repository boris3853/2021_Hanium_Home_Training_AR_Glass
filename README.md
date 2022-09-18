# 홈트레이닝 AR 글래스
2021년도 동아리 빛돌에서 진행한 프로젝트입니다.

## 1. 개요
<p align="center">
    <img src="https://user-images.githubusercontent.com/60434800/190900142-3967e4d9-3557-4fb8-b970-8ae04bbe17a9.png" height="190">
    <img src="https://user-images.githubusercontent.com/60434800/190900145-2e023186-c6aa-486b-8f4f-0a77da4631cc.png" height="190">
    <img src="https://user-images.githubusercontent.com/60434800/190900146-7b7e6ee2-d65d-4c0b-8d8c-00064ed70a15.png" height="190">
</p>

- Human Pose Estimation을 활용한 운동 자세 평가
- 2D 이미지 2개를 이용해 3D 좌표 모델로 변환하기 위한 Multi Camera System
- AR glass 내에서 UI와 애플리케이션을 구현
- 올바른 자세의 3D 모델과 사용자의 Skeleton 모델 시각화

## 2. 영상

<p align="center">
    <a href="http://www.youtube.com/watch?feature=player_embedded&v=ZGKXTQvbzjc
" target="_blank"><img src="http://img.youtube.com/vi/ZGKXTQvbzjc/0.jpg" 
alt="IMAGE ALT TEXT HERE" width="320" height="240" border="10" /></a>
    <br>
    <sup>https://youtu.be/ZGKXTQvbzjc</sup>
</p>


## 3. 작품 구상도
### 3.1. 주요 H/W 구성도
<img src="https://user-images.githubusercontent.com/60434800/190900447-343242da-7e25-4a55-924d-950cf9ddf24f.png" width="90%">

### 3.2. 주요 S/W 구성도
<img src="https://user-images.githubusercontent.com/60434800/190900461-06f93d3c-d674-4930-b66e-02ec76c5f1c8.png" width="90%">

### 3.3. 라즈베리파이 - TX2 S/W 구성도
<img src="https://user-images.githubusercontent.com/60434800/190900435-80e55720-072a-4687-9bb6-b46ff0d44d27.png" width="90%">

### 3.4. TX2 전처리 작업
<img src="https://user-images.githubusercontent.com/60434800/190900419-366225a2-7c61-454c-bcd7-edb120409954.png" width="60%">

### 3.5. TX2 주요 작업
<img src="https://user-images.githubusercontent.com/60434800/190900412-0d67b8b2-a159-48f3-b37d-cba2f39fea59.png" width="70%">

### 3.6. TX2 - AR 글래스 S/W 구성도
<img src="https://user-images.githubusercontent.com/60434800/190900318-b506bfe9-7c31-477c-949e-89dd99ff9fb7.png" width="90%">

## 4. 작품 개발 환경
<p align="center">
<img src="https://user-images.githubusercontent.com/60434800/190901329-6858890d-af9b-4b29-8c22-64380279a3f7.png" width="70%" height="70%">
</p>

### 4.1. H/W 주요 기능
#### Raspberry Pi 4B
<p align="left">
<img src="https://user-images.githubusercontent.com/60434800/190901360-95a4e4a5-758b-4f49-ad37-c838e6d54d48.png">
</p>

- Logitech C920을 이용해 사용자의 자세 촬영
- TX2와의 ROS통신으로 촬영한 사진 전송

#### Nvidia Jetson TX2
<p align="left">
<img src="https://user-images.githubusercontent.com/60434800/190901429-02c1cdb8-52ec-4cf6-aa07-274121fc3faf.png">
</p>

- ROS로 Raspberry PI에서 이미지 메세지를 수신
- ROS message_filter와 Time stamp를 이용해 PI 간 사진이 찍힌 시점이 같다면 저장
- OpenPose로 각각의 사진에 대해서 사용자의 Keypoint 좌표를 얻고, 3D 좌표로 변환
- 3D 좌표를 Dense model에 넣어 부위별로 운동 자세가 올바른지에 대해 판단
- AR glass와 WebSocket 통신으로 3D 좌표와 자세 별로 올바른 지 여부 내용을 전송

#### Nreal AR Glass
<p align="left">
<img src="https://user-images.githubusercontent.com/60434800/190901435-6251dfc5-7524-47a7-ab08-13353c3a83d0.png">
</p>

- 사용자에게 본인의 자세를 3D skeleton으로 보여준다. 
- 이미 저장되어 있는 3D model과 skeleton 모델을 통해 올바른 자세와 사용자의 자세를 보여 준다.


### 4.1. S/W 주요 기능
#### RPI4 – TX2 보드간단방향 ROS 통신
![image](https://user-images.githubusercontent.com/60434800/190901636-2b154188-9213-4357-b07b-ee0552f87ac1.png)

- 라즈베리파이에서 받은 웹캠 이미지 파일을 publisher 노드에서 jpg 파일을 ROS image_msg 형식으로 변환 및 압축해서 Subscriber 노드로 전송한다.
- Subscriber 노드에서는 비슷한 TimeStamp를 가진 ROS 메시지를 동기화하여 /Image/PI1 와  /Image/PI2 폴더에 jpg 파일을 저장한다.
- 
#### TX2 보드 – AR 글래스 간의WebSocket 통신

1) TX2 -> AR 글래스

<p align="left">
<img src="https://user-images.githubusercontent.com/60434800/190901879-bc3eced4-5c10-4d59-bfaf-1357a9df938b.png" width="35%" height="35%">
</p>

- [사용자 자세 데이터 / 각 관절별로 올바른지 여부]에 대한 데이터를 Keypoints.msg에 저장한다.
- TX2 보드에서 rosbridge 서버를 통해 AR 글래스 측의 ROS-Sharp 클라이언트 쪽에 WebSocket 통신을 진행한다.
- AR 글래스 측에서는 WebSocketSubscriber에서는 WebSocketConnector을 통해 Keypoints.msg를 받는다.

2) AR 글래스 -> TX2

<p align="left">
<img src="https://user-images.githubusercontent.com/60434800/190901888-aeb844f6-e2c0-4daf-97a0-4be88c6bfaae.png" width="35%" height="35%">
</p>

- AR 글래스에서 입력받은 운동 종류를 Exercise.msg로 정의하여 TX2 보드에게 해당 메시지를 보낸다.

#### OpenPose를 통한 Keypoint 추출
![image](https://user-images.githubusercontent.com/60434800/190901659-58cff0e2-fce4-48a2-9061-efe4dacbd2b0.png)

- /Image/PI1 와 /Image/PI2 폴더에서 받은 jpg 파일을 Openpose를 이용하여 Keypoint를 추출한다.
- 대표적인 Keypoint로는 [Neck, Rshoulder, RKnee, Rankle, RHip] 등이 존재한다.

#### 3D Pose Model Reconstruction
![image](https://user-images.githubusercontent.com/60434800/190901662-6d5c8b72-833e-4d33-944b-6676a1cf97bf.png)

- 2D keypoint 2개를 Triangulation을 이용해서 3D좌표를 얻어낸다.
- 카메라의 배치가 직각이고 높이가 같다는 가정하에서는 깊이를 다른 이미지의 가로 값으로 예상해서 구할 수도 있다. 다른 방향에서 구한 keypoint들을 normalize된 confidence값을 가중치로 해서 weighted sum으로 표현하는 것도 가능하다.
 
#### 올바른 자세 모델 학습
![image](https://user-images.githubusercontent.com/60434800/190901665-9c0f228f-e410-4a7b-8eee-812f7ada62fb.png)

-  aihub dataset의 운동이 올바른지 판단하는 기준에 대해서 부위별로 올바른지를 판단하는 벡터를 만들었다. 판단 벡터는 각각의 부위에서 값이 0 또는 1을 가진다.
- 3D keypoint를 입력으로 받아서 판단벡터를 출력하는 Dense model도 구성한다.
 
#### Skeleton 모델 시각화
![image](https://user-images.githubusercontent.com/60434800/190901677-91cb8010-8861-4ed2-b63f-855a5062941b.png)

- WebSocket 통신을 통해 받은 Keypoints.msg를 [사용자 자세 데이터 / 각 관절별로 올바른지 여부] 로 파싱한다.
- 각 관절을 구로 나타내고 관절 사이를 연결해주는 선을 그려 관절끼리의 연결을 표현한다. 
- 사용자 자세 데이터를 통해 Skeleton Keypoint들에 대한 좌표 값을 설정하고, 관절이 잘못 되었을 경우에 해당 관절을 강조한다.

#### 올바른 자세 3D 모델 시각화
![image](https://user-images.githubusercontent.com/60434800/190901679-3426e80c-11bb-41dc-8a8c-6b576f9edff6.png)

- 사용자로부터 받은 운동 종류 인덱스에 따라 해당 운동의 올바른 자세 애니메이션을 3D 모델로 출력한다.

