using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using DLL.BLL;

public partial class List_equipment : System.Web.UI.Page
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
        List<DLL.Model.computer> ds = Getco();
        ds = ds.FindAll(s => s.flag != 2);
            ds.OrderByDescending(s => s.addtime);
        
        if (DropDownListsearch.SelectedValue == "1")
        {
           
            if (roomnumTextBox.Text != "")
            {
                ds = ds.FindAll(s => s.roomNum == roomnumTextBox.Text);
            }           
           
        }
        else if (DropDownListsearch.SelectedValue == "2")
        {        
            if (roomnumTextBox.Text != "")
            {
                ds = ds.FindAll(s => s.defineId == roomnumTextBox.Text);
            }
           
        }
        else if (DropDownListsearch.SelectedValue == "3")
        {

            if (roomnumTextBox.Text != "")
            {
                ds = ds.FindAll(s => s.department == roomnumTextBox.Text);
            }
           
        }
        else if (DropDownListsearch.SelectedValue == "4")
        {
           
            if (roomnumTextBox.Text != "")
            {
                ds = ds.FindAll(s => s.type == roomnumTextBox.Text);
            }
           
        }
        rptList.DataSource = ds;
        rptList.DataBind();
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
    protected void search_Click(object sender, EventArgs e)
    {
        //if (DropDownListsearch.SelectedValue == "0")
        //{
        //    //DataSet ds = new DLL.BLL.computer().GetList("flag!=2 order by addTime desc");
        //    //rptList.DataSource = ds;
        //    //rptList.DataBind();
        //    bind();
        //}
        //if (DropDownListsearch.SelectedValue == "1")
        //{
        //    String num = "0";
        //    if (roomnumTextBox.Text != "")
        //    {
        //        num = roomnumTextBox.Text;
        //    }
        //    DataSet ds = new DLL.BLL.computer().GetList("roomNum=" + num);
        //    rptList.DataSource = ds;
        //    rptList.DataBind();
        //}
        //else if (DropDownListsearch.SelectedValue == "2")
        //{
        //    string defineId = roomnumTextBox.Text.ToString();
        //    DataSet ds = new DLL.BLL.computer().GetList("defineId='" + defineId + "'");
        //    rptList.DataSource = ds;
        //    rptList.DataBind();
        //}
        //else if (DropDownListsearch.SelectedValue == "3")
        //{
        //    string department = roomnumTextBox.Text.ToString();
        //    DataSet ds = new DLL.BLL.computer().GetList("department='" + department + "'");
        //    rptList.DataSource = ds;
        //    rptList.DataBind();
        //}
        //else if (DropDownListsearch.SelectedValue == "4")
        //{
        //    string type = roomnumTextBox.Text.ToString();
        //    DataSet ds = new DLL.BLL.computer().GetList("type='" + type + "'");
        //    rptList.DataSource = ds;
        //    rptList.DataBind();
        //}
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
    private void Export(String FileType, String FileName)
    {

        bind();
        Response.Clear();
        Response.BufferOutput = true;
        //设定输出字符集
        Response.Charset = "GB2312";
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

    //确认在运行时为指定的 ASP.NET 服务器控件呈现在 HtmlForm 控件中。
    //(检验Asp.Net服务器空间是否呈现在HTMLForm控件中)
    //public override void VerifyRenderingInServerForm(System.Web.UI.Control control)
    //{
    //}

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        this.Response.Redirect("print.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Export("application/ms-excel", "台帐.xls");
    }
}