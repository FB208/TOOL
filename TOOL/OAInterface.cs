using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;

namespace DLL.TOOL
{
    public class OAInterface
    {
        public static string gettoken()
        {
            if (System.Web.HttpContext.Current.Request.Cookies["LtpaToken"] != null)
            {
                return System.Web.HttpContext.Current.Request.Cookies["LtpaToken"].Value;
            }
            return "";
        }

        public static string validtoken(string url)
        {
            string validresult = "";
            if (url == "")
            {
                url = "http://oa.test.gov.cn:8080/login.nsf/login";
            }
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(url);
            req.Method = "POST";
            req.Headers.Add("Cookie:LtpaToken=" + gettoken());
            req.ContentType = "application/x-www-form-urlencoded";
            req.Timeout = 2000;
            try
            {
                using (HttpWebResponse res = (HttpWebResponse)req.GetResponse())
                {
                    using (StreamReader sr = new StreamReader(res.GetResponseStream(), System.Text.Encoding.Default))
                    {
                        validresult = sr.ReadToEnd();
                    }
                    if (res != null)
                        res.Close();
                }
            }
            catch
            {
                return "false";
            }
            return validresult;
        }
    }
}
