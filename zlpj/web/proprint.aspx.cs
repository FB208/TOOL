using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class proprint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            //this.Form.Target = "_blank";
            if (!IsPostBack)
            {
                List<DLL.Model.JCHC> JCHClist = new DLL.BLL.Unit().ReturnJCHC();
                Labeljc.Text = JCHClist.FirstOrDefault(s => s.isdefault == "1").jc + "届";
                Labelhc.Text = JCHClist.FirstOrDefault(s => s.isdefault == "1").hc + "次";
                List<DLL.Model.LB> LBlist = new DLL.BLL.Unit().ReturnLB();
                DropDownListkind.DataSource = LBlist;
                DropDownListkind.DataTextField = "name";
                DropDownListkind.DataValueField = "sortno";
                DropDownListkind.DataBind();
                List<DLL.Model.jcsj> DPlist = new DLL.BLL.Unit().ReturnDP();
                DropDownListparty.DataSource = DPlist;
                DropDownListparty.DataTextField = "name";
                DropDownListparty.DataValueField = "id";
                DropDownListparty.DataBind();
                List<DLL.Model.jcsj> JBlist = new DLL.BLL.Unit().ReturnJB();
                DropDownListconst.DataSource = JBlist;
                DropDownListconst.DataTextField = "name";
                DropDownListconst.DataValueField = "id";
                DropDownListconst.DataBind();
                List<DLL.Model.jcsj> ZWHlist = new DLL.BLL.Unit().ReturnZWH();
                DropDownListcommit.DataSource = ZWHlist;
                DropDownListcommit.DataTextField = "name";
                DropDownListcommit.DataValueField = "id";
                DropDownListcommit.DataBind();
               
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string kind = "0", party = "0", constname = "0",commit ="0";
        string order = DropDownList1.SelectedValue;
        if (DropDownListkind.SelectedIndex != 0)
        {
            kind = DropDownListkind.SelectedValue;
        }
        if (DropDownListparty.SelectedIndex != 0)
        {
            party = DropDownListparty.SelectedValue;
        }
        if (DropDownListconst.SelectedIndex != 0)
        {
            constname = DropDownListconst.SelectedValue;
        }
        if (DropDownListcommit.SelectedIndex != 0)
        {
            commit = DropDownListcommit.SelectedValue;
        } 
       Response.Write("<script>window.open('print.aspx?kind=" + kind + "&party=" + party +"&commit="+ commit + "&constname=" + constname+"&o="+order+"')</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string kind = "0", party = "0", constname = "0", commit = "0";
        string order = DropDownList1.SelectedValue;
        if (DropDownListkind.SelectedIndex != 0)
        {
            kind = DropDownListkind.SelectedValue;
        }
        if (DropDownListparty.SelectedIndex != 0)
        {
            party = DropDownListparty.SelectedValue;
        }
        if (DropDownListconst.SelectedIndex != 0)
        {
            constname = DropDownListconst.SelectedValue;
        }
        if (DropDownListcommit.SelectedIndex != 0)
        {
            commit = DropDownListcommit.SelectedValue;
        } 
        Response.Redirect("forexcel.aspx?kind=" + kind + "&party=" + party + "&commit=" + commit + "&constname=" + constname + "&o=" + order);
    }
}