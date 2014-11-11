using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["parameter"] != null)
        {
            bool con;
            System.Web.HttpContext.Current.Session["sql"] = null;
            List<DLL.Model.Appraise> alist = new DLL.BLL.Appraise().GetModelList("fid=" + Request["parameter"].ToString());
            List<DLL.Model.dtoadmin> dlist = new DLL.BLL.dtoadmin().GetModelList("fid=" + Request["parameter"].ToString());
            if (alist.Count > 0)
            {
                string str = alist[0].id.ToString();
                for (int i = 1; i < alist.Count; i++)
                {
                    str += "," + alist[i].id.ToString();
                }
                con = new DLL.BLL.Appraise().DeleteList(str);
            }
            else
            {
                con = true;
            }
             if(con&&dlist.Count>0)
            {
                string str = dlist[0].id.ToString();
                for (int i = 1; i < dlist.Count; i++)
                {
                    str += "," + dlist[i].id.ToString();
                }
                con = new DLL.BLL.dtoadmin().DeleteList(str);
            }
            if(con)
            {
                new DLL.BLL.Distribution().Delete(Convert.ToInt32(Request["parameter"]));
            }
            Response.Redirect("List_wfp.aspx");
        }
    }
}