/* 
 * This message is auto generated by ROS#. Please DO NOT modify.
 * Note:
 * - Comments from the original code will be written in their own line 
 * - Variable sized arrays will be initialized to array of size 0 
 * Please report any issues at 
 * <https://github.com/siemens/ros-sharp> 
 */

namespace RosSharp.RosBridgeClient.MessageTypes.Std
{
    public class String : Message
    {
        public const string RosMessageName = "std_msgs/String";

        public string data { get; set; }

        public String()
        {
            this.data = "";
        }

        public String(string data)
        {
            this.data = data;
        }
    }
}
