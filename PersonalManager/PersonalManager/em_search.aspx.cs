using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalManager
{
    public partial class em_search : System.Web.UI.Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowData1();
            ShowData2();
        }

        void ShowData1()
        {
            SQL.open();
             SqlCommand cmd = new SqlCommand("SELECT eid 员工代号,ename 员工姓名,did 部门代号,age 年龄 FROM employee,department where did=departID and eid='" + Login.Login_No + "'", SQL.open());
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
            SQL.con_close();
        }

        void ShowData2()
        {
            SQL.open();
            SqlCommand cmd = new SqlCommand("SELECT did 部门代号,dname 部门名称,director 部门主管 FROM employee,department where departID=did and eid='" + Login.Login_No + "'", SQL.open());
            SqlDataReader dr = cmd.ExecuteReader();
            GridView2.DataSource = dr;
            GridView2.DataBind();
            SQL.con_close();
        }
    }
}