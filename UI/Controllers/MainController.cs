using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Xml;

namespace UI.Controllers
{
    public class MainController : Controller
    {
        //
        // GET: /Main/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult iframe(string page)
        {
            ViewBag.url = page;
            return View();
        }
        /// <summary>
        /// OA身份认证
        /// </summary>
        /// <param name="oatoken"></param>
        /// <param name="oaserver"></param>
        public void OALoginCheck(string oatoken, string oaserver)
        {
            Response.ContentType = "text/html";
            Response.Clear();
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(oaserver);
            req.Method = "POST";
            req.Headers.Add("Cookie:DomAuthSessId=" + oatoken);
            req.ContentType = "application/x-www-form-urlencoded";
            req.Timeout = 4000;
            XmlDocument _objXmlDoc = new XmlDocument();
            using (HttpWebResponse res = (HttpWebResponse)req.GetResponse())
            {
                using (StreamReader sr = new StreamReader(res.GetResponseStream(), System.Text.Encoding.Default))
                {
                    _objXmlDoc.Load(sr);
                    //验证成功
                    if (_objXmlDoc.SelectSingleNode("/Root").Attributes["SUCCESS"].Value == "TRUE")
                    {

                        //处理用户信息

                        //写日志

                        //跳转
                        Redirect("");
                    }
                }
                if (res != null)
                    res.Close();
            }
        }
        /// <summary>
        /// 封装操作xml类 统一管理,统一缓存
        /// </summary>
        /// <param name="name"></param>
        /// <param name="node"></param>
        /// <returns></returns>
        public string Loadxml(string name, string node)
        {
            string xmlUrl = Server.MapPath("~/App_Data/" + name);
            //if (Cache)
            //{

            //}
            if (!System.IO.File.Exists(xmlUrl))
            {
                return "";
            }
            System.Xml.XmlDocument _objXmlDoc = new XmlDocument();
            _objXmlDoc.Load(xmlUrl);
            return _objXmlDoc.SelectSingleNode(node).InnerText;
        }
        public bool Changexml(string name, string node, string value)
        {
            string xmlUrl = Server.MapPath("~/App_Data/" + name);
            //if (Cache)
            //{

            //}
            if (!System.IO.File.Exists(xmlUrl))
            {
                return false;
            }
            System.Xml.XmlDocument _objXmlDoc = new XmlDocument();
            _objXmlDoc.Load(xmlUrl);
            _objXmlDoc.SelectSingleNode(node).InnerText = value;
            return true;
        }
    }
}