using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class abandon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    protected void bind()
    {
        List<DLL.Model.computer> ds = Getco();
        ds = ds.FindAll(s => s.flag == 2);
        ds.OrderByDescending(s => s.addtime);
        rptabandon.DataSource = ds;
        rptabandon.DataBind();
        if (ds != null)
        {
            if (ds.Count < 10)
            {
                DataPager1.Visible = false;
            }
        }
    }

    protected void rptList_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        DataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        bind();
    }
    public List<DLL.Model.computer> Getco()
    {
        List<DLL.Model.computer> colist = new List<DLL.Model.computer>();
        if (Cache["co"] == null)
        {
            Cache["co"] = new DLL.BLL.computer().GetModelList(""); ;
        }
        colist = Cache["co"] as List<DLL.Model.computer>;
        return colist;
    }


}