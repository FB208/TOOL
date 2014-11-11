using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class taizhang : System.Web.UI.Page
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
        List<DLL.Model.computer> colist = new DLL.BLL.computer().GetModelList("");
        List<DLL.Model.sop> slist = new DLL.BLL.sop().GetModelList("type=2");
        List<DLL.Model.sop> plist = new DLL.BLL.sop().GetModelList("type=1");
        var result = from c in colist
                     join t in slist on c.screenInfo equals t.defineId into s1
                     from t in s1.DefaultIfEmpty()
                     join d in plist on c.printerInfo equals d.defineId into s
                     from d in s.DefaultIfEmpty()
                     select new
                     {
                        c.department,
                        c.roomNum,
                        c.username,
                        c.defineId,
                        c.version,
                        c.nettype,
                        c.screenInfo,
                        size = t != null ? t.info :null,
                        c.printerInfo,
                        pversion = d != null ? d.info : null
                     };
        rptList.DataSource = result.ToList();
        rptList.DataBind();
    }
}