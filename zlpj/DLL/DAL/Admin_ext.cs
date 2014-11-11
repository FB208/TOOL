using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DB;
using System.Data;
using System.Data.SqlClient;
using DLL;

namespace DLL.DAL
{
    public partial class Admin
    {
        /// <summary>
        /// 登录检验
        /// </summary>
        public string Login(string loginname, string password)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select id from Admin");
            strSql.Append(" where loginname=@loginname and password=@password");
            SqlParameter[] parameters = {
					new SqlParameter("@loginname", SqlDbType.VarChar,50),
                    new SqlParameter("@password", SqlDbType.VarChar,50)
			};
            parameters[0].Value = loginname;
            //parameters[1].Value = DLL.TOOL.Strings.Encrypt(password);
            parameters[1].Value = password;
            if (DLL.DB.SQLHelper.DataSetSelect(strSql.ToString(), parameters).Tables[0].Rows.Count == 0)
            {
                return "";
            }
            else
            {
                DLL.Model.Admin user = new DLL.DAL.Admin().GetModel(int.Parse(DLL.DB.SQLHelper.FastSelect(strSql.ToString(), parameters)));
                System.Web.HttpContext.Current.Session["Username"] = user.name;
                System.Web.HttpContext.Current.Session["role"] =user.role;
                System.Web.HttpContext.Current.Session["Userid"] = user.id;
                if(user.role == 1)
                {
                    return "List_wfp.aspx";
                }
                else if (user.role == 2)
                {
                    DLL.Model.Appraise model = new DLL.Model.Appraise();
                    int con = countwpj(user.id);
                    if (new DLL.BLL.Appraise().Getnewta() != -1&&con==0)
                    {
                        model = new DLL.BLL.Appraise().GetModel(new DLL.BLL.Appraise().Getnewta());
                        model.aid = int.Parse(System.Web.HttpContext.Current.Session["Userid"].ToString());
                        model.aname = System.Web.HttpContext.Current.Session["Username"].ToString();
                        new DLL.BLL.Appraise().Update(model);
                    }                    
                    return "List_twpj.aspx";
                }
                else if (user.role == 3)
                {
                    return "List_pcforld.aspx";
                }
                else
                {
                    return "";
                }
            }
        }
        /// <summary>
        /// 件数统计
        /// </summary>
        public int countwpj(int id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(*) from Appraise");
            strSql.Append(" where flag = 0 and aid = @id");
            SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4)
                    
			};
            parameters[0].Value = id;
            return Convert.ToInt32(DLL.DB.SQLHelper.FastSelect(strSql.ToString(), parameters)) ;
        }
    }
}
