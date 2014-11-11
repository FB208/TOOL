using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
            Response.Redirect("index.aspx");

        else
        {
            if (!IsPostBack)
            {
                usernameLabel.Text = Session["Username"].ToString();
                bind();
            }

        }
    }
    protected void logoutLinkButton_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("index.aspx");
    }
    protected void bind()
    {
        List<DLL.Model.computer> colist = new DLL.BLL.computer().GetModelList("");
        Cache["co"] = colist;
        List<DLL.Model.sop> soplist = new DLL.BLL.sop().GetModelList("");
        Cache["sop"] = soplist;
    }
}
