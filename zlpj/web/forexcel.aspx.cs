using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forexcel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
            Export("application/vnd.ms-excel", Label1.Text.ToString().Trim() + "委员提案.xls");
            Response.Redirect("proprint.aspx");
            
        }
    }
   
    protected void bind()
    {

        DateTime dt = System.DateTime.Now;
        String labeltext = "";
        List<DLL.Model.ta> talist = new DLL.BLL.Unit().ReturnTa();
        List<DLL.Model.yata_dbwy> ydlist = new DLL.BLL.Unit().taunid();
        List<DLL.Model.tar> namelist = new DLL.BLL.Unit().returntaname();
        List<DLL.Model.LB> lblist = new DLL.BLL.Unit().ReturnLB();
        List<DLL.Model.jcsj> jblist = new DLL.BLL.Unit().ReturnJB();
        if (Request.QueryString["commit"].ToString() != "0")
        {
            int commit = Convert.ToInt32(Request.QueryString["commit"]);
            talist = new DLL.BLL.Unit().ReturnTabyZWH(commit);
            labeltext += zhuanweihui(Request.QueryString["commit"]) + "专委会";
        }

        if (Request.QueryString["kind"].ToString() != "0")
        {
            string kind = Request.QueryString["kind"].ToString();
            talist = talist.FindAll(s => s.yjztc == kind);
            labeltext += leibie(Request.QueryString["kind"]) + "类";
        }
        if (Request.QueryString["constname"].ToString() != "0")
        {
            string constname = Request.QueryString["constname"].ToString();
            if (talist.Count(s => s.jb == constname) == 0)
            {
                talist = talist.FindAll(s => s.jb == "" && s.ttly == constname);
            }
            else
            {
                talist = talist.FindAll(s => s.jb == constname);
            }
            labeltext += new DLL.BLL.Unit().ReturnJbName(constname) + "界";
        }
        if (Request.QueryString["party"].ToString() != "0")
        {
            string party = Request.QueryString["party"].ToString();
            talist = talist.FindAll(s => s.ttly == party);
            labeltext += new DLL.BLL.Unit().ReturnpartyName(party);
        }

        Label1.Text = labeltext.ToString().Trim();
        List<DLL.Model.Appraise> Appraiselist = new DLL.BLL.Appraise().GetModelList("1=1");
        var taRName = from yd in ydlist
                      join name in namelist on yd.id equals name.unid
                      select new
                      {
                          yd.unid,
                          yd.id,
                          tarname = name.id
                      };

        var result = from t in talist
                     where t.tclx == "0"
                     join lb in lblist on t.yjztc equals lb.id into s2
                     from lb in s2.DefaultIfEmpty()
                     join y in taRName on t.unid equals y.unid into s1
                     from y in s1.DefaultIfEmpty()
                     join a in Appraiselist on t.unid equals a.unid into s
                     from a in s.DefaultIfEmpty()
                     select new
                     {
                         t.id,
                         t.jb,
                         t.taxs,
                         t.title,
                         t.ttly,
                         t.tclx,
                         t.unid,
                         lb.name,
                         tarname = y.tarname,
                         atotal = a != null ? a.total.ToString() : null,
                     };
        var result2 = from t in talist
                      where t.tclx == "1"
                      join lb in lblist on t.yjztc equals lb.id into s2
                      from lb in s2.DefaultIfEmpty()
                      join y in taRName on t.unid equals y.unid into s1
                      from y in s1.DefaultIfEmpty()
                      join jb in jblist on t.ttly equals jb.id into s3
                      from jb in s3.DefaultIfEmpty()
                      join a in Appraiselist on t.unid equals a.unid into s
                      from a in s.DefaultIfEmpty()
                      select new
                      {
                          t.id,
                          t.jb,
                          t.taxs,
                          t.title,
                          t.ttly,
                          t.tclx,
                          t.unid,
                          lb.name,
                          tarname = jb.name,
                          atotal = a != null ? a.total.ToString() : null,
                      };
        var aa = result.ToList();
        aa.AddRange(result2.ToList());
        if (Request["o"] != null)
        {
            if (Request["o"].ToString() == "tah")
            {
                rptList.DataSource = aa.OrderBy(s => s.id).ToList();
                rptList.DataBind();
                TimeSpan ts = System.DateTime.Now - dt;
                Label1.Text = ts.TotalMilliseconds.ToString() + "秒";
            }
            else if (Request["o"].ToString() == "zf")
            {
                rptList.DataSource = aa.OrderByDescending(s => s.atotal).ToList();
                rptList.DataBind();
            }
            else if (Request["o"].ToString() == "ztc")
            {
                rptList.DataSource = aa.OrderBy(s => s.name).ToList();
                rptList.DataBind();
            }

        }

        else
        {
            rptList.DataSource = result2.ToList();
            rptList.DataBind();
            TimeSpan ts = System.DateTime.Now - dt;
            Label1.Text = ts.TotalMilliseconds.ToString();
        }





    }
   
    public string leibie(object id)
    {
        int f = Convert.ToInt32(id);
        string str = "";
        List<DLL.Model.LB> lblist = new DLL.BLL.Unit().ReturnLB();
        foreach (DLL.Model.LB a in lblist)
        {
            if (f.ToString() == a.sortno)
            {
                str = a.name;
            }
        }
        return str;
    }
    public string zhuanweihui(object id)
    {
        int f = Convert.ToInt32(id);
        string str = "";
        List<DLL.Model.jcsj> lblist = new DLL.BLL.Unit().ReturnZWH();
        foreach (DLL.Model.jcsj a in lblist)
        {
            if (f.ToString() == a.id)
            {
                str = a.name;
            }
        }
        return str;
    }
    public string dengji(object fenshu)
    {
        
        if (fenshu != null)
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
        }
        return "";
    }
   
    private void Export(String FileType, String FileName)
    {
        bind();
        Response.Clear();
        Response.BufferOutput = true;
        //设定输出字符集
        Response.Charset = "UTF8";
        Response.ContentEncoding = System.Text.Encoding.UTF8;
        Response.AppendHeader("Content-Disposition", "attachment;filename="
        + HttpUtility.UrlEncode(FileName, System.Text.Encoding.UTF8));
        //设置输出流HttpMiME类型(导出文件格式)
        Response.ContentType = FileType;
        //关闭ViewState
        Page.EnableViewState = false;
        System.Globalization.CultureInfo cultureInfo = new System.Globalization.CultureInfo("ZH-CN", true);
        System.IO.StringWriter stringWriter = new System.IO.StringWriter(cultureInfo);
        HtmlTextWriter textWriter = new HtmlTextWriter(stringWriter);
        rptList.RenderControl(textWriter);
        //把HTML写回游览器
        Response.Write(stringWriter.ToString());
        Response.End();
        Response.Flush();
    }
}