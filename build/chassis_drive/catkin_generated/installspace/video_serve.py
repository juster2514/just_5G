import rospy
import numpy as np
import cv2
from time import sleep

cap = cv2.VideoCapture(2)
#设置摄像头采集视频宽640高360
cap.set(cv2.CAP_PROP_FRAME_WIDTH,600)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT,400)

if __name__ == "__main__":
	rospy.init_node("video_serve")
	pub_vide=rospy.Publisher("cmd/servos",queue_size=1000)
	while (True):
		img = cap.read()
		img0 = cv2.cvtColor(img,cv2.COLOR_RGB2GRAY)
		kernel = np.ones((5,5),np.uint8)  
	#	img0 = cv2.erode(img0,kernel,iterations = 1)
	#	img0 = cv2.dilate(img0,kernel,iterations = 2)
	#	img0 = cv2.erode(img0,kernel,iterations = 1)
	#	img0 = cv2.dilate(img0,kernel,iterations = 2)
		img0 = cv2.GaussianBlur(img0,(3,3),0) #高斯降噪
	#	cv2.namedWindow("capture0",0)
	#	cv2.imshow("capture0",img0)
		yuzhi = 200 #越大越清晰 80
		img4 = cv2.getStructuringElement(cv2.MORPH_RECT, (1, (int)(img0.shape[0] / yuzhi)), (-1, -1))
		img5 = cv2.morphologyEx(img0, cv2.MORPH_OPEN, img4)
		img5 = cv2.bitwise_not(img5)
		img5 = cv2.erode(img5,kernel,iterations = 7)
		img2 = cv2.Canny(img5, 100, 150)
		#提取左右边线数组 rows【370，395】
		t = 0
		left = [-1 for i in range(0,100)]
		right = [-1 for i in range(0,100)]
		mid = [-1 for i in range(0,100)]
		mid_sum = 0
		for i in range(300,200,-1):
			l_lost = 0
			r_lost = 0
			for j in range(300,10,-1):#左
				if(img2[i][j]==255):
					left[t] = j
					l_lost = 1
					break
			#丢点，左置为0
			if l_lost == 0:
				left[t] = 0
			for j in range(300,570):#右
				if(img2[i][j]==255):
					right[t] = j
					r_lost = 1
					break
			#丢点，右置为599
			if r_lost == 0:
				right[t] = 599
			#中线数组
			mid[t] = (left[t]+right[t])/2
			mid_sum = mid[t] + mid_sum
			t = t + 1
		k = cv2.waitKey(1)
		if k == 27:
			break;
		cv2.namedWindow("capture",0)
		cv2.imshow("capture",img2)