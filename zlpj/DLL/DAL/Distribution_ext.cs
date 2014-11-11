using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DLL.DAL
{
    public partial class Distribution
    {
         public void changepublic (int id)
         {
             DLL.DB.SQLHelper.ExecuteSqlReturn("update Distribution set flag=0 update Distribution set flag=1 where id="+id);
         }
    }
}
