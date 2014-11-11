using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Detail_chakan : System.Web.UI.Page
{
    public string innerid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {            
            System.Web.HttpContext.Current.Session["sql"] = null;
            DLL.Model.Appraise appraise = new DLL.BLL.Appraise().GetModel(int.Parse(Request.QueryString["parameter"].ToString()));
            System.Web.HttpContext.Current.Session["sql"] = "core1";
            String sql = "select yata.title,yata.nr,yata.id,yata.jc,yata.hc,yata_fj.innerid,yata.tclx,yata.ttly from yata INNER JOIN yata_fj ON yata.unid = yata_fj.unid WHERE yata.unid = @id   ORDER BY yata.id";
            SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.VarChar,32)
			};
            parameters[0].Value = appraise.unid;
            string a = "";
            string ttly = "";
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
                Label2.Text = DLL.DB.SQLHelper.FastSelect("SELECT top(1) dbwy1.name FROM  yata_dbwy INNER JOIN  dbwy_hy1 ON yata_dbwy.dbwy_id = dbwy_hy1.id AND yata_dbwy.jc = dbwy_hy1.jc AND yata_dbwy.hc = dbwy_hy1.hc INNER JOIN    dbwy1 ON dbwy_hy1.dbwy_unid = dbwy1.unid WHERE yata_dbwy.yata_unid='" + appraise.unid + "' and yata_dbwy.rylx=0");
            }
            else
            {
                Label2.Text = new DLL.BLL.Unit().ReturnJB().FirstOrDefault(s => s.id == ttly).name;
            }
            System.Web.HttpContext.Current.Session["sql"] = null;
            if (appraise.flag==1)
            {
                Label1.Text = appraise.sg + "分";
                Labelr.Text = appraise.rg + "分";
                Label3.Text = appraise.kg + "分";
                Label4.Text = appraise.ag + "分";
                Label5.Text = appraise.fg + "分";
                Labelsug.Text = appraise.suggestion;
                Labeltotal.Text = appraise.total.ToString();
                Labelshort.Text = appraise.shortage;
                Labelgrade.Text = grade(appraise.total);
                Labeldy.Text = Enum.GetName(typeof(DLL.BaseCode.BaseCode.survey), appraise.survey);
                Labelpersonal.Text = Enum.GetName(typeof(DLL.BaseCode.BaseCode.personal), appraise.personal); 
            }
            else
            {
                this.isPJ.Visible = false;
            }          
        }
    }
    protected String grade (int fenshu)
    {
        String grade = "";
        if(fenshu>=75)
        {
            grade = "A";
        }
        else if (fenshu >= 50)
        {
            grade = "B";
        }
        else if (fenshu >= 25)
        {
            grade = "C";
        }
        else if (fenshu >= 0)
        {
            grade = "D";
        }
        return grade;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("List_fpls.aspx?parameter="+Request.QueryString["h"]);
    }
}