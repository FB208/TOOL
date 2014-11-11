using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DLL.DAL
{
    public class Unit
    {
        public Unit()
        {
            //
            // TODO: 在此处添加构造函数逻辑
            //
        }
        public List<DLL.Model.JCHC> ReturnJCHC()
        {
            System.Web.HttpContext.Current.Session["sql"] = "core1";
            DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT  unid, jc, hc, isdefault FROM  hy1 ORDER BY isdefault DESC, jc DESC, hc DESC");
            System.Web.HttpContext.Current.Session["sql"] = null;
            List<DLL.Model.JCHC> jchclist = new List<DLL.Model.JCHC>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    DLL.Model.JCHC j = new DLL.Model.JCHC();
                    j.unid = item["unid"].ToString();
                    j.jc = item["jc"].ToString();
                    j.hc = item["hc"].ToString();
                    j.isdefault = item["isdefault"].ToString();
                    jchclist.Add(j);
                }
            }
            return jchclist;
        }
        public List<DLL.Model.LB> ReturnLB()
        {
            System.Web.HttpContext.Current.Session["sql"] = "core1";
            DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT  unid, id, name, isinuse, sortno FROM  yjztc1 WHERE (isinuse = 1)");
            System.Web.HttpContext.Current.Session["sql"] = null;
            List<DLL.Model.LB> jchclist = new List<DLL.Model.LB>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    DLL.Model.LB j = new DLL.Model.LB();
                    j.id = item["id"].ToString();
                    j.name = item["name"].ToString();
                    j.sortno = item["sortno"].ToString();
                    jchclist.Add(j);
                }
            }
            return jchclist;
        }
        public List<DLL.Model.jcsj> ReturnDP()
        {
            System.Web.HttpContext.Current.Session["sql"] = "core1";
            DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT   unid, id, name FROM jcsj1 WHERE  (jcsjlx_id = 05) ORDER BY id");
            System.Web.HttpContext.Current.Session["sql"] = null;
            List<DLL.Model.jcsj> jchclist = new List<DLL.Model.jcsj>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    DLL.Model.jcsj j = new DLL.Model.jcsj();
                    j.id = item["id"].ToString();
                    j.name = item["name"].ToString();
                    jchclist.Add(j);
                }
            }
            return jchclist;
        }
        public List<DLL.Model.jcsj> ReturnJB()
        {
            System.Web.HttpContext.Current.Session["sql"] = "core1";
            DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT   unid, id, name FROM jcsj1 WHERE  (jcsjlx_id = 06) ORDER BY id");
            System.Web.HttpContext.Current.Session["sql"] = null;
            List<DLL.Model.jcsj> jchclist = new List<DLL.Model.jcsj>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    DLL.Model.jcsj j = new DLL.Model.jcsj();
                    j.id = item["id"].ToString();
                    j.name = item["name"].ToString();
                    jchclist.Add(j);
                }
            }
            return jchclist;
        }
        public List<DLL.Model.jcsj> ReturnZWH()
        {
            System.Web.HttpContext.Current.Session["sql"] = "core1";
            DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT   unid, id, name FROM jcsj1 WHERE  (jcsjlx_id = 21) ORDER BY id");
            System.Web.HttpContext.Current.Session["sql"] = null;
            List<DLL.Model.jcsj> jchclist = new List<DLL.Model.jcsj>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    DLL.Model.jcsj j = new DLL.Model.jcsj();
                    j.id = item["id"].ToString();
                    j.name = item["name"].ToString();
                    jchclist.Add(j);
                }
            }
            return jchclist;
        }
        public List<DLL.Model.ta> ReturnTa()
        {
            System.Web.HttpContext.Current.Session["sql"] = "core1";
            DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT  yata.unid,yata.id,yata.title,yata.taxs, yata.yjztc,yata.ttly,yata.jb,yata.tclx FROM yata INNER JOIN hy1 ON yata.jc = hy1.jc AND yata.hc = hy1.hc WHERE (hy1.isdefault = 1) ORDER BY yata.id");
            System.Web.HttpContext.Current.Session["sql"] = null;
            List<DLL.Model.ta> jchclist = new List<DLL.Model.ta>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    DLL.Model.ta j = new DLL.Model.ta();
                    j.unid = item["unid"].ToString();
                    j.id = item["id"].ToString();
                    j.title = item["title"].ToString();
                    j.taxs = item["taxs"].ToString();
                    j.ttly = item["ttly"].ToString();
                    j.yjztc = item["yjztc"].ToString();
                    j.jb = item["jb"].ToString();
                    j.tclx = item["tclx"].ToString();
                    jchclist.Add(j);
                }
            }
            return jchclist;
        }
        public List<DLL.Model.tar> returntar(int zwhid)
        {
            System.Web.HttpContext.Current.Session["sql"] = "core1";
            DataSet ds = DLL.DB.SQLHelper.DataSetSelect("select dbwy_unid,id from dbwy_hy1 inner join hy1  ON dbwy_hy1.jc = hy1.jc AND dbwy_hy1.hc = hy1.hc WHERE (hy1.isdefault = 1) and dbwy_unid in (select unid from zx_dbwy1 where usersgroup in (select id from jcsj1 where jcsjlx_id = 21) and usersgroup ="+zwhid+")");
            System.Web.HttpContext.Current.Session["sql"] = null;
            List<DLL.Model.tar> tarList = new List<DLL.Model.tar>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    DLL.Model.tar j = new DLL.Model.tar();
                    j.unid = item["dbwy_unid"].ToString();
                    j.id = item["id"].ToString();                   
                    tarList.Add(j);
                }
            }
            return tarList;
        }
        public List<DLL.Model.tar> returntaname()
        {
            System.Web.HttpContext.Current.Session["sql"] = "core1";
            DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT dbwy_hy1.id as id,dbwy1.name as name FROM  dbwy1 inner join dbwy_hy1 on dbwy1.unid = dbwy_hy1.dbwy_unid join hy1 on dbwy_hy1.jc = hy1.jc AND dbwy_hy1.hc = hy1.hc WHERE (hy1.isdefault = 1) ");
            System.Web.HttpContext.Current.Session["sql"] = null;
            List<DLL.Model.tar> tarList = new List<DLL.Model.tar>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    DLL.Model.tar j = new DLL.Model.tar();
                    j.unid = item["id"].ToString();
                    j.id = item["name"].ToString();
                    tarList.Add(j);
                }
            }
            return tarList;
        }
        public List<DLL.Model.ta> ReturnTabyZWH(int zwhid)
        {
            List<DLL.Model.ta> alist2 = new List<DLL.Model.ta>();
            //默认届次提案
            List<DLL.Model.ta> alist = ReturnTa();
            List<DLL.Model.yata_dbwy> yList = taunid();
            //所选专委会委员
            List<DLL.Model.tar> tarList = returntar(zwhid);
            //筛选该专委会委员的提案
            var q = from s in yList
                    join j in tarList on s.id equals j.id
                    select s;
            var p = from a in alist
                    join y in q.ToList() on a.unid equals y.unid
                    select a;
            alist2 = p.ToList();            
            return alist2;
        }
        public List<DLL.Model.yata_dbwy> taunid()
        {
            System.Web.HttpContext.Current.Session["sql"] = "core1";
            DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT  yata_dbwy.yata_unid as unid, yata_dbwy.dbwy_id as id,yata_dbwy.rylx as rylx FROM yata_dbwy INNER JOIN hy1 ON yata_dbwy.jc = hy1.jc AND yata_dbwy.hc = hy1.hc WHERE (hy1.isdefault = 1) and rylx = 0 ORDER BY yata_dbwy.id");
            System.Web.HttpContext.Current.Session["sql"] = null;
            List<DLL.Model.yata_dbwy> tarList = new List<DLL.Model.yata_dbwy>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    DLL.Model.yata_dbwy j = new DLL.Model.yata_dbwy();
                    j.unid = item["unid"].ToString();
                    j.id = item["id"].ToString();
                    j.rylx = Convert.ToInt32(item["rylx"]);
                    tarList.Add(j);
                }
            }
            return tarList;
        }
        //public List<DLL.Model.ta> ReturnTa(int jc , int hc)
        //{
        //    System.Web.HttpContext.Current.Session["sql"] = "core1";
        //    DataSet ds = DLL.DB.SQLHelper.DataSetSelect("SELECT  yata.unid,yata.id,yata.title,yata.taxs, yata.yjztc,yata.ttly,yata.jb,yata.tclx FROM yata INNER JOIN hy1 ON yata.jc = hy1.jc AND yata.hc = hy1.hc WHERE (hy1.jc = "+jc+"and hy1.hc="+hc+") ORDER BY yata.id");
        //    System.Web.HttpContext.Current.Session["sql"] = null;
        //    List<DLL.Model.ta> jchclist = new List<DLL.Model.ta>();
        //    if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        //    {
        //        foreach (DataRow item in ds.Tables[0].Rows)
        //        {
        //            DLL.Model.ta j = new DLL.Model.ta();
        //            j.unid = item["unid"].ToString();
        //            j.id = item["id"].ToString();
        //            j.title = item["title"].ToString();
        //            j.taxs = item["taxs"].ToString();
        //            j.ttly = item["ttly"].ToString();
        //            j.yjztc = item["yjztc"].ToString();
        //            j.jb = item["jb"].ToString();
        //            j.tclx = item["tclx"].ToString();
        //            jchclist.Add(j);
        //        }
        //    }
        //    return jchclist;
        //} 
       
    }
}
