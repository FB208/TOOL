using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class List_wfp : System.Web.UI.Page
{
   static string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.diverror.Visible = false;
            bind();
        }
    }
    protected void bind()
    {
        DataSet ds = new DLL.BLL.Distribution().GetAllList();
        Listfp.DataSource = ds;
        Listfp.DataBind();
        if (ds != null)
        {
            if (ds.Tables.Count != 0)
            {
                if (ds.Tables[0].Rows.Count < 10)
                {
                    DataPager1.Visible = false;
                }
            }
        }


        if (ds.Tables[0].Rows.Count < DataPager1.PageSize)
        {
            DataPager1.Visible = false;
        }
        else
        {
            DataPager1.Visible = true;
        }

    }
    protected void rptList_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        DataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        bind();
    }
    public string countzs(object id)
    {
        List<DLL.Model.Appraise> lblist = new DLL.BLL.Appraise().DataTableToList(new DLL.BLL.Appraise().GetList("fid=" + Convert.ToInt32(id)).Tables[0]);
        return lblist.Count.ToString();
    }
    public string countyp(object id)
    {
        List<DLL.Model.Appraise> lblist = new DLL.BLL.Appraise().DataTableToList(new DLL.BLL.Appraise().GetList("flag=1 and fid=" + Convert.ToInt32(id)).Tables[0]);
        return lblist.Count.ToString();
    }
    protected void Listfp_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            this.diverror.Visible = true;
            str = "delete.aspx?parameter=" + e.CommandArgument;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.diverror.Visible = false;
    }
    protected void Buttonqueren_Click(object sender, EventArgs e)
    {
        Response.Redirect(str);
    }
}