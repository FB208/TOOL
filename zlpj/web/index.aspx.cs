using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DLL;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.diverror.Visible = false;
    }
    protected void Buttonlogin_Click(object sender, EventArgs e)
    {
        if (TextBoxusername.Text.Trim() != "" && TextBoxpassword.Text.Trim() != "")
        {
            string url = new DLL.BLL.Admin().Login(TextBoxusername.Text, TextBoxpassword.Text);
            if (url == "")
            {
                this.diverror.Visible = true;

            }
            else { Response.Redirect(url); }
        }
    }
    protected void Buttonqueren_Click(object sender, EventArgs e)
    {
        this.diverror.Visible = false;
    }
}