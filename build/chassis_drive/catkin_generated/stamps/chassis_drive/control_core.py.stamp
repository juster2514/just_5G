import rospy
from wit_imu.msg import lonlatmsg
import servos_motor_control

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
if __name__ == "__main__":
    rospy.init_node("control_server")
    sub_wit = rospy.Subscriber("wit/imu",lonlatmsg,wit_message,queue_size=10)
    pub_servos= rospy.Publisher("cmd/servos_motor",)
    rospy.spin()