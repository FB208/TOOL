using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class list_sop : System.Web.UI.Page
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
        List<DLL.Model.sop> ds = Getsop();
        ds.OrderBy(s => s.type);
        if (DropDownListsearch.SelectedValue == "1")
        {
            if (roomnumTextBox.Text != "")
            {
                ds = ds.FindAll(s => s.defineId == roomnumTextBox.Text);
            }
        }
        else if (DropDownListsearch.SelectedValue == "2")
        {
            if (roomnumTextBox.Text != "")
            {
                ds = ds.FindAll(s => s.type ==Enum.Parse(typeof(DLL.BaseCode.BaseCode.soptype), roomnumTextBox.Text).GetHashCode() );
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
        bind();
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