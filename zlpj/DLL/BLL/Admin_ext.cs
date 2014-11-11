using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DLL.BLL
{
    public partial class Admin
    {
        /// <summary>
        /// 登录检验
        /// </summary>
        public string Login(string loginname, string password)
        {
            String str = dal.Login(loginname, password);
            return str;                       
        }
    }
}
