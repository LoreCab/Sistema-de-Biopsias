using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Sistema_de_Biopsias
{
    public class Conexion
    {

        public static SqlConnection Conectar() 
        {
            SqlConnection cn = new SqlConnection("SERVER=WIN-9FKBBGT25H3\\SQLEXPRESS;DATABASE=Biopsys;Integrated security=true");
            cn.Open();
            return cn;
        }

    }
}