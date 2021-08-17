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
    public class SetBoolResponse : Message
    {
        public const string RosMessageName = "std_srvs/SetBool";

        public bool success { get; set; }
        //  indicate successful run of triggered service
        public string message { get; set; }
        //  informational, e.g. for error messages

        public SetBoolResponse()
        {
            this.success = false;
            this.message = "";
        }

        public SetBoolResponse(bool success, string message)
        {
            this.success = success;
            this.message = message;
        }
    }
}
