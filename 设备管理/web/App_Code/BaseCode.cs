using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace DLL.BaseCode
{
    /// <summary>
    ///BaseCode 的摘要说明
    /// </summary>
    public partial class BaseCode
    {
       
       
        /// <summary>
        /// 状态
        /// </summary>
        public enum state
        {
            库存 = 0,
            使用中 = 1,
            已报废 = 2,
            借出 = 3
        }
        /// <summary>
        /// 部门
        /// </summary>
         public enum department
        {
            请选择 = 0,
            人事处 = 1,
            后勤 = 2,
            接待处=3,
            经济合作办公室=4,
            财务处 = 5,
            开发组 = 6
        }
         /// <summary>
         /// 部门
         /// </summary>
         public enum nettype
         {
             请选择 = 0,
             外网 = 1,
             内网 = 2,
             单机 = 3,
             隔离卡 =4
             
         }
        public enum type
        {
            请选择 = 0,
            笔记本 = 1,
            台式机 = 2,
            其他设备 = 3
        }
        public enum soptype
        {
            请选择 = 0,
            打印机 = 1,
            显示器 = 2,
           
        }
      
    }
}