using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class printsop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    protected void bind()
    {
        //DataSet ds = new DLL.BLL.computer().GetList("flag!=2 order by addTime desc");
        List<DLL.Model.sop> ds = Getsop();
        ds = ds.FindAll(s => s.type == int.Parse(Request["parameter"]));
        Label1.Text = Enum.GetName(typeof(DLL.BaseCode.BaseCode.soptype),int.Parse(Request["parameter"]))+"表";
        ds.OrderByDescending(s => s.defineId);       
        rptList.DataSource = ds;
        rptList.DataBind();
       
    }
    public List<DLL.Model.sop> Getsop()
    {
        List<DLL.Model.sop> colist = new List<DLL.Model.sop>();
        if (Cache["sop"] == null)
        {
            Cache["sop"] = new DLL.BLL.sop().GetModelList(""); ;
        }
        colist = Cache["sop"] as List<DLL.Model.sop>;
        return colist;
    }
}