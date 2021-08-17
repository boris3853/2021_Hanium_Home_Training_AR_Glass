// Generated by gencpp from file msg_creator/Keypoints.msg
// DO NOT EDIT!


#ifndef MSG_CREATOR_MESSAGE_KEYPOINTS_H
#define MSG_CREATOR_MESSAGE_KEYPOINTS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace msg_creator
{
template <class ContainerAllocator>
struct Keypoints_
{
  typedef Keypoints_<ContainerAllocator> Type;

  Keypoints_()
    : x()
    , y()
    , prob()
    , KeyTrue()
    , type_ex(0)  {
      x.assign(0.0);

      y.assign(0.0);

      prob.assign(0.0);

      KeyTrue.assign(0.0);
  }
  Keypoints_(const ContainerAllocator& _alloc)
    : x()
    , y()
    , prob()
    , KeyTrue()
    , type_ex(0)  {
  (void)_alloc;
      x.assign(0.0);

      y.assign(0.0);

      prob.assign(0.0);

      KeyTrue.assign(0.0);
  }



   typedef boost::array<double, 25>  _x_type;
  _x_type x;

   typedef boost::array<double, 25>  _y_type;
  _y_type y;

   typedef boost::array<double, 25>  _prob_type;
  _prob_type prob;

   typedef boost::array<double, 25>  _KeyTrue_type;
  _KeyTrue_type KeyTrue;

   typedef uint8_t _type_ex_type;
  _type_ex_type type_ex;





  typedef boost::shared_ptr< ::msg_creator::Keypoints_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msg_creator::Keypoints_<ContainerAllocator> const> ConstPtr;

}; // struct Keypoints_

typedef ::msg_creator::Keypoints_<std::allocator<void> > Keypoints;

typedef boost::shared_ptr< ::msg_creator::Keypoints > KeypointsPtr;
typedef boost::shared_ptr< ::msg_creator::Keypoints const> KeypointsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msg_creator::Keypoints_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msg_creator::Keypoints_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace msg_creator

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'msg_creator': ['/home/nvidia/21_hf271/TX2_main/src/msg_creator/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::msg_creator::Keypoints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msg_creator::Keypoints_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_creator::Keypoints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_creator::Keypoints_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_creator::Keypoints_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_creator::Keypoints_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msg_creator::Keypoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a2259b33e519f11f311bd1ff20ba6ac6";
  }

  static const char* value(const ::msg_creator::Keypoints_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa2259b33e519f11fULL;
  static const uint64_t static_value2 = 0x311bd1ff20ba6ac6ULL;
};

template<class ContainerAllocator>
struct DataType< ::msg_creator::Keypoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msg_creator/Keypoints";
  }

  static const char* value(const ::msg_creator::Keypoints_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msg_creator::Keypoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[25] x\n\
float64[25] y\n\
float64[25] prob\n\
\n\
float64[25] KeyTrue\n\
uint8 type_ex\n\
";
  }

  static const char* value(const ::msg_creator::Keypoints_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msg_creator::Keypoints_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.prob);
      stream.next(m.KeyTrue);
      stream.next(m.type_ex);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Keypoints_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msg_creator::Keypoints_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msg_creator::Keypoints_<ContainerAllocator>& v)
  {
    s << indent << "x[]" << std::endl;
    for (size_t i = 0; i < v.x.size(); ++i)
    {
      s << indent << "  x[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.x[i]);
    }
    s << indent << "y[]" << std::endl;
    for (size_t i = 0; i < v.y.size(); ++i)
    {
      s << indent << "  y[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.y[i]);
    }
    s << indent << "prob[]" << std::endl;
    for (size_t i = 0; i < v.prob.size(); ++i)
    {
      s << indent << "  prob[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.prob[i]);
    }
    s << indent << "KeyTrue[]" << std::endl;
    for (size_t i = 0; i < v.KeyTrue.size(); ++i)
    {
      s << indent << "  KeyTrue[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.KeyTrue[i]);
    }
    s << indent << "type_ex: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type_ex);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSG_CREATOR_MESSAGE_KEYPOINTS_H
