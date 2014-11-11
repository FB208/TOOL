using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DLL.BLL
{
    public partial class Appraise
    {
        public DLL.Model.Appraise GetModelbyunid(String id)
        {
            return dal.GetModelbyunid(id);
        }
        public int Getnewta()
        {
            DLL.Model.Appraise model = new DLL.Model.Appraise();
            List<DLL.Model.Appraise> talist = GetModelList("fid in (select fid from dtoadmin where aid =" + int.Parse(System.Web.HttpContext.Current.Session["Userid"].ToString()) + " )and isNull(aid,'')='' order by newid()");
            if(talist.Count!=0)
            {
                model=talist[0];
            }
            else
            {
                talist = GetModelList("fid in (select fid from dtoadmin where aid =" + int.Parse(System.Web.HttpContext.Current.Session["Userid"].ToString()) + ")and flag = 0");
                
                if (talist.Count != 0)
                {
                    model = talist[0];
                }
                else
                {
                    return -1;
                }
            }
            //model.aid = int.Parse(System.Web.HttpContext.Current.Session["Userid"].ToString());
            //model.aname = System.Web.HttpContext.Current.Session["Username"].ToString();
            return model.id;
        }
    }
}
