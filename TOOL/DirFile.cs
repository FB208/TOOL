//======================================================================
//
//        Copyright (C) 2009 
//        All rights reserved
//        CLR版本:            2.0.50727.3053
//        机器名称:            LG-PC
//        文件名:              CodeVersion
//        当前系统时间:      2009-11-26 9:39:03
//        当前登录用户名:   Admin
//        用户:   李钢
//
//======================================================================
using System;
using System.IO;

namespace DLL.TOOL
{
    /// <summary>
    /// 目录及文件操作
    /// </summary>
    public static class DirFile
    {
        /// <summary>
        /// 创建目录
        /// </summary>
        /// <param name="dir">此地路径相对程序路径而言</param>
        public static void CreateDir(string dir)
        {
            if (dir.Length == 0) return;
            if (!System.IO.Directory.Exists(dir))
                System.IO.Directory.CreateDirectory(dir);
        }

        /// <summary>
        /// 删除目录
        /// </summary>
        /// <param name="dir">此地路径相对程序路径而言</param>
        public static void DeleteDir(string dir)
        {
            if (dir.Length == 0) return;
            if (System.IO.Directory.Exists(System.Web.HttpContext.Current.Request.PhysicalApplicationPath + "\\" + dir))
                System.IO.Directory.Delete(System.Web.HttpContext.Current.Request.PhysicalApplicationPath + "\\" + dir);
        }
        /// <summary>
        /// 判断文件是否存在
        /// </summary>
        /// <param name="tempDir">格式:a/b.htm,相对根目录</param>
        /// <returns></returns>
        public static bool FileExists(string tempDir)
        {
            if (File.Exists(System.Web.HttpContext.Current.Request.PhysicalApplicationPath + tempDir))

                return true;
            else
                return false;
        }

        public static bool FileExistsMaps(string tempDir)
        {
            if (File.Exists(tempDir))

                return true;
            else
                return false;
        }
        /// <summary>
        /// 读取文件内容
        /// </summary>
        /// <param name="tempDir">格式:a/b.htm,相对根目录</param>
        /// <returns></returns>
        public static string ReadFile(string tempDir)
        {
            try
            {
                System.IO.StreamReader sr = new System.IO.StreamReader(System.Web.HttpContext.Current.Request.PhysicalApplicationPath + tempDir, System.Text.Encoding.UTF8);
                string str = sr.ReadToEnd();
                sr.Close();
                return str;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// 保存文件内容
        /// </summary>
        /// <param name="tempDir">格式:a/b.htm,相对根目录</param>
        /// <returns></returns>
        public static void SaveFile(string TxtStr, string tempDir)
        {
            try
            {
                System.IO.StreamWriter sw = new System.IO.StreamWriter(System.Web.HttpContext.Current.Request.PhysicalApplicationPath + tempDir, false, System.Text.Encoding.UTF8);
                sw.Write(TxtStr);
                sw.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// 删除文件
        /// </summary>
        /// <param name="file">此地路径相对程序路径而言</param>
        public static void DeleteFile(string file)
        {
            if (file.Length == 0) return;
            if (System.IO.File.Exists(file))
                System.IO.File.Delete(file);
        }
        /// <summary>
        /// 获得文件的目录路径
        /// </summary>
        /// <param name="filePath">文件路径</param>
        /// <returns>以\结尾</returns>
        public static string GetFoldPath(string filePath)
        {
            return GetFoldPath(false, filePath);
        }
        /// <summary>
        /// 获得文件的目录路径
        /// </summary>
        /// <param name="isUrl">是否是网址</param>
        /// <param name="filePath">文件路径</param>
        /// <returns>以\或/结尾</returns>
        public static string GetFoldPath(bool isUrl, string filePath)
        {
            if (isUrl)
                return filePath.Substring(0, filePath.LastIndexOf("/") + 1);
            else
                return filePath.Substring(0, filePath.LastIndexOf("\\") + 1);
        }
        /// <summary>
        /// 获得文件的名称
        /// </summary>
        /// <param name="filePath"></param>
        /// <returns></returns>
        public static string GetFileName(string filePath)
        {
            return GetFileName(false, filePath);
        }
        /// <summary>
        /// 获得文件的名称
        /// </summary>
        /// <param name="isUrl">是否是网址</param>
        /// <param name="filePath"></param>
        /// <returns></returns>
        public static string GetFileName(bool isUrl, string filePath)
        {
            if (isUrl)
                return filePath.Substring(filePath.LastIndexOf("/") + 1, filePath.Length - filePath.LastIndexOf("/") - 1);
            else
                return filePath.Substring(filePath.LastIndexOf("\\") + 1, filePath.Length - filePath.LastIndexOf("\\") - 1);
        }
        /// <summary>
        /// 目录拷贝
        /// </summary>
        /// <param name="OldDir"></param>
        /// <param name="NewDir"></param>
        public static void CopyDir(string OldDir, string NewDir)
        {
            DirectoryInfo OldDirectory = new DirectoryInfo(OldDir);
            DirectoryInfo NewDirectory = new DirectoryInfo(NewDir);
            CopyDir(OldDirectory, NewDirectory);
        }
        private static void CopyDir(DirectoryInfo OldDirectory, DirectoryInfo NewDirectory)
        {
            string NewDirectoryFullName = NewDirectory.FullName + "\\" + OldDirectory.Name;

            if (!Directory.Exists(NewDirectoryFullName))
                Directory.CreateDirectory(NewDirectoryFullName);

            FileInfo[] OldFileAry = OldDirectory.GetFiles();
            foreach (FileInfo aFile in OldFileAry)
                File.Copy(aFile.FullName, NewDirectoryFullName + "\\" + aFile.Name, true);

            DirectoryInfo[] OldDirectoryAry = OldDirectory.GetDirectories();
            foreach (DirectoryInfo aOldDirectory in OldDirectoryAry)
            {
                DirectoryInfo aNewDirectory = new DirectoryInfo(NewDirectoryFullName);
                CopyDir(aOldDirectory, aNewDirectory);
            }
        }
        /// <summary>
        /// 目录删除
        /// </summary>
        /// <param name="OldDir"></param>
        public static void DelDir(string OldDir)
        {
            DirectoryInfo OldDirectory = new DirectoryInfo(OldDir);
            OldDirectory.Delete(true);
        }

        /// <summary>
        /// 目录剪切
        /// </summary>
        /// <param name="OldDirectory"></param>
        /// <param name="NewDirectory"></param>
        public static void CopyAndDelDir(string OldDirectory, string NewDirectory)
        {
            CopyDir(OldDirectory, NewDirectory);
            DelDir(OldDirectory);
        }
    }
}
