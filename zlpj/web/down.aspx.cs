using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class down : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["id"] != null)
        {
            System.Web.HttpContext.Current.Session["sql"] = "core1";
            SqlDataReader dr;
            using (dr = DLL.DB.SQLHelper.ExecuteReader("SELECT innerid, unid, tianid, filename, [content], attflag, wordunid FROM     yata_fj WHERE     (innerid = '" + Request["id"] + "')"))
            //运行测试  
            {
                //读取成功
                if (dr.Read())
                {
                    string fileName = dr["filename"].ToString();//文件名
                    Response.Clear();
                    Response.Buffer = true;
                    Response.Charset = "utf-8";
                    Response.AppendHeader("Content-Disposition", "attachment;filename=" + fileName); //把 attachment 改为 online 则在线打开
                    Response.ContentEncoding = System.Text.Encoding.GetEncoding("utf-8");
                    //Response.ContentType = "application/ms-excel";
                    Page.EnableViewState = false;
                    Response.BinaryWrite((byte[])dr["content"]);
                }
            }
            System.Web.HttpContext.Current.Session["sql"] = null;
            dr.Close();//关闭DataReader
            HttpContext.Current.Response.End();
        }

    }
}