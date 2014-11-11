using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace DLL.BLL
{
    /// <summary>
    /// Unit 的摘要说明
    /// </summary>
    //public class Unit
    //{
    //    public Unit()
    //    {
    //        //
    //        // TODO: 在此处添加构造函数逻辑
    //        //
    //    }
    //    public List<DLL.Model.JCHC> ReturnJCHC()
    //    {
    //        System.Web.HttpContext.Current.Session["sql"] = "core1";
    //        DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT  unid, jc, hc, isdefault FROM  hy1 ORDER BY isdefault DESC, jc DESC, hc DESC");
    //        System.Web.HttpContext.Current.Session["sql"] = null;
    //        List<DLL.Model.JCHC> jchclist = new List<DLL.Model.JCHC>();
    //        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
    //        {
    //            foreach (DataRow item in ds.Tables[0].Rows)
    //            {
    //                DLL.Model.JCHC j = new DLL.Model.JCHC();
    //                j.unid = item["unid"].ToString();
    //                j.jc = item["jc"].ToString();
    //                j.hc = item["hc"].ToString();
    //                j.isdefault = item["isdefault"].ToString();
    //                jchclist.Add(j);
    //            }
    //        }            
    //        return jchclist;
    //    }
    //    public List<DLL.Model.LB> ReturnLB()
    //    {
    //        System.Web.HttpContext.Current.Session["sql"] = "core1";
    //        DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT  unid, id, name, isinuse, sortno FROM  yjztc1 WHERE (isinuse = 1)");
    //        System.Web.HttpContext.Current.Session["sql"] = null;
    //        List<DLL.Model.LB> jchclist = new List<DLL.Model.LB>();
    //        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
    //        {
    //            foreach (DataRow item in ds.Tables[0].Rows)
    //            {
    //                DLL.Model.LB j = new DLL.Model.LB();
    //                j.id = item["id"].ToString();
    //                j.name = item["name"].ToString();
    //                j.sortno = item["sortno"].ToString();
    //                jchclist.Add(j);
    //            }
    //        }
    //        return jchclist;
    //    }
    //    public List<DLL.Model.jcsj> ReturnDP()
    //    {
    //        System.Web.HttpContext.Current.Session["sql"] = "core1";
    //        DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT   unid, id, name FROM jcsj1 WHERE  (jcsjlx_id = 05) ORDER BY id");
    //        System.Web.HttpContext.Current.Session["sql"] = null;
    //        List<DLL.Model.jcsj> jchclist = new List<DLL.Model.jcsj>();
    //        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
    //        {
    //            foreach (DataRow item in ds.Tables[0].Rows)
    //            {
    //                DLL.Model.jcsj j = new DLL.Model.jcsj();
    //                j.id = item["id"].ToString();
    //                j.name = item["name"].ToString();
    //                jchclist.Add(j);
    //            }
    //        }
    //        return jchclist;
    //    }
    //    public List<DLL.Model.jcsj> ReturnJB()
    //    {
    //        System.Web.HttpContext.Current.Session["sql"] = "core1";
    //        DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT   unid, id, name FROM jcsj1 WHERE  (jcsjlx_id = 06) ORDER BY id");
    //        System.Web.HttpContext.Current.Session["sql"] = null;
    //        List<DLL.Model.jcsj> jchclist = new List<DLL.Model.jcsj>();
    //        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
    //        {
    //            foreach (DataRow item in ds.Tables[0].Rows)
    //            {
    //                DLL.Model.jcsj j = new DLL.Model.jcsj();
    //                j.id = item["id"].ToString();
    //                j.name = item["name"].ToString();
    //                jchclist.Add(j);
    //            }
    //        }
    //        return jchclist;
    //    }
    //    public List<DLL.Model.jcsj> ReturnZWH()
    //    {
    //        System.Web.HttpContext.Current.Session["sql"] = "core1";
    //        DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT   unid, id, name FROM jcsj1 WHERE  (jcsjlx_id = 21) ORDER BY id");
    //        System.Web.HttpContext.Current.Session["sql"] = null;
    //        List<DLL.Model.jcsj> jchclist = new List<DLL.Model.jcsj>();
    //        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
    //        {
    //            foreach (DataRow item in ds.Tables[0].Rows)
    //            {
    //                DLL.Model.jcsj j = new DLL.Model.jcsj();
    //                j.id = item["id"].ToString();
    //                j.name = item["name"].ToString();
    //                jchclist.Add(j);
    //            }
    //        }
    //        return jchclist;
    //    }
    //    public List<DLL.Model.ta> ReturnTa() 
    //    {
    //        System.Web.HttpContext.Current.Session["sql"] = "core1";
    //        DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT  yata.unid,yata.id,yata.title,yata.taxs, yata.yjztc,yata.ttly,yata.jb,yata.tclx FROM yata INNER JOIN hy1 ON yata.jc = hy1.jc AND yata.hc = hy1.hc WHERE (hy1.isdefault = 1) ORDER BY yata.id");
    //        System.Web.HttpContext.Current.Session["sql"] = null;
    //        List<DLL.Model.ta> jchclist = new List<DLL.Model.ta>();
    //        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
    //        {
    //            foreach (DataRow item in ds.Tables[0].Rows)
    //            {
    //                DLL.Model.ta j = new DLL.Model.ta();
    //                j.unid= item["unid"].ToString();
    //                j.id = item["id"].ToString();
    //                j.title = item["title"].ToString();
    //                j.taxs = item["taxs"].ToString();
    //                j.ttly = item["ttly"].ToString();
    //                j.yjztc = item["yjztc"].ToString();
    //                j.jb = item["jb"].ToString();
    //                j.tclx = item["tclx"].ToString();
    //                jchclist.Add(j);
    //            }
    //        }
    //        return jchclist;
    //    }
    //    public string ReturnJbName(string id)
    //    {
    //        System.Web.HttpContext.Current.Session["sql"] = "core1";
    //        string str = DLL.DB.SQLHelper.FastSelect("SELECT name FROM jcsj1 WHERE  jcsjlx_id = 06 and id='"+id+"'");
    //        System.Web.HttpContext.Current.Session["sql"] = null;
    //        return str;
    //    }
    //    public string ReturnpartyName(string id)
    //    {
    //        System.Web.HttpContext.Current.Session["sql"] = "core1";
    //        string str = DLL.DB.SQLHelper.FastSelect("SELECT name FROM jcsj1 WHERE  jcsjlx_id = 05 and id='" + id + "'");
    //        System.Web.HttpContext.Current.Session["sql"] = null;
    //        return str;
    //    }
    //}
}
namespace DLL.Model
{
    //public class JCHC
    //{
    //    public JCHC()
    //    { }
    //    public string unid { get; set; }
    //    public string jc { get; set; }
    //    public string hc { get; set; }
    //    public string isdefault { get; set; }
    //}
    //public class LB
    //{
    //    public LB()
    //    { }
    //    public string id { get; set; }
    //    public string name { get; set; }
    //    public string sortno { get; set; }
    //}
    //public class jcsj
    //{
    //    public jcsj()
    //    { }
    //    public string id { get; set; }
    //    public string name { get; set; }
    //}
    //public class ta 
    //{
    //    public ta() { }
    //    public string unid { get; set; }
    //    public string id { get; set; }
    //    public string title { get; set; }
    //    public string taxs { get; set; }

    //    public string yjztc { get; set; }

    //    public string jb { get; set; }

    //    public string ttly { get; set; }
    //    public string tclx { get; set; }
    //}
}