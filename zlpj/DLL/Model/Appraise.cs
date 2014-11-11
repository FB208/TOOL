using System;
namespace DLL.Model
{
    /// <summary>
    /// Appraise:实体类(属性说明自动提取数据库字段的描述信息)
    /// </summary>
    [Serializable]
    public partial class Appraise
    {
        public Appraise()
        { }
        #region Model
        private int _id;
        private int _fid;
        private string _unid;
        private int _aid;
        private string _aname;
        private int _sg;
        private int _rg;
        private int _kg;
        private int _ag;
        private int _fg;
        private int _total;
        private string _suggestion;
        private string _shortage;
        private int _survey;
        private int _personal;
        private int _flag;
        /// <summary>
        /// 
        /// </summary>
        public int id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 评价批次
        /// </summary>
        public int fid
        {
            set { _fid = value; }
            get { return _fid; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string unid
        {
            set { _unid = value; }
            get { return _unid; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int aid
        {
            set { _aid = value; }
            get { return _aid; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string aname
        {
            set { _aname = value; }
            get { return _aname; }
        }
        /// <summary>
        /// 选题分数
        /// </summary>
        public int sg
        {
            set { _sg = value; }
            get { return _sg; }
        }
        /// <summary>
        /// 代表性分数
        /// </summary>
        public int rg
        {
            set { _rg = value; }
            get { return _rg; }
        }
        /// <summary>
        /// 知情情况分数
        /// </summary>
        public int kg
        {
            set { _kg = value; }
            get { return _kg; }
        }
        /// <summary>
        /// 提案分析分数
        /// </summary>
        public int ag
        {
            set { _ag = value; }
            get { return _ag; }
        }
        /// <summary>
        /// 建议可操作性分数
        /// </summary>
        public int fg
        {
            set { _fg = value; }
            get { return _fg; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int total
        {
            set { _total = value; }
            get { return _total; }
        }
        /// <summary>
        /// 意见
        /// </summary>
        public string suggestion
        {
            set { _suggestion = value; }
            get { return _suggestion; }
        }
        /// <summary>
        /// 不足
        /// </summary>
        public string shortage
        {
            set { _shortage = value; }
            get { return _shortage; }
        }
        /// <summary>
        /// 是否调研
        /// </summary>
        public int survey
        {
            set { _survey = value; }
            get { return _survey; }
        }
        /// <summary>
        /// 是否个人问题
        /// </summary>
        public int personal
        {
            set { _personal = value; }
            get { return _personal; }
        }
        /// <summary>
        /// 是否评价
        /// </summary>
        public int flag
        {
            set { _flag = value; }
            get { return _flag; }
        }
        #endregion Model

    }
}

