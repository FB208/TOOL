using PERMessage.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PERMessage.TOOL
{
    public class PagePartial
    {

        public PageModel<T> _PagePartial<T>(string page, string pagesize, List<T> list)
        {
            
            int pageindex = Convert.ToInt32(page);
            int psize = Convert.ToInt32(pagesize);
            int recordcount=list.Count();
            int pagecount = recordcount / psize;
            if (recordcount % psize != 0)
            {
                pagecount++;
            }

            PageModel<T> model = new PageModel<T>();
            model.page = page == "" ? "0" : page;
            model.pagecount = pagecount;
            model.recordcount = recordcount;
            model.list = list.Skip(psize * pageindex).Take(psize).ToList();
            return model;
        }
    }

    public class PageModel<T>
    {
        public string page { get; set; }
        public int pagecount { get; set; }
        public int recordcount { get; set; }
        public List<T> list { get; set; }
       // public List<per_Borrow> list_Borrow { get; set; }
    }
}