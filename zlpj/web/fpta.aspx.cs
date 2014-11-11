using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using DLL;

public partial class fpta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.diverror.Visible = false;
            List<DLL.Model.JCHC> JCHClist = new DLL.BLL.Unit().ReturnJCHC();
            Labeljc.Text = JCHClist.FirstOrDefault(s => s.isdefault == "1").jc + "届";
            Labelhc.Text = JCHClist.FirstOrDefault(s => s.isdefault == "1").hc + "次";
            List<DLL.Model.LB> LBlist = new DLL.BLL.Unit().ReturnLB();
            DropDownListkind.DataSource = LBlist;
            DropDownListkind.DataTextField = "name";
            DropDownListkind.DataValueField = "sortno";
            DropDownListkind.DataBind();
            List<DLL.Model.jcsj> DPlist = new DLL.BLL.Unit().ReturnDP();
            DropDownListparty.DataSource = DPlist;
            DropDownListparty.DataTextField = "name";
            DropDownListparty.DataValueField = "id";
            DropDownListparty.DataBind();
            List<DLL.Model.jcsj> JBlist = new DLL.BLL.Unit().ReturnJB();
            DropDownListconst.DataSource = JBlist;
            DropDownListconst.DataTextField = "name";
            DropDownListconst.DataValueField = "id";
            DropDownListconst.DataBind();
            DataSet ds = new DLL.BLL.Admin().GetList("role=2");
            ds.Tables[0].Columns.Add("count");
            CheckBoxList1.DataSource = ds;
            CheckBoxList1.DataValueField = "id";
            CheckBoxList1.DataTextField = "name";
            CheckBoxList1.DataBind();
        }
    }
    protected void rptList_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        DataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        bind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        List<DLL.Model.ta> talist = bind();
        List<DLL.Model.Admin> adlist = new List<DLL.Model.Admin>();
        List<DLL.Model.Appraise> aplist = new DLL.BLL.Appraise().GetModelList("1=1");
        var ss = from t in talist
                 join a in aplist on t.unid equals a.unid
                 select t;
        var sa = talist.Except(ss);
        talist = sa.ToList();
        foreach (ListItem item in CheckBoxList1.Items)
        {
            if (item.Selected == true)
            {
                DLL.Model.Admin a = new DLL.Model.Admin();
                a.id = Convert.ToInt32(item.Value);
                a.name = item.Text;
                adlist.Add(a);
            }
        }
        if (TextBoxname.Text == "" || adlist.Count == 0)
        {
            this.diverror.Visible = true;
        }
        else
        {
            DLL.Model.Distribution distribution = new DLL.Model.Distribution();
            distribution.name = TextBoxname.Text.ToString().Trim();
            distribution.addname = Session["Username"].ToString();
            int fid = new DLL.BLL.Distribution().Add(distribution);
            DLL.Model.dtoadmin dtoadmin = new DLL.Model.dtoadmin();
            for (int q = 0; q < adlist.Count; q++)
            {
                dtoadmin.fid = fid;
                dtoadmin.aid = adlist[q].id;
                new DLL.BLL.dtoadmin().Add(dtoadmin);
            }
            for (int i = 0; i < talist.Count; i++)
            {
                DLL.Model.Appraise a = new DLL.Model.Appraise();
                a.fid = fid;
                a.unid = talist[i].unid;
                
                new DLL.BLL.Appraise().Add(a);
            }
            Response.Redirect("List_wfp.aspx");
        }
    }
    protected void Buttonsearch1_Click(object sender, EventArgs e)
    {
        bind();
    }

    private List<DLL.Model.ta> bind()
    {
        List<DLL.Model.ta> talist = new DLL.BLL.Unit().ReturnTa();
        if (DropDownListkind.SelectedIndex != 0)
        {
            talist = talist.FindAll(s => s.yjztc == DropDownListkind.SelectedValue);
        }
        if (DropDownListparty.SelectedIndex != 0)
        {
            talist = talist.FindAll(s => s.ttly == DropDownListparty.SelectedValue);
        }
        if (DropDownListconst.SelectedIndex != 0)
        {
            if (talist.Count(s => s.jb == DropDownListconst.SelectedValue) == 0)
            {
                talist = talist.FindAll(s => s.jb == "" && s.ttly == DropDownListconst.SelectedValue);
            }
            else
            {
                talist = talist.FindAll(s => s.jb == DropDownListconst.SelectedValue);

            }
        }
        if (TextBoxdefineid.Text.Trim() != "")
        {
            talist = talist.FindAll(s => s.id == TextBoxdefineid.Text);
        }
        if (TextBoxtitle.Text.Trim() != "")
        {
            talist = talist.FindAll(s => s.title == TextBoxtitle.Text);
        }
        Listta.DataSource = talist;
        Listta.DataBind();
        return talist;
    }
    protected void Buttonqueren_Click(object sender, EventArgs e)
    {
        this.diverror.Visible = false;
    }
    public string countta(string id)
    {
        List<DLL.Model.Appraise> lblist = new DLL.BLL.Appraise().GetModelList("aid=" + id.ToString());
        return lblist.Count.ToString();
    }
}