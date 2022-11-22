import rospy
from wit_imu.msg import lonlatmsg
from chassis_drive.msg import Drive
import numpy as np
import math

def wit_message(msg):
    rospy.loginfo("I heard orientation_x:%s",msg.orientation_x)
    rospy.loginfo("I heard orientation_y:%s",msg.orientation_y)
    rospy.loginfo("I heard orientation_z:%s",msg.orientation_x)
    rospy.loginfo("I heard orientation_w:%s",msg.orientation_w)
    rospy.loginfo("I heard angular_velocity_x:%s",msg.angular_velocity_x)
    rospy.loginfo("I heard angular_velocity_y:%s",msg.angular_velocity_y)
    rospy.loginfo("I heard angular_velocity_z:%s",msg.angular_velocity_z)
    rospy.loginfo("I heard linear_acceleration_x:%s",msg.linear_acceleration_x)
    rospy.loginfo("I heard linear_acceleration_y:%s",msg.linear_acceleration_y)
    rospy.loginfo("I heard linear_acceleration_z:%s",msg.linear_acceleration_z)
    rospy.loginfo("I heard lon:%s",msg.lon)
    rospy.loginfo("I heard lat:%s",msg.lat)

def angle_change(msg,target_lon,target_lat):
    lon_differ = (msg.lon - target_lon)*1000*60*23.69
    lat_differ = (msg.lat - target_lat)*1000*60*30.80
    if lon_differ >= 0 :
        tan=lat_differ/lon_differ
        angle_differ = np.arctan(tan)
        return int(angle_differ)

if __name__ == "__main__":
    rospy.init_node("control_server")
    sub_wit = rospy.Subscriber("wit/imu",lonlatmsg,wit_message,queue_size=10)
    rospy.spin()
    pub_servos= rospy.Publisher("command/servos_motor",Drive,queue_size=10)
    rate = rospy.Rate(10)
    drive=Drive()
    drive.angle = angle_change(drive,119.2150000,32.0688333)