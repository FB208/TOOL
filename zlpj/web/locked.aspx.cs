using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class locked : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["parameter"] != null)
        {
            DLL.Model.Distribution model = new DLL.BLL.Distribution().GetModel(Convert.ToInt32(Request["parameter"]));
            if(model.flag==1)
            {
                model.flag = 0;
            }
            else
            {
                model.flag = 1;
            }
            new DLL.BLL.Distribution().Update(model);
        }
        Response.Redirect("List_wfp.aspx");
    }
}