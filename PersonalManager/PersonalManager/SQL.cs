using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace PersonalManager
{
    public class SQL
    {
        public static SqlConnection My_con;
        public static string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" + 
            "AttachDbFilename='|DataDirectory|\\Database.mdf';";

        public static SqlConnection open() //连接数据库
        {
            My_con = new SqlConnection(sqlconn);
            My_con.Open();
            return My_con;
        }

        public static void con_close()//判断是否与数据库连接，是则断开
        {
            if (My_con.State == System.Data.ConnectionState.Open)
            {
                My_con.Close();
                My_con.Dispose();
            }
        }

        public static SqlDataReader getcom(string SQLstr)//读取数据库中的信息
        {
            open();
            SqlCommand My_com = My_con.CreateCommand();
            My_com.CommandText = SQLstr;
            SqlDataReader My_read = My_com.ExecuteReader();
            return My_read;
        }

    }
}