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

        if (!IsPostBack)
        {
            usernameLabel.Text = Session["Username"].ToString();
        }


        if (int.Parse(Session["role"].ToString()) == 1)
        {
            this.pj1.Visible = false;
            this.pj2.Visible = false;
            this.ld1.Visible = false;
            this.ld2.Visible = false;

        }
        if (int.Parse(Session["role"].ToString()) == 2)
        {
            this.fp1.Visible = false;
            this.fp2.Visible = false;
            this.tj1.Visible = false;
            this.tj2.Visible = false;
            this.admin1.Visible = false;
            this.admin2.Visible = false;
            this.ld1.Visible = false;
            this.ld2.Visible = false;
        }
        if (int.Parse(Session["role"].ToString()) == 3)
        {
            this.fp1.Visible = false;
            this.fp2.Visible = false;
            this.tj1.Visible = false;
            this.tj2.Visible = false;
            this.admin1.Visible = false;
            this.admin2.Visible = false;
            this.pj1.Visible = false;
            this.pj2.Visible = false;
        }

    }

    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session["Username"] == null || Session["Userid"] == null)
        {
            Response.Redirect("index.aspx");
        }
    }
    protected void logoutLinkButton_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("index.aspx");
    }
}
