using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editor_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.diverror.Visible = false;
            if (Request.QueryString["parameter"] == null)
            {
                //user = new DLL.Model.Admin();
                //user.loginname = "1";
                //user.password = "1";
                //user.name = "1";
                //user.role = 2;
                //new DLL.BLL.Admin().Add(user);
            }
            else
            {
                this.IsXg.InnerHtml="修改用户信息";
                this.isxg2.InnerHtml = "修改用户";
                DLL.Model.Admin user = new DLL.BLL.Admin().GetModel(Convert.ToInt32(Request.QueryString["parameter"]));
                TextBoxlogin.Text = user.loginname;
                TextBoxpsw.Text = user.password;
                TextBoxname.Text = user.name;                
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBoxlogin.Text == "" || TextBoxpsw.Text == "" || TextBoxname.Text=="")
        {
            this.diverror.Visible = true;
        }
        else
        {
            DLL.Model.Admin user;
            if (Request.QueryString["parameter"] == null)
            {
                user = new DLL.Model.Admin();
                user.loginname = TextBoxlogin.Text;
                user.password = TextBoxpsw.Text;
                user.name = TextBoxname.Text;
                user.role = 2;
                new DLL.BLL.Admin().Add(user);
            }
            else
            {
                user = new DLL.BLL.Admin().GetModel(Convert.ToInt32(Request.QueryString["parameter"]));
                user.loginname = TextBoxlogin.Text;
                user.password = TextBoxpsw.Text;
                user.name = TextBoxname.Text;
                new DLL.BLL.Admin().Update(user);
            }
            Response.Redirect("List_admin.aspx");
        }
        
    }
    protected void Buttonqueren_Click(object sender, EventArgs e)
    {
        this.diverror.Visible = false;
    }
}