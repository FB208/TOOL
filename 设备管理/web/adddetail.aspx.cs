using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adddetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DLL.TOOL.EnumToDropdownlist.EnumToDropdown(DropDownListflag, typeof(DLL.BaseCode.BaseCode.state));
            DLL.TOOL.EnumToDropdownlist.EnumToDropdown(DropDownListdepartment, typeof(DLL.BaseCode.BaseCode.department));
            DLL.TOOL.EnumToDropdownlist.EnumToDropdown(DropDownListtype, typeof(DLL.BaseCode.BaseCode.type));
            DLL.TOOL.EnumToDropdownlist.EnumToDropdown(DropDownListnet, typeof(DLL.BaseCode.BaseCode.nettype));
            DropDownListtype.SelectedIndex = 0;
            DropDownListdepartment.SelectedIndex = 0;
            DropDownListflag.SelectedIndex = 0;
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
        if (ds.FirstOrDefault(s=>s.defineId==screen.defineId)==null)
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
        DLL.Model.computer computer2 = new DLL.Model.computer();
        computer2.defineId = TextBoxdefine.Text.Trim().ToString();
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
        computer2.addId = int.Parse(Session["Userid"].ToString());
        computer2.updateId = int.Parse(Session["Userid"].ToString());
        new DLL.BLL.computer().Add(computer2);
        Response.Redirect("List_equipment.aspx");

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