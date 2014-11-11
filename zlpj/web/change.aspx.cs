using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class change : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DLL.Model.Appraise model = new DLL.BLL.Appraise().GetModelList("flag=0 and aid=" + int.Parse(Session["Userid"].ToString()))[0];
        model.aid = 0;
        model.aname = null;
        new DLL.BLL.Appraise().Update(model);
        if (new DLL.BLL.Appraise().GetModelList("aid=" + int.Parse(Session["Userid"].ToString())).FirstOrDefault(s => s.flag == 0) == null)
        {
            if (new DLL.BLL.Appraise().Getnewta() != -1)
            {
                model = new DLL.BLL.Appraise().GetModel(new DLL.BLL.Appraise().Getnewta());
                model.aid = int.Parse(Session["Userid"].ToString());
                model.aname = Session["Username"].ToString();
                new DLL.BLL.Appraise().Update(model);
            }
        }
        Response.Redirect("List_twpj.aspx");
    }
}