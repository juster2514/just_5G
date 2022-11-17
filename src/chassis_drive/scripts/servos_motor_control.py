import RPi.GPIO as GPIO
from time import sleep
import rospy



servo_pin = 12                # 舵机信号线接树莓派12
moto_pin = 13     # 电调信号线接树莓派13


GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(servo_pin, GPIO.OUT, initial=False)
GPIO.setup(moto_pin, GPIO.OUT, initial=False)


def angleToDutyCycle(angle):
    return 2.5 + angle / 180.0 * 10
s = GPIO.PWM(servo_pin, 50)    # 初始频率为50HZ
s.start(angleToDutyCycle(90))  # 舵机初始化角度为90
m = GPIO.PWM(moto_pin, 200)   #电调初始频率为200HZ
sleep(0.5)
s.ChangeDutyCycle(0)           # 清空当前占空比，使舵机停止抖动
m.ChangeDutyCycle(0) 	# 初始化占空比


