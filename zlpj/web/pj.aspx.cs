using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class pj : System.Web.UI.Page
{
    public string innerid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DLL.Model.Appraise appraise = new DLL.BLL.Appraise().GetModel(int.Parse(Request.QueryString["parameter"].ToString()));
            System.Web.HttpContext.Current.Session["sql"] = "core1";
            String sql = "select yata.title,yata.nr,yata.id,yata.jc,yata.hc,yata_fj.innerid,yata.tclx,yata.ttly from yata INNER JOIN yata_fj ON yata.unid = yata_fj.unid WHERE yata.unid = @id   ORDER BY yata.id";
            SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.VarChar,32)
			};
            //parameters[0].Value = Request.QueryString["unid"];
            parameters[0].Value = appraise.unid;
            string a = "";
            string ttly = "";
            System.Web.HttpContext.Current.Session["sql"] = "core1";
            SqlDataReader dr;
            using (dr = DLL.DB.SQLHelper.ExecuteReader(sql, parameters))
            //运行测试  
            {
                if (dr.Read())
                {
                    Labeltitle.Text = dr["title"].ToString();
                    Labelcontext.Text = dr["nr"].ToString().Replace(" ", "&nbsp;").Replace("\n", "<br />");
                    Labelid.Text = dr["id"].ToString();
                    Labeljie.Text = dr["jc"].ToString();
                    Labelci.Text = dr["hc"].ToString();
                    innerid = dr["innerid"].ToString();
                    a = dr["tclx"].ToString();
                    ttly = dr["ttly"].ToString();
                }
            }
            dr.Close();//关闭DataReader 

            if (a == "0")
            {
                Label2.Text = DLL.DB.SQLHelper.FastSelect("SELECT top(1) dbwy1.name FROM  yata_dbwy INNER JOIN  dbwy_hy1 ON yata_dbwy.dbwy_id = dbwy_hy1.id AND yata_dbwy.jc = dbwy_hy1.jc AND yata_dbwy.hc = dbwy_hy1.hc INNER JOIN    dbwy1 ON dbwy_hy1.dbwy_unid = dbwy1.unid WHERE yata_dbwy.yata_unid='" + appraise.unid + "' and yata_dbwy.rylx=0 ");
            }
            else
            {
                Label2.Text = new DLL.BLL.Unit().ReturnJB().FirstOrDefault(s => s.id == ttly).name;
            }

            System.Web.HttpContext.Current.Session["sql"] = null;

            DLL.TOOL.EnumToDropdownlist.EnumToDropdown(DropDownListsurvey, typeof(DLL.BaseCode.BaseCode.survey));
            DLL.TOOL.EnumToDropdownlist.EnumToDropdown(DropDownListpersonal, typeof(DLL.BaseCode.BaseCode.personal));
            if (appraise != null)
            {
                DropDownLists.SelectedValue = appraise.sg.ToString();
                DropDownListr.SelectedValue = appraise.rg.ToString();
                DropDownListk.SelectedValue = appraise.kg.ToString();
                DropDownLista.SelectedValue = appraise.ag.ToString();
                DropDownListf.SelectedValue = appraise.fg.ToString();
                DropDownListsurvey.SelectedIndex = appraise.survey;
                DropDownListpersonal.SelectedIndex = appraise.personal;
                TextBoxsuggest.Text = appraise.suggestion;
                TextBoxshort.Text = appraise.shortage;
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DLL.Model.Appraise appraise = new DLL.BLL.Appraise().GetModel(int.Parse(Request.QueryString["parameter"].ToString()));
        appraise.sg = int.Parse(DropDownLists.SelectedValue);
        appraise.rg = int.Parse(DropDownListr.SelectedValue);
        appraise.kg = int.Parse(DropDownListk.SelectedValue);
        appraise.ag = int.Parse(DropDownLista.SelectedValue);
        appraise.fg = int.Parse(DropDownListf.SelectedValue);
        appraise.survey = DropDownListsurvey.SelectedIndex;
        appraise.personal = DropDownListpersonal.SelectedIndex;
        appraise.suggestion = TextBoxsuggest.Text.ToString().Trim();
        appraise.shortage = TextBoxshort.Text.ToString().Trim();
        appraise.flag = 1;
        new DLL.BLL.Appraise().Update(appraise);
        DLL.Model.Appraise model = new DLL.Model.Appraise();
        if (new DLL.BLL.Appraise().GetModelList("aid=" + int.Parse(Session["Userid"].ToString())).FirstOrDefault(s => s.flag == 0) == null)
        {
            if (new DLL.BLL.Appraise().Getnewta() != -1)
            {
                model = new DLL.BLL.Appraise().GetModel(new DLL.BLL.Appraise().Getnewta());
                model.aid = int.Parse(Session["Userid"].ToString());
                model.aname = Session["Username"].ToString();
                new DLL.BLL.Appraise().Update(model);
            }
        }

        Response.Redirect("List_twpj.aspx");
    }
}