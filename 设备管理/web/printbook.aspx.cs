using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class printbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
        if (Session["Username"] == null)
            Response.Redirect("index.aspx");
    }
    protected void bind()
    {
        List<DLL.Model.computer> colist = new DLL.BLL.computer().GetModelList("type='笔记本'");
        rptList.DataSource = colist.ToList();
        rptList.DataBind();
    }
}