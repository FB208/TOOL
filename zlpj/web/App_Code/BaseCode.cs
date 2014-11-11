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
         /// 调研
         /// </summary>
         public enum survey
         {
            未调研 = 0,
            已调研 = 1,
            
         }
         /// <summary>
         /// 身份
         /// </summary>
         public enum role
         {
             管理员 = 1,
             评价人员 = 2,
             领导 = 3

         }
         /// <summary>
         /// 是否个人问题
         /// </summary>
         public enum personal
         {
             非个人 = 0,
             个人 = 1,

         }
         /// <summary>
         /// 评价状态
         /// </summary>
         public enum dflag
         {
             解锁 = 0,
             锁定 = 1,
         }
        
         /// <summary>
         /// 评价状态
         /// </summary>
         public enum aflag
         {
             未评价 = 0,
             已评价 = 1,
         }
        
       
      
    }
}