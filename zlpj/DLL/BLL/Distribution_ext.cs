using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DLL.BLL
{
    public partial class Distribution
    {
        public void changepublic(int id)
        {
            dal.changepublic(id);
        }
    }
}
