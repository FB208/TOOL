using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DLL;
using System.Configuration;

using System.Data.SqlClient;
using System.Collections;
public partial class List_twpj : System.Web.UI.Page
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
        List<DLL.Model.ta> talist = new DLL.BLL.Unit().ReturnTa();
        List<DLL.Model.Appraise> Appraiselist = new DLL.BLL.Appraise().GetModelList("");
        List<DLL.Model.Distribution> Distribution = new DLL.BLL.Distribution().GetModelList("");
        var result = from a in Appraiselist
                     join t in talist on a.unid equals t.unid
                     join d in Distribution on a.fid equals d.id 
                     where a.aid == int.Parse(Session["Userid"].ToString()) && d.flag == 1 && (roomnumTextBox.Text.Trim() == "" ? true : DropDownListsearch.SelectedIndex == 0 ? t.id == roomnumTextBox.Text.Trim() : t.title == roomnumTextBox.Text.Trim())
                     select new
                     {
                         t.id,
                         t.jb,
                         t.taxs,
                         t.title,
                         t.ttly,
                         t.unid,
                         t.yjztc,
                         a.fid,
                         a.aname,
                         a.flag,
                         a.total,
                         appid = a.id
                     };
        if (Request["o"] != null)
        {
            if (Request["o"].ToString() == "tah")
            {
                Listta.DataSource = result.OrderBy(s => s.id).ToList();
                Listta.DataBind();
            }
            else if (Request["o"].ToString() == "lb")
            {
                Listta.DataSource = result.OrderByDescending(s => s.yjztc).ToList();
                Listta.DataBind();
            }
            else if (Request["o"].ToString() == "zf")
            {
                Listta.DataSource = result.OrderBy(s => s.total).ToList();
                Listta.DataBind();
            }
            else if (Request["o"].ToString() == "zt")
            {
                Listta.DataSource = result.OrderBy(s => s.flag).ToList();
                Listta.DataBind();
            }
        }
        else
        {
            Listta.DataSource = result.OrderBy(s => s.flag).ToList();
            Listta.DataBind();
        }
        if (result.ToList().Count < DataPager1.PageSize)
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
    protected void Buttonsearch_Click(object sender, EventArgs e)
    {
        bind();
    }
    public string leibie(object id)
    {
        List<DLL.Model.LB> lblist = new List<DLL.Model.LB>(); 
        if (Cache["ul"]==null)
        {
              lblist = new DLL.BLL.Unit().ReturnLB();
        }
        else
        {
            lblist = Cache["ul"] as List<DLL.Model.LB>;
        }        
        return lblist.FirstOrDefault(s => s.id == id.ToString()).name;     
    }
}