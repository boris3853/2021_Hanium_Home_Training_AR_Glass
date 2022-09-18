# -*- coding: utf-8 -*-
"""
Created on Fri Mar 26 19:30:48 2021

@author: dlsrn
"""


import urllib
from pytube import YouTube

def download_video(url, path=None, max_duration=10):
    '''Download Youtube video from the url to the path specified, or the cwd if non specified.
        Only videos shorter than max_duration are downloaded and reports are printed to say which
         video is downloaded successfully.'''
         
    try:
        yt = YouTube(url)
        duration = yt.length
        if duration < max_duration*60*1000:
            yt = yt.streams.filter(file_extension='mp4').first()
            out_file = yt.download(path)
            file_name = out_file.split("\\")[-1]
            print(f"Downloaded {file_name} correctly!")
        else:
            print(f"Video {url} too long")
    except Exception as exc:
        print(f"Download of {url} did not work because of {exc}...")
def get_mp4files_using_html(exer,query):
    url = "https://www.youtube.com/results?search_query=" + query
    response = urllib.request.urlopen(url)
    html = response.read()
    k=str(html)
    # soup = BeautifulSoup(html, 'html.parser')
    # input_fp= open("C:/Users/dlsrn/Desktop/plank_youtube_search.txt", "rt",encoding="UTF8")
    # file_String=input_fp.read()
    ind=k.find("videoId\":\"")
    D=[]
    while k.find("videoId\":\"",ind+21)!=-1:
        ind =k.find("videoId\":\"",ind+21)
        buff=k[ind+10:ind+21]
        D.append(buff)
    
    V=set(D)
    V=list(V)
    for x in V:
        download_video("https://www.youtube.com/watch?v="+x, path="D:/youtube_downloads_test/"+exer) 
'''
get_mp4files_using_html("plank","vmffodzmwktp")
get_mp4files_using_html("pushup","vkfrnqguvurlwktp")
get_mp4files_using_html("squat","tmznjxmwktp")
'''