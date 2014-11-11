using System;
using System.Data;
using System.Collections.Generic;
using DLL.Model;
namespace DLL.BLL
{
    /// <summary>
    /// Appraise
    /// </summary>
    public partial class Appraise
    {
        private readonly DLL.DAL.Appraise dal = new DLL.DAL.Appraise();
        public Appraise()
        { }
        #region  Method
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(int id)
        {
            return dal.Exists(id);
        }

        /// <summary>
        /// 增加一条数据
        /// </summary>
        public int Add(DLL.Model.Appraise model)
        {
            return dal.Add(model);
        }

        /// <summary>
        /// 更新一条数据
        /// </summary>
        public bool Update(DLL.Model.Appraise model)
        {
            return dal.Update(model);
        }

        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool Delete(int id)
        {

            return dal.Delete(id);
        }
        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool DeleteList(string idlist)
        {
            return dal.DeleteList(idlist);
        }

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public DLL.Model.Appraise GetModel(int id)
        {

            return dal.GetModel(id);
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            return dal.GetList(strWhere);
        }
        /// <summary>
        /// 获得前几行数据
        /// </summary>
        public DataSet GetList(int Top, string strWhere, string filedOrder)
        {
            return dal.GetList(Top, strWhere, filedOrder);
        }
        /// <summary>
        /// 获得数据列表
        /// </summary>
        public List<DLL.Model.Appraise> GetModelList(string strWhere)
        {
            DataSet ds = dal.GetList(strWhere);
            return DataTableToList(ds.Tables[0]);
        }
        /// <summary>
        /// 获得数据列表
        /// </summary>
        public List<DLL.Model.Appraise> DataTableToList(DataTable dt)
        {
            List<DLL.Model.Appraise> modelList = new List<DLL.Model.Appraise>();
            int rowsCount = dt.Rows.Count;
            if (rowsCount > 0)
            {
                DLL.Model.Appraise model;
                for (int n = 0; n < rowsCount; n++)
                {
                    model = new DLL.Model.Appraise();
                    if (dt.Rows[n]["id"] != null && dt.Rows[n]["id"].ToString() != "")
                    {
                        model.id = int.Parse(dt.Rows[n]["id"].ToString());
                    }
                    if (dt.Rows[n]["fid"] != null && dt.Rows[n]["fid"].ToString() != "")
                    {
                        model.fid = int.Parse(dt.Rows[n]["fid"].ToString());
                    }
                    if (dt.Rows[n]["unid"] != null && dt.Rows[n]["unid"].ToString() != "")
                    {
                        model.unid = dt.Rows[n]["unid"].ToString();
                    }
                    if (dt.Rows[n]["aid"] != null && dt.Rows[n]["aid"].ToString() != "")
                    {
                        model.aid = int.Parse(dt.Rows[n]["aid"].ToString());
                    }
                    if (dt.Rows[n]["aname"] != null && dt.Rows[n]["aname"].ToString() != "")
                    {
                        model.aname = dt.Rows[n]["aname"].ToString();
                    }
                    if (dt.Rows[n]["sg"] != null && dt.Rows[n]["sg"].ToString() != "")
                    {
                        model.sg = int.Parse(dt.Rows[n]["sg"].ToString());
                    }
                    if (dt.Rows[n]["rg"] != null && dt.Rows[n]["rg"].ToString() != "")
                    {
                        model.rg = int.Parse(dt.Rows[n]["rg"].ToString());
                    }
                    if (dt.Rows[n]["kg"] != null && dt.Rows[n]["kg"].ToString() != "")
                    {
                        model.kg = int.Parse(dt.Rows[n]["kg"].ToString());
                    }
                    if (dt.Rows[n]["ag"] != null && dt.Rows[n]["ag"].ToString() != "")
                    {
                        model.ag = int.Parse(dt.Rows[n]["ag"].ToString());
                    }
                    if (dt.Rows[n]["fg"] != null && dt.Rows[n]["fg"].ToString() != "")
                    {
                        model.fg = int.Parse(dt.Rows[n]["fg"].ToString());
                    }
                    if (dt.Rows[n]["total"] != null && dt.Rows[n]["total"].ToString() != "")
                    {
                        model.total = int.Parse(dt.Rows[n]["total"].ToString());
                    }
                    if (dt.Rows[n]["suggestion"] != null && dt.Rows[n]["suggestion"].ToString() != "")
                    {
                        model.suggestion = dt.Rows[n]["suggestion"].ToString();
                    }
                    if (dt.Rows[n]["shortage"] != null && dt.Rows[n]["shortage"].ToString() != "")
                    {
                        model.shortage = dt.Rows[n]["shortage"].ToString();
                    }
                    if (dt.Rows[n]["survey"] != null && dt.Rows[n]["survey"].ToString() != "")
                    {
                        model.survey = int.Parse(dt.Rows[n]["survey"].ToString());
                    }
                    if (dt.Rows[n]["personal"] != null && dt.Rows[n]["personal"].ToString() != "")
                    {
                        model.personal = int.Parse(dt.Rows[n]["personal"].ToString());
                    }
                    if (dt.Rows[n]["flag"] != null && dt.Rows[n]["flag"].ToString() != "")
                    {
                        model.flag = int.Parse(dt.Rows[n]["flag"].ToString());
                    }
                    modelList.Add(model);
                }
            }
            return modelList;
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetAllList()
        {
            return GetList("");
        }

        /// <summary>
        /// 分页获取数据列表
        /// </summary>
        public int GetRecordCount(string strWhere)
        {
            return dal.GetRecordCount(strWhere);
        }
        /// <summary>
        /// 分页获取数据列表
        /// </summary>
        public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
        {
            return dal.GetListByPage(strWhere, orderby, startIndex, endIndex);
        }
        /// <summary>
        /// 分页获取数据列表
        /// </summary>
        //public DataSet GetList(int PageSize,int PageIndex,string strWhere)
        //{
        //return dal.GetList(PageSize,PageIndex,strWhere);
        //}

        #endregion  Method
    }
}

