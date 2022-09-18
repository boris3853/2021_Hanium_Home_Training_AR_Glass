# -*- coding: utf-8 -*-
"""
Created on Mon Mar  1 17:19:13 2021

@author: dlsrn
"""

import json
import urllib.request as req
import cv2 as cv
import numpy as np


## -- mipi dataset을 parcing
def json_2_python(path):    
    with open(path,"r")as obj_json:
        obj_python=json.load(obj_json)
    img_python=obj_python.get("images")
    ann_python=obj_python.get("annotations")
    cate_python=obj_python.get("categories")
    cate_python=dict(list(cate_python)[0])
    return img_python,ann_python,cate_python
    
def python_2_keypoint(ann_python,cate_python,inde):
    k = ann_python[inde]
    cate=list(cate_python['skeleton'])
    img_id=list(k.values())[-4]
    keys=np.array(k['keypoints'])
    char=("%12d"%img_id).replace(" ","0")+".jpg"
    img=cv.imread("D:/training/"+char)
    points=keys.reshape(17,3)[:,:2]
    try:    
        for ind in range(17):
            y=points[ind,0]
            x=points[ind,1]
            if(x>0 or y>0): 
                img[x:x+4,y:y+4,1]=255
                img[x:x+4,y:y+4,2]=0
                img[x:x+4,y:y+4,0]=0
            
        for c in cate:
            draw_lines(cate,points,img)
        cv.imshow('result',img)
        cv.waitKey(0)
        cv.destroyAllWindows()        
    except:
        print("error in {} index file".format(inde))
    return points
'''
def python_2_segmentation(ann_python,cate_python,inde):
    k = ann_python[inde]
    cate=list(cat.values())[-1]
    img_id=list(k.values())[-4]
    seg=list(k.values())[0]
    char=("%12d"%img_id).replace(" ","0")
    img=cv.imread("D:/training/"+char+".jpg")
    str_img=img.reshape(1,img.shape[0]*img.shape[1])
    try:    
        for ind in range(len(list(ann[inde].values())[0])):
            
        cv.imshow('result',img)
        cv.waitKey(0)
        cv.destroyAllWindows()        
    except:
        print("error in {} index file",inde)
'''

def draw_lines(arr,points,img):
    for x in arr:
        p1=tuple(points[x[0]-1,:])
        p2=tuple(points[x[1]-1,:])
        if (p1!=(0,0) and p2!=(0,0)):
            cv.line(img,p1,p2,(255,0,0),2)
        
        
def json_2_img_save(path):
    img_python,_=json_2_python(path)
    url=[]
    img=[]
    for dic in img_python:
        url.append((list(dic.values())[-2]))
        img.append(("D:/training/"+list(dic.values())[1]))
    cnt=0
    for u,i in zip(url,img):
        try:
            req.urlretrieve(u,i)
        except:
            print("error in {}\n".format(i))
        cnt=cnt+1
        print("\r{} percent done".format(cnt/len(img)))
        
        
#_,ann,cat=json_2_python("D:/annotations/person_keypoints_train2017.json")

def json_2_numpy(path):
    with open(path,"r")as input_:
        obj=json.load(input_)
    input_.get("")