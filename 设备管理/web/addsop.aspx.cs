using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addsop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DLL.TOOL.EnumToDropdownlist.EnumToDropdown(DropDownListtype, typeof(DLL.BaseCode.BaseCode.soptype));
            DropDownListtype.SelectedIndex = 0;
        }  
    }
    protected void saveButton_Click(object sender, EventArgs e)
    {      
        String brand = brandTextBox.Text;
        String version = versionTextBox.Text;
        String defineId = descTextBox.Text;
        DLL.Model.sop sop = new DLL.Model.sop();
        sop.defineId = defineId;
        sop.brand = brand;
        sop.info = version;
        sop.type = DropDownListtype.SelectedIndex;
        new DLL.BLL.sop().Add(sop);
        Response.Redirect("list_sop.aspx");
    }
}