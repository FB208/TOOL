using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class detail_abandon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<DLL.Model.computer> ds = Getco().FindAll(s => s.id == int.Parse(Request.QueryString["parameter"]));
        rptdetail.DataSource = ds;
        rptdetail.DataBind();
        LinkButton2.Text = new DLL.BLL.computer().thiscount(int.Parse(Request.QueryString["parameter"]));
    }
    protected void Buttoneditor_Click(object sender, EventArgs e)
    {

        Response.Redirect("editor.aspx?parameter=" + Request.QueryString["parameter"]);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("thisrepair.aspx?parameter=" + Request.QueryString["parameter"]);
    }
    public List<DLL.Model.computer> Getco()
    {
        List<DLL.Model.computer> colist = new List<DLL.Model.computer>();
        if (Cache["co"] == null)
        {
            Cache["co"] = new DLL.BLL.computer().GetModelList(""); ;
        }
        colist = Cache["co"] as List<DLL.Model.computer>;
        return colist;
    }
}