using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DB;
using System.Data.SqlClient;

namespace DLL.DAL
{
    public partial class Appraise
    {
        public DLL.Model.Appraise GetModelbyunid(string id)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 id from Appraise ");
            strSql.Append(" where unid=@id");
            SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.VarChar,32)
			};
            parameters[0].Value = id;
            string newid = DLL.DB.SQLHelper.FastSelect(strSql.ToString(), parameters);
            DLL.Model.Appraise model = GetModel(Convert.ToInt32(newid));
            if (model != null)
            {
                return model;
            }
            else
            {
                return null;
            }
        }

    }
}
