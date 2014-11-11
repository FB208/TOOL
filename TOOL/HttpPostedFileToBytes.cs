using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.IO;

namespace DLL.TOOL
{
   public class HttpPostedFileToBytes
    {
        public static byte[] GetPhoto(HttpPostedFile hpf)
        {
            int fileLen = hpf.ContentLength;

            Byte[] fileData = new Byte[fileLen];

            Stream sr = hpf.InputStream;

            sr.Read(fileData, 0, fileLen);

            sr.Close();

            return fileData;
        }
    }
}
