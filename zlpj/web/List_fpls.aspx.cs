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

public partial class List_fpls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }

    }
    protected void rptList_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        DataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        bind();
    }
    protected void bind()
    {
        List<DLL.Model.ta> talist = new DLL.BLL.Unit().ReturnTa();
        List<DLL.Model.Appraise> Appraiselist = new DLL.BLL.Appraise().GetModelList("fid=" + Request.QueryString["parameter"].ToString());
        var result = from t in talist
                     join a in Appraiselist on t.unid equals a.unid
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
                Listfpdetail.DataSource = result.OrderBy(s => s.id).ToList();
                Listfpdetail.DataBind();
            }
            else if (Request["o"].ToString() == "zf")
            {
                Listfpdetail.DataSource = result.OrderByDescending(s => s.total).ToList();
                Listfpdetail.DataBind();
            }
            else if (Request["o"].ToString() == "pjr")
            {
                Listfpdetail.DataSource = result.OrderBy(s => s.aname).ToList();
                Listfpdetail.DataBind();
            }
        }
        else
        {
            Listfpdetail.DataSource = result.ToList();
            Listfpdetail.DataBind();
        }
        if (result.ToList().Count < DataPager1.PageSize)
        {
            DataPager1.Visible = false;
        }
        else
        {
            DataPager1.Visible = true;
        }
        //分页判断
    }
    public string dengji(object fenshu)
    {
        int f = Convert.ToInt32(fenshu);
        if (f >= 75)
        {
            return "A";
        }
        if (f >= 50)
        {
            return "B";
        }
        if (f >= 25)
        {
            return "C";
        }
        if (f >= 0)
        {
            return "D";
        }
        return "";
    }
    public string leibie(object id)
    {
        List<DLL.Model.LB> lblist = new List<DLL.Model.LB>();
        if (Cache["ul"] == null)
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