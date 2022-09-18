# -*- coding: utf-8 -*-
"""
Created on Tue Jul 20 16:45:13 2021

@author: dlsrn
아래의 코드는 aihub의 피트니스 자세 이미지 dataset를 읽어오기 위한 api이다.
aihub에서 다운로드 권한을 얻어서 수행해야 한다.
피트니스 자세 데이터셋 api
"""

import json
import numpy as np
import os
import cv2
import matplotlib.pyplot as plt
import csv

class fitness_data_api:
    def __init__(self,pose_idx):
        self.BODY_PARTS = { "Nose": 0, "Neck": 1, "Right Shoulder": 2, "Right Elbow": 3, "Right Wrist": 4,
               "Left Shoulder": 5, "Left Elbow": 6, "Left Wrist": 7, "Waist":8,"Right Hip": 9, "Right Knee": 10,
               "Right Ankle": 11, "Left Hip": 12, "Left Knee": 13, "Left Ankle": 14, "Right Eye": 15,
               "Left Eye": 16, "Right Ear": 17, "Left Ear": 18, "Left Foot": 19,"Left Palm":20,"Right palm":21,
               "Right Foot": 22,"Back":23
               }
        self.POSE_PAIRS = [ ["Neck", "Right Shoulder"], ["Neck", "Left Shoulder"], 
               ["Right Shoulder", "Right Elbow"],["Right Elbow", "Right Wrist"],["Right Wrist", "Right Palm"], 
               ["Left Shoulder", "Left Elbow"], ["Left Elbow", "Left Wrist"],["Left Wrist", "Left Palm"],
               ["Neck", "Back"], ["Back","Waist"],["Waist","Right Hip"],["Waist","Left Hip"],
               ["Right Hip", "Right Knee"], ["Right Knee", "Right Ankle"], 
               ["Left Hip", "Left Knee"], ["Left Knee", "Left Ankle"],
               ["Neck", "Nose"], ["Nose", "Right Eye"], ["Right Eye", "Right Ear"],
               ["Nose", "Left Eye"], ["Left Eye", "Left Ear"], 
               ["Right Ankle", "Right Foot"],["Left Ankle", "Left Foot"]]
        #   .zip파일을 풀고, 폴더별로 운동을 정리한다.
        self.pos_path=["[라벨링]기구_Labeling/","[라벨링]맨몸운동_Labeling/","[라벨링]바벨_덤벨_Labeling/"]
        self.basic_path="E:/aihub dataset/피트니스 자세 이미지/Training/"
        self.total_path=self.basic_path+self.pos_path[pose_idx%3]
        self.folder_list=os.listdir(self.total_path)
    
    def change_pos_path(self,pose_idx):
        self.total_path=self.basic_path+self.pos_path[pose_idx%3]
        self.folder_list=os.listdir(self.total_path)
    
    def json_3d_parcer(self,file_path,write_path="",save=0):
        #   ~~~-3d.json파일을 입력으로 사용한다.
        with open(file_path,"r",encoding="utf-8")as obj:
            obj_python=json.load(obj)
        frame_list=obj_python.get("frames")
        frame_idx=0
        result=[]
        if save!=0:
            try:
                os.mkdir(write_path)
            except:
                print("output file already exist")
        for frame in frame_list:
            pt=frame.get("pts")    
            vect=[]
            if save!=0:
                fig=plt.figure()
                ax=plt.axes(projection='3d')
            for x in self.POSE_PAIRS:  
                vect.append([pt[x[0]]['x']-pt[x[1]]['x'],pt[x[0]]['y']-pt[x[1]]['y'],pt[x[0]]['z']-pt[x[1]]['z']])
                if save!=0:
                    ax.plot([pt[x[0]]['x'],pt[x[1]]['x']],[pt[x[0]]['y'],pt[x[1]]['y']],[pt[x[0]]['z'],pt[x[1]]['z']])
                    plt.savefig(write_path+"/"+str(frame_idx)+".svg")
            result.append(vect)
            frame_idx=frame_idx+1
        return result
             
    def json_pt_parcer(self,file_path,write_path="",save=0):
        #   ~~~.json파일을 입력으로 사용한다.
        with open(file_path,"r",encoding="utf-8")as obj:
            obj_python=json.load(obj)
        frame_list=obj_python.get("frames")
        frame_idx=0
        result=[]
        if save!=0:
            try:
                os.mkdir(write_path)
            except:
                print("already exist")
        for frame in frame_list:
            view_idx=0;
            for element in frame.items():
                vect=[]
                pt=element[1]["pts"]
                
                if save!=0:
                    fig=plt.figure()
                    ax=plt.axes()        
                for x in self.POSE_PAIRS:
                    vect.append([pt[x[0]]['x']-pt[x[1]]['x'],pt[x[0]]['y']-pt[x[1]]['y']])
                    if save!=0:
                        plt.plot([pt[x[0]]['x'],pt[x[1]]['x']],[pt[x[0]]['y'],pt[x[1]]['y']])
                        plt.savefig(write_path+"/"+file_path[-14:-5]+"_"+str(frame_idx)+"_view"+str(view_idx)+".png")
                    view_idx=view_idx+1
            result.append(vect)
            frame_idx=frame_idx+1
        return result
    
    def search_exercise(self,find_exercise):
        #   total_path=basic_path+pos_path여야 한다.
        #   함수에 넣기전에 pos_path에서 맨몸, 기구, 바벨운동을 선택해야 한다.
        #   find_exercise에 찾는 운동을 넣고, 해당 운동의 json파일을 찾는다.
        output=[]
        for folder in self.folder_list:
            parent_path=self.total_path+folder
            file_list = [f for f in os.listdir(parent_path) if f.endswith(".json")]
            pt_files=[f for f in file_list if f[-7:-5]!="3d"]
            for file_name in pt_files:
                with open(parent_path+"/"+file_name,"r",encoding="utf-8")as obj:
                    obj_python=json.load(obj)
                info=obj_python.get("type_info")
                if find_exercise in info.get("exercise"):
                    output.append([parent_path+"/"+file_name,info.get("exercise")])
        return output
    
    def search_n_make_csv_file(self,find_exercise):
        #   먼저 정해진 pos_path내의 모든 폴더의 json에서 찾는 운동이 있는지 보고
        #   찾는 운동이 있는 json파일들을 정리한 csv파일을 만든다.
        try:
            k=self.search_exercise(find_exercise)
            print("end search")
            f=open(self.basic_path+k[0][1]+".csv",'w',newline='')
            writer=csv.writer(f)
            for k_idx in k:
                writer.writerow(k_idx)
            f.close()
        except:
            print("error")
        return k
    
    def csv_to_reader_obj(self,csv_idx):
        #   파일의 위치를 받고,
        #   csv reader객체를 출력한다.
        csv_list=[x for x in os.listdir(self.basic_path) if x.endswith('.csv')]
        
        f=open(self.basic_path+csv_list[csv_idx%4],'r')
        output=csv.reader(f)
        return output
    
    def csv_to_path_list(self,csv_idx):
        #   파일의 위치를 받고,
        #   list로 filepath를 출력한다.
        csv_list=[x for x in os.listdir(self.basic_path) if x.endswith('.csv')]
        f=open(self.basic_path+csv_list[csv_idx%4],'r')
        reader=csv.reader(f)
        ls=[x for x in reader]
        output=[x for [x,y] in ls]
        return output
    
    def Array_to_npArray(self,list_name,list_type="3d"):
        #   파일에서 좌표들을 얻어서, 배열의 형태로 저장한다.
        result=[]
        if list_type=="3d":
            for pt in list_name:
                result.append(self.json_3d_parcer(pt[0:-5]+"-3d.json"))
        else:
            for pt in list_name:
                result.append(self.json_pt_parcer(pt))
        return result                
       

api=fitness_data_api(1)
lis=api.csv_to_path_list(0)
answer=api.Array_to_npArray(lis)