using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DLL;

namespace DLL.BLL
{
    public class Unit
    {
        private readonly DLL.DAL.Unit dal = new DLL.DAL.Unit();
        public List<DLL.Model.JCHC> ReturnJCHC()
        {
            return dal.ReturnJCHC();
        }
        public List<DLL.Model.LB> ReturnLB()
        {
            return dal.ReturnLB();
        }
        public List<DLL.Model.jcsj> ReturnDP()
        {
            return dal.ReturnDP();
        }
        public List<DLL.Model.jcsj> ReturnJB()
        {
            return dal.ReturnJB();
        }
        public List<DLL.Model.jcsj> ReturnZWH()
        {
            return dal.ReturnZWH();
        }
        public List<DLL.Model.ta> ReturnTa()
        {
            return dal.ReturnTa();
        }
        public string ReturnJbName(string id)
        {
            List<DLL.Model.jcsj> jblist = ReturnJB();            
            return jblist.FirstOrDefault(s => s.id == id.ToString()).name;
        }
        public string ReturnpartyName(string id)
        {
            List<DLL.Model.jcsj> jblist = ReturnDP();
            return jblist.FirstOrDefault(s => s.id == id.ToString()).name;
        }
        public string ReturnzwhName(string id)
        {
            List<DLL.Model.jcsj> jblist = ReturnZWH();
            return jblist.FirstOrDefault(s => s.id == id.ToString()).name;
        }
        public List<DLL.Model.ta> ReturnTabyZWH(int zwhid)
        {
            return dal.ReturnTabyZWH(zwhid);
        }
        public List<DLL.Model.yata_dbwy> taunid()
        {
            return dal.taunid();
        }
        public List<DLL.Model.tar> returntaname()
        {
            return dal.returntaname();
        }

    }
}
