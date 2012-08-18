using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

namespace DataLayer
{
    public class ConnectionDAO
    {
        private SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);

        public SqlConnection p_cn
        {
            get{ return cn;}
        }
    }
}
