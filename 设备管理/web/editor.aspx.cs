using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            List<DLL.Model.sop> sop = Getsop();
            DLL.TOOL.EnumToDropdownlist.EnumToDropdown(DropDownListflag, typeof(DLL.BaseCode.BaseCode.state));
            DLL.TOOL.EnumToDropdownlist.EnumToDropdown(DropDownListdepartment, typeof(DLL.BaseCode.BaseCode.department));
            DLL.TOOL.EnumToDropdownlist.EnumToDropdown(DropDownListtype, typeof(DLL.BaseCode.BaseCode.type));
            DLL.TOOL.EnumToDropdownlist.EnumToDropdown(DropDownListnet, typeof(DLL.BaseCode.BaseCode.nettype));
            DLL.Model.computer computer = new DLL.BLL.computer().GetModel(int.Parse(Request.QueryString["parameter"]));
            DropDownListdepartment.SelectedIndex = Enum.Parse(typeof(DLL.BaseCode.BaseCode.department), computer.department).GetHashCode();
            DropDownListtype.SelectedIndex = Enum.Parse(typeof(DLL.BaseCode.BaseCode.type), computer.type).GetHashCode();
            DropDownListnet.SelectedIndex = Enum.Parse(typeof(DLL.BaseCode.BaseCode.nettype), computer.nettype).GetHashCode();
            DropDownListflag.SelectedIndex = computer.flag;
            TextBox1.Text = computer.buyTime.ToString();
            TextBox2.Text = computer.giveTime.ToString();
            if (computer.defineId != null)
            {
                TextBoxdefineId.Text = computer.defineId;
            }
          
            if (computer.innerIP != null)
            {
                TextBoxiIP.Text = computer.innerIP;
            }
            if (computer.outerIP != null)
            {
                TextBoxoIP.Text = computer.outerIP;
            }
            if (computer.brand != null)
            {
                TextBoxbrand.Text = computer.brand;
            }
            if (computer.version != null)
            {
                TextBoxversion.Text = computer.version;
            }
            if (computer.screenInfo != null)
            {
                TextBoxsInfo.Text = computer.screenInfo;
                if (sop.FirstOrDefault(s => s.defineId == computer.screenInfo) != null)
                {
                    TextBoxsbrand.Text = sop.FirstOrDefault(s => s.defineId == computer.screenInfo).brand;
                    TextBoxssize.Text = sop.FirstOrDefault(s => s.defineId == computer.screenInfo).info;
                }
            }
            if (computer.printerInfo != null)
            {
                TextBoxpInfo.Text = computer.printerInfo;
                if (sop.FirstOrDefault(s => s.defineId == computer.printerInfo) != null)
                {
                    TextBoxpbrand.Text = sop.FirstOrDefault(s => s.defineId == computer.printerInfo).brand;
                    TextBoxpversion.Text = sop.FirstOrDefault(s => s.defineId == computer.printerInfo).info;
                }
            }
            if (computer.scannerInfo != null)
            {
                TextBoxscInfo.Text = computer.scannerInfo;
            }
            if (computer.roomNum != null)
            {
                TextBoxroom.Text = computer.roomNum.ToString();
            }
            if (computer.username != null)
            {
                TextBoxuser.Text = computer.username;
            }
            if (computer.description != null)
            {
                TextBoxdescri.Text = computer.description;
            }
            if (computer.mac != null)
            {
                TextBoxMac.Text = computer.mac;
            }
        }
    }

    protected void ImageButtonsave_Click(object sender, EventArgs e)
    {
        List<DLL.Model.sop> ds = Getsop();
        DLL.Model.sop screen = new DLL.Model.sop();
        screen.defineId = TextBoxsInfo.Text;
        screen.brand = TextBoxsbrand.Text;
        screen.info = TextBoxssize.Text;
        screen.type = 2;
        if (ds.FirstOrDefault(s => s.defineId == screen.defineId) == null)
        {
            new DLL.BLL.sop().Add(screen);
        }
        else
        {
            screen.Id = ds.FirstOrDefault(s => s.defineId == screen.defineId).Id;
            new DLL.BLL.sop().Update(screen);
        }
        DLL.Model.sop printer = new DLL.Model.sop();
        printer.defineId = TextBoxpInfo.Text;
        printer.brand = TextBoxpbrand.Text;
        printer.info = TextBoxpversion.Text;
        printer.type = 1;
        if (ds.FirstOrDefault(s => s.defineId == printer.defineId) == null)
        {
            new DLL.BLL.sop().Add(printer);
        }
        else
        {
            printer.Id = ds.FirstOrDefault(s => s.defineId == printer.defineId).Id;
            new DLL.BLL.sop().Update(printer);
        }
        DLL.Model.computer computer2 = Getco().FirstOrDefault(s=>s.id==int.Parse(Request.QueryString["parameter"]));
        computer2.defineId = TextBoxdefineId.Text.ToString();
        computer2.type = Enum.GetName(typeof(DLL.BaseCode.BaseCode.type), DropDownListtype.SelectedIndex);
        computer2.brand = TextBoxbrand.Text.ToString();
        computer2.version = TextBoxversion.Text.ToString();
        computer2.nettype = Enum.GetName(typeof(DLL.BaseCode.BaseCode.nettype), DropDownListnet.SelectedIndex);
        computer2.innerIP = TextBoxiIP.Text.ToString();
        computer2.outerIP = TextBoxoIP.Text.ToString();
        computer2.screenInfo = TextBoxsInfo.Text.ToString();
        computer2.printerInfo = TextBoxpInfo.Text.ToString();
        computer2.scannerInfo = TextBoxscInfo.Text.ToString();
        computer2.roomNum = TextBoxroom.Text;
        computer2.department = Enum.GetName(typeof(DLL.BaseCode.BaseCode.department), DropDownListdepartment.SelectedIndex);
        computer2.username = TextBoxuser.Text.ToString();
        computer2.description = TextBoxdescri.Text.ToString();
        computer2.flag = int.Parse(DropDownListflag.SelectedValue);
        computer2.mac = TextBoxMac.Text;
        computer2.updateId = int.Parse(Session["Userid"].ToString());
        if (computer2.defineId == null)
        {
            computer2.defineId = "待定";
        }
        if (computer2.nettype == null)
        {
            computer2.nettype = "待定";
        }
        if (computer2.innerIP == null)
        {
            computer2.innerIP = "待定";
        }
        if (computer2.outerIP == null)
        {
            computer2.outerIP = "待定";
        }
        if (computer2.brand == null)
        {
            computer2.brand = "待定";
        }
        if (computer2.version == null)
        {
            computer2.version = "待定";
        }
        if (computer2.screenInfo == null)
        {
            computer2.screenInfo = "待定";
        }
        if (computer2.printerInfo == null)
        {
            computer2.printerInfo = "待定";
        }
        if (computer2.scannerInfo == null)
        {
            computer2.scannerInfo = "待定";
        }
        if (computer2.roomNum == null)
        {
            computer2.roomNum = "待定";
        }
        if (computer2.username == null)
        {
            computer2.username = "待定";
        }
        if (computer2.description == null)
        {
            computer2.description = "待定";
        }
        if (computer2.mac == null)
        {
            computer2.mac = "待定";
        }
        new DLL.BLL.computer().Update(computer2);
        Response.Redirect("detail.aspx?parameter=" + computer2.id);
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