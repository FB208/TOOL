using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DLL;

public partial class Detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<DLL.Model.computer> ds = Getco().FindAll(s => s.id == int.Parse(Request.QueryString["parameter"]));
        List<DLL.Model.sop> slist = new DLL.BLL.sop().GetModelList("type=2");
        List<DLL.Model.sop> plist = new DLL.BLL.sop().GetModelList("type=1");
        var result = from c in ds
                     join t in slist on c.screenInfo equals t.defineId into s1
                     from t in s1.DefaultIfEmpty()
                     join d in plist on c.printerInfo equals d.defineId into s
                     from d in s.DefaultIfEmpty()
                     select new
                     {
                         c.brand,
                         c.scannerInfo,
                         c.description,
                         c.mac,
                         c.innerIP,
                         c.outerIP,
                         c.flag,
                         c.type,
                         c.buyTime,
                         c.giveTime,
                         c.department,
                         c.roomNum,
                         c.username,
                         c.defineId,
                         c.version,
                         c.nettype,
                         c.screenInfo,
                         sbrand = t != null ? t.brand : null,
                         size = t != null ? t.info : null,
                         c.printerInfo,
                         pbrand = d != null ? d.brand : null,
                         pversion = d != null ? d.info : null
                     };
        rptdetail.DataSource = result.ToList();
        rptdetail.DataBind();
        if(!IsPostBack)
        {
            this.queren.Visible = false;
        }
    }


    protected void Buttonabandon_Click(object sender, EventArgs e)
    {
        DLL.Model.computer computer = Getco().FirstOrDefault(s => s.id == int.Parse(Request.QueryString["parameter"]));
        if (computer.defineId == null)
        {
            computer.defineId = "待定";
        }
        if (computer.nettype == null)
        {
            computer.nettype = "待定";
        }
        if (computer.innerIP == null)
        {
            computer.innerIP = "待定";
        }
        if (computer.outerIP == null)
        {
            computer.outerIP = "待定";
        }
        if (computer.brand == null)
        {
            computer.brand = "待定";
        }
        if (computer.version == null)
        {
            computer.version = "待定";
        }
        if (computer.screenInfo == null)
        {
            computer.screenInfo = "待定";
        }
        if (computer.printerInfo == null)
        {
            computer.printerInfo = "待定";
        }
        if (computer.scannerInfo == null)
        {
            computer.scannerInfo = "待定";
        }
        if (computer.roomNum == null)
        {
            computer.roomNum = "待定";
        }
        if (computer.username == null)
        {
            computer.username = "待定";
        }
        if (computer.description == null)
        {
            computer.description = "待定";
        }
        if (computer.mac == null)
        {
            computer.mac = "待定";
        }
        computer.flag = 2;
        computer.updateId = int.Parse(Session["Userid"].ToString());
        new DLL.BLL.computer().Update(computer);
        Response.Redirect("abandon.aspx?parameter=" + computer.id);
    }
    protected void Buttoneditor_Click(object sender, EventArgs e)
    {

        Response.Redirect("editor.aspx?parameter=" + Request.QueryString["parameter"]);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("thisrepair.aspx?parameter=" + Request.QueryString["parameter"]);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("thisrepair.aspx?parameter=" + Request.QueryString["parameter"]);
    }
   

    protected void Buttonquxiao_Click(object sender, EventArgs e)
    {
        this.queren.Visible = false;
    }
    protected void Buttonabandon_Click1(object sender, EventArgs e)
    {
        this.queren.Visible = true;
    }
    protected void LinkButtonadd_Click(object sender, EventArgs e)
    {
        Response.Redirect("thisrepairadd.aspx?parameter=" + Request.QueryString["parameter"]);
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