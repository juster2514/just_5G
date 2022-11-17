// Generated by gencpp from file wit_imu/lonmsg.msg
// DO NOT EDIT!


#ifndef WIT_IMU_MESSAGE_LONMSG_H
#define WIT_IMU_MESSAGE_LONMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace wit_imu
{
template <class ContainerAllocator>
struct lonmsg_
{
  typedef lonmsg_<ContainerAllocator> Type;

  lonmsg_()
    : orientation_x(0.0)
    , orientation_y(0.0)
    , orientation_z(0.0)
    , orientation_w(0.0)
    , angular_velocity_x(0.0)
    , angular_velocity_y(0.0)
    , angular_velocity_z(0.0)
    , linear_acceleration_x(0.0)
    , linear_acceleration_y(0.0)
    , linear_acceleration_z(0.0)  {
    }
  lonmsg_(const ContainerAllocator& _alloc)
    : orientation_x(0.0)
    , orientation_y(0.0)
    , orientation_z(0.0)
    , orientation_w(0.0)
    , angular_velocity_x(0.0)
    , angular_velocity_y(0.0)
    , angular_velocity_z(0.0)
    , linear_acceleration_x(0.0)
    , linear_acceleration_y(0.0)
    , linear_acceleration_z(0.0)  {
  (void)_alloc;
    }



   typedef double _orientation_x_type;
  _orientation_x_type orientation_x;

   typedef double _orientation_y_type;
  _orientation_y_type orientation_y;

   typedef double _orientation_z_type;
  _orientation_z_type orientation_z;

   typedef double _orientation_w_type;
  _orientation_w_type orientation_w;

   typedef double _angular_velocity_x_type;
  _angular_velocity_x_type angular_velocity_x;

   typedef double _angular_velocity_y_type;
  _angular_velocity_y_type angular_velocity_y;

   typedef double _angular_velocity_z_type;
  _angular_velocity_z_type angular_velocity_z;

   typedef double _linear_acceleration_x_type;
  _linear_acceleration_x_type linear_acceleration_x;

   typedef double _linear_acceleration_y_type;
  _linear_acceleration_y_type linear_acceleration_y;

   typedef double _linear_acceleration_z_type;
  _linear_acceleration_z_type linear_acceleration_z;





  typedef boost::shared_ptr< ::wit_imu::lonmsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wit_imu::lonmsg_<ContainerAllocator> const> ConstPtr;

}; // struct lonmsg_

typedef ::wit_imu::lonmsg_<std::allocator<void> > lonmsg;

typedef boost::shared_ptr< ::wit_imu::lonmsg > lonmsgPtr;
typedef boost::shared_ptr< ::wit_imu::lonmsg const> lonmsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wit_imu::lonmsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wit_imu::lonmsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::wit_imu::lonmsg_<ContainerAllocator1> & lhs, const ::wit_imu::lonmsg_<ContainerAllocator2> & rhs)
{
  return lhs.orientation_x == rhs.orientation_x &&
    lhs.orientation_y == rhs.orientation_y &&
    lhs.orientation_z == rhs.orientation_z &&
    lhs.orientation_w == rhs.orientation_w &&
    lhs.angular_velocity_x == rhs.angular_velocity_x &&
    lhs.angular_velocity_y == rhs.angular_velocity_y &&
    lhs.angular_velocity_z == rhs.angular_velocity_z &&
    lhs.linear_acceleration_x == rhs.linear_acceleration_x &&
    lhs.linear_acceleration_y == rhs.linear_acceleration_y &&
    lhs.linear_acceleration_z == rhs.linear_acceleration_z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::wit_imu::lonmsg_<ContainerAllocator1> & lhs, const ::wit_imu::lonmsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace wit_imu

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::wit_imu::lonmsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wit_imu::lonmsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wit_imu::lonmsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wit_imu::lonmsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wit_imu::lonmsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wit_imu::lonmsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wit_imu::lonmsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f6d3fea111e2a8e030584cb7b23fbadb";
  }

  static const char* value(const ::wit_imu::lonmsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf6d3fea111e2a8e0ULL;
  static const uint64_t static_value2 = 0x30584cb7b23fbadbULL;
};

template<class ContainerAllocator>
struct DataType< ::wit_imu::lonmsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wit_imu/lonmsg";
  }

  static const char* value(const ::wit_imu::lonmsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wit_imu::lonmsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"float64 orientation_x\n"
"float64 orientation_y\n"
"float64 orientation_z\n"
"float64 orientation_w\n"
"float64 angular_velocity_x\n"
"float64 angular_velocity_y\n"
"float64 angular_velocity_z\n"
"float64 linear_acceleration_x\n"
"float64 linear_acceleration_y\n"
"float64 linear_acceleration_z\n"
;
  }

  static const char* value(const ::wit_imu::lonmsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wit_imu::lonmsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.orientation_x);
      stream.next(m.orientation_y);
      stream.next(m.orientation_z);
      stream.next(m.orientation_w);
      stream.next(m.angular_velocity_x);
      stream.next(m.angular_velocity_y);
      stream.next(m.angular_velocity_z);
      stream.next(m.linear_acceleration_x);
      stream.next(m.linear_acceleration_y);
      stream.next(m.linear_acceleration_z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct lonmsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wit_imu::lonmsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wit_imu::lonmsg_<ContainerAllocator>& v)
  {
    s << indent << "orientation_x: ";
    Printer<double>::stream(s, indent + "  ", v.orientation_x);
    s << indent << "orientation_y: ";
    Printer<double>::stream(s, indent + "  ", v.orientation_y);
    s << indent << "orientation_z: ";
    Printer<double>::stream(s, indent + "  ", v.orientation_z);
    s << indent << "orientation_w: ";
    Printer<double>::stream(s, indent + "  ", v.orientation_w);
    s << indent << "angular_velocity_x: ";
    Printer<double>::stream(s, indent + "  ", v.angular_velocity_x);
    s << indent << "angular_velocity_y: ";
    Printer<double>::stream(s, indent + "  ", v.angular_velocity_y);
    s << indent << "angular_velocity_z: ";
    Printer<double>::stream(s, indent + "  ", v.angular_velocity_z);
    s << indent << "linear_acceleration_x: ";
    Printer<double>::stream(s, indent + "  ", v.linear_acceleration_x);
    s << indent << "linear_acceleration_y: ";
    Printer<double>::stream(s, indent + "  ", v.linear_acceleration_y);
    s << indent << "linear_acceleration_z: ";
    Printer<double>::stream(s, indent + "  ", v.linear_acceleration_z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WIT_IMU_MESSAGE_LONMSG_H