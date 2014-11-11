using System;
namespace DLL.Model
{
    /// <summary>
    /// Admin:实体类(属性说明自动提取数据库字段的描述信息)
    /// </summary>
    [Serializable]
    public partial class Admin
    {
        public Admin()
        { }
        #region Model
        private int _id;
        private string _name;
        private string _loginname;
        private string _password;
        private int _role;
        /// <summary>
        /// 
        /// </summary>
        public int id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 姓名
        /// </summary>
        public string name
        {
            set { _name = value; }
            get { return _name; }
        }
        /// <summary>
        /// 登录名
        /// </summary>
        public string loginname
        {
            set { _loginname = value; }
            get { return _loginname; }
        }
        /// <summary>
        /// 密码
        /// </summary>
        public string password
        {
            set { _password = value; }
            get { return _password; }
        }
        /// <summary>
        /// 权限
        /// </summary>
        public int role
        {
            set { _role = value; }
            get { return _role; }
        }
        #endregion Model

    }
}

