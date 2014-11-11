using System;
namespace DLL.Model
{
    /// <summary>
    /// Distribution:实体类(属性说明自动提取数据库字段的描述信息)
    /// </summary>
    [Serializable]
    public partial class Distribution
    {
        public Distribution()
        { }
        #region Model
        private int _id;
        private string _name;
        private DateTime? _sendtime;
        private int _flag;
        private string _addname;
        /// <summary>
        /// 
        /// </summary>
        public int id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 批次名称
        /// </summary>
        public string name
        {
            set { _name = value; }
            get { return _name; }
        }
        /// <summary>
        /// 分配时间
        /// </summary>
        public DateTime? sendTime
        {
            set { _sendtime = value; }
            get { return _sendtime; }
        }
        /// <summary>
        /// 分配状态
        /// </summary>
        public int flag
        {
            set { _flag = value; }
            get { return _flag; }
        }
        /// <summary>
        /// 添加人姓名
        /// </summary>
        public string addname
        {
            set { _addname = value; }
            get { return _addname; }
        }
        #endregion Model

    }
}

