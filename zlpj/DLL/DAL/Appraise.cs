using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using DB;//Please add references
namespace DLL.DAL
{
    /// <summary>
    /// 数据访问类:Appraise
    /// </summary>
    public partial class Appraise
    {
        public Appraise()
        { }
        #region  Method
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(int id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from Appraise");
            strSql.Append(" where id=@id");
            SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4)
			};
            parameters[0].Value = id;

            return DbHelperSQL.Exists(strSql.ToString(), parameters);
        }


        /// <summary>
        /// 增加一条数据
        /// </summary>
        public int Add(DLL.Model.Appraise model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into Appraise(");
            strSql.Append("fid,unid,aid,aname,sg,rg,kg,ag,fg,total,suggestion,shortage,survey,personal,flag)");
            strSql.Append(" values (");
            strSql.Append("@fid,@unid,@aid,@aname,@sg,@rg,@kg,@ag,@fg,@total,@suggestion,@shortage,@survey,@personal,@flag)");
            strSql.Append(";select @@IDENTITY");
            SqlParameter[] parameters = {
					new SqlParameter("@fid", SqlDbType.Int,4),
					new SqlParameter("@unid", SqlDbType.VarChar,32),
					new SqlParameter("@aid", SqlDbType.Int,4),
					new SqlParameter("@aname", SqlDbType.VarChar,255),
					new SqlParameter("@sg", SqlDbType.Int,4),
					new SqlParameter("@rg", SqlDbType.Int,4),
					new SqlParameter("@kg", SqlDbType.Int,4),
					new SqlParameter("@ag", SqlDbType.Int,4),
					new SqlParameter("@fg", SqlDbType.Int,4),
					new SqlParameter("@total", SqlDbType.Int,4),
					new SqlParameter("@suggestion", SqlDbType.VarChar),
					new SqlParameter("@shortage", SqlDbType.VarChar),
					new SqlParameter("@survey", SqlDbType.Int,4),
					new SqlParameter("@personal", SqlDbType.Int,4),
					new SqlParameter("@flag", SqlDbType.Int,4)};
            parameters[0].Value = model.fid;
            parameters[1].Value = model.unid;
            parameters[2].Value = model.aid;
            parameters[3].Value = model.aname;
            parameters[4].Value = 20;
            parameters[5].Value = 20;
            parameters[6].Value = 20;
            parameters[7].Value = 20;
            parameters[8].Value = 20;
            parameters[9].Value = model.sg + model.rg + model.kg + model.ag + model.fg; 
            parameters[10].Value = model.suggestion;
            parameters[11].Value = model.shortage;
            parameters[12].Value = 0;
            parameters[13].Value = 0;
            parameters[14].Value = 0;         
            object obj = DbHelperSQL.GetSingle(strSql.ToString(), parameters);
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(obj);
            }
        }
        /// <summary>
        /// 更新一条数据
        /// </summary>
        public bool Update(DLL.Model.Appraise model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update Appraise set ");
            strSql.Append("fid=@fid,");
            strSql.Append("unid=@unid,");
            strSql.Append("aid=@aid,");
            strSql.Append("aname=@aname,");
            strSql.Append("sg=@sg,");
            strSql.Append("rg=@rg,");
            strSql.Append("kg=@kg,");
            strSql.Append("ag=@ag,");
            strSql.Append("fg=@fg,");
            strSql.Append("total=@total,");
            strSql.Append("suggestion=@suggestion,");
            strSql.Append("shortage=@shortage,");
            strSql.Append("survey=@survey,");
            strSql.Append("personal=@personal,");
            strSql.Append("flag=@flag");
            strSql.Append(" where id=@id");
            SqlParameter[] parameters = {
					new SqlParameter("@fid", SqlDbType.Int,4),
					new SqlParameter("@unid", SqlDbType.VarChar,32),
					new SqlParameter("@aid", SqlDbType.Int,4),
					new SqlParameter("@aname", SqlDbType.VarChar,255),
					new SqlParameter("@sg", SqlDbType.Int,4),
					new SqlParameter("@rg", SqlDbType.Int,4),
					new SqlParameter("@kg", SqlDbType.Int,4),
					new SqlParameter("@ag", SqlDbType.Int,4),
					new SqlParameter("@fg", SqlDbType.Int,4),
					new SqlParameter("@total", SqlDbType.Int,4),
					new SqlParameter("@suggestion", SqlDbType.VarChar),
					new SqlParameter("@shortage", SqlDbType.VarChar),
					new SqlParameter("@survey", SqlDbType.Int,4),
					new SqlParameter("@personal", SqlDbType.Int,4),
					new SqlParameter("@flag", SqlDbType.Int,4),
					new SqlParameter("@id", SqlDbType.Int,4)};
            parameters[0].Value = model.fid;
            parameters[1].Value = model.unid;
            parameters[2].Value = model.aid;
            parameters[3].Value = model.aname;
            parameters[4].Value = model.sg;
            parameters[5].Value = model.rg;
            parameters[6].Value = model.kg;
            parameters[7].Value = model.ag;
            parameters[8].Value = model.fg;
            parameters[9].Value = model.sg + model.rg + model.kg + model.ag + model.fg; ;
            parameters[10].Value = model.suggestion;
            parameters[11].Value = model.shortage;
            parameters[12].Value = model.survey;
            parameters[13].Value = model.personal;
            parameters[14].Value = model.flag;
            parameters[15].Value = model.id;

            int rows = DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool Delete(int id)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from Appraise ");
            strSql.Append(" where id=@id");
            SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4)
			};
            parameters[0].Value = id;

            int rows = DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        /// <summary>
        /// 批量删除数据
        /// </summary>
        public bool DeleteList(string idlist)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from Appraise ");
            strSql.Append(" where id in (" + idlist + ")  ");
            int rows = DbHelperSQL.ExecuteSql(strSql.ToString());
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public DLL.Model.Appraise GetModel(int id)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 id,fid,unid,aid,aname,sg,rg,kg,ag,fg,total,suggestion,shortage,survey,personal,flag from Appraise ");
            strSql.Append(" where id=@id");
            SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4)
			};
            parameters[0].Value = id;

            DLL.Model.Appraise model = new DLL.Model.Appraise();
            DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["id"] != null && ds.Tables[0].Rows[0]["id"].ToString() != "")
                {
                    model.id = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                }
                if (ds.Tables[0].Rows[0]["fid"] != null && ds.Tables[0].Rows[0]["fid"].ToString() != "")
                {
                    model.fid = int.Parse(ds.Tables[0].Rows[0]["fid"].ToString());
                }
                if (ds.Tables[0].Rows[0]["unid"] != null && ds.Tables[0].Rows[0]["unid"].ToString() != "")
                {
                    model.unid = ds.Tables[0].Rows[0]["unid"].ToString();
                }
                if (ds.Tables[0].Rows[0]["aid"] != null && ds.Tables[0].Rows[0]["aid"].ToString() != "")
                {
                    model.aid = int.Parse(ds.Tables[0].Rows[0]["aid"].ToString());
                }
                if (ds.Tables[0].Rows[0]["aname"] != null && ds.Tables[0].Rows[0]["aname"].ToString() != "")
                {
                    model.aname = ds.Tables[0].Rows[0]["aname"].ToString();
                }
                if (ds.Tables[0].Rows[0]["sg"] != null && ds.Tables[0].Rows[0]["sg"].ToString() != "")
                {
                    model.sg = int.Parse(ds.Tables[0].Rows[0]["sg"].ToString());
                }
                if (ds.Tables[0].Rows[0]["rg"] != null && ds.Tables[0].Rows[0]["rg"].ToString() != "")
                {
                    model.rg = int.Parse(ds.Tables[0].Rows[0]["rg"].ToString());
                }
                if (ds.Tables[0].Rows[0]["kg"] != null && ds.Tables[0].Rows[0]["kg"].ToString() != "")
                {
                    model.kg = int.Parse(ds.Tables[0].Rows[0]["kg"].ToString());
                }
                if (ds.Tables[0].Rows[0]["ag"] != null && ds.Tables[0].Rows[0]["ag"].ToString() != "")
                {
                    model.ag = int.Parse(ds.Tables[0].Rows[0]["ag"].ToString());
                }
                if (ds.Tables[0].Rows[0]["fg"] != null && ds.Tables[0].Rows[0]["fg"].ToString() != "")
                {
                    model.fg = int.Parse(ds.Tables[0].Rows[0]["fg"].ToString());
                }
                if (ds.Tables[0].Rows[0]["total"] != null && ds.Tables[0].Rows[0]["total"].ToString() != "")
                {
                    model.total = int.Parse(ds.Tables[0].Rows[0]["total"].ToString());
                }
                if (ds.Tables[0].Rows[0]["suggestion"] != null && ds.Tables[0].Rows[0]["suggestion"].ToString() != "")
                {
                    model.suggestion = ds.Tables[0].Rows[0]["suggestion"].ToString();
                }
                if (ds.Tables[0].Rows[0]["shortage"] != null && ds.Tables[0].Rows[0]["shortage"].ToString() != "")
                {
                    model.shortage = ds.Tables[0].Rows[0]["shortage"].ToString();
                }
                if (ds.Tables[0].Rows[0]["survey"] != null && ds.Tables[0].Rows[0]["survey"].ToString() != "")
                {
                    model.survey = int.Parse(ds.Tables[0].Rows[0]["survey"].ToString());
                }
                if (ds.Tables[0].Rows[0]["personal"] != null && ds.Tables[0].Rows[0]["personal"].ToString() != "")
                {
                    model.personal = int.Parse(ds.Tables[0].Rows[0]["personal"].ToString());
                }
                if (ds.Tables[0].Rows[0]["flag"] != null && ds.Tables[0].Rows[0]["flag"].ToString() != "")
                {
                    model.flag = int.Parse(ds.Tables[0].Rows[0]["flag"].ToString());
                }
                return model;
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select id,fid,unid,aid,aname,sg,rg,kg,ag,fg,total,suggestion,shortage,survey,personal,flag ");
            strSql.Append(" FROM Appraise ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 获得前几行数据
        /// </summary>
        public DataSet GetList(int Top, string strWhere, string filedOrder)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ");
            if (Top > 0)
            {
                strSql.Append(" top " + Top.ToString());
            }
            strSql.Append(" id,fid,unid,aid,aname,sg,rg,kg,ag,fg,total,suggestion,shortage,survey,personal,flag ");
            strSql.Append(" FROM Appraise ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            strSql.Append(" order by " + filedOrder);
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 获取记录总数
        /// </summary>
        public int GetRecordCount(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) FROM Appraise ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            object obj = DbHelperSQL.GetSingle(strSql.ToString());
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(obj);
            }
        }
        /// <summary>
        /// 分页获取数据列表
        /// </summary>
        public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * FROM ( ");
            strSql.Append(" SELECT ROW_NUMBER() OVER (");
            if (!string.IsNullOrEmpty(orderby.Trim()))
            {
                strSql.Append("order by T." + orderby);
            }
            else
            {
                strSql.Append("order by T.id desc");
            }
            strSql.Append(")AS Row, T.*  from Appraise T ");
            if (!string.IsNullOrEmpty(strWhere.Trim()))
            {
                strSql.Append(" WHERE " + strWhere);
            }
            strSql.Append(" ) TT");
            strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
            return DbHelperSQL.Query(strSql.ToString());
        }

        /*
        /// <summary>
        /// 分页获取数据列表
        /// </summary>
        public DataSet GetList(int PageSize,int PageIndex,string strWhere)
        {
            SqlParameter[] parameters = {
                    new SqlParameter("@tblName", SqlDbType.VarChar, 255),
                    new SqlParameter("@fldName", SqlDbType.VarChar, 255),
                    new SqlParameter("@PageSize", SqlDbType.Int),
                    new SqlParameter("@PageIndex", SqlDbType.Int),
                    new SqlParameter("@IsReCount", SqlDbType.Bit),
                    new SqlParameter("@OrderType", SqlDbType.Bit),
                    new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
                    };
            parameters[0].Value = "Appraise";
            parameters[1].Value = "id";
            parameters[2].Value = PageSize;
            parameters[3].Value = PageIndex;
            parameters[4].Value = 0;
            parameters[5].Value = 0;
            parameters[6].Value = strWhere;	
            return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
        }*/

        #endregion  Method
    }
}

