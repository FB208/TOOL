using System;
namespace DLL.Model
{
    /// <summary>
    /// dtoadmin:实体类(属性说明自动提取数据库字段的描述信息)
    /// </summary>
    [Serializable]
    public partial class dtoadmin
    {
        public dtoadmin()
        { }
        #region Model
        private int _id;
        private int _fid;
        private int _aid;
        /// <summary>
        /// 
        /// </summary>
        public int id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int fid
        {
            set { _fid = value; }
            get { return _fid; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int aid
        {
            set { _aid = value; }
            get { return _aid; }
        }
        #endregion Model

    }
}

