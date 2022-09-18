using UnityEngine;

namespace RosSharp.RosBridgeClient
{
    public class KeypointSubscriber : UnitySubscriber<MessageTypes.Keypoints.Keypoints> 
    {

        public double[] x;
        public double[] y;
        public double[] prob;
        public double[] KeyTrue;
        public byte type_ex;

        protected override void Start()
        {
            base.Start();
        }


        protected override void ReceiveMessage(MessageTypes.Keypoints.Keypoints message)
        {
            x = message.x;
            y = message.y;
            prob = message.prob;
            KeyTrue = message.KeyTrue;
            type_ex = message.type_ex;
        }
    }
    
}