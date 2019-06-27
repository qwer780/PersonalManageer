using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalManager
{
    public partial class infoview : System.Web.UI.Page
    {
        string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database.mdf';";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Login.mode == 1)
            {
                Response.Write("<script>alert('权限不足，无法访问');" +
                    "window.location.href='Default.aspx'</script>");
            }
            if (!Page.IsPostBack)
            {
                ShowData1();
            }
        }

        void ShowData1()
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                SqlCommand cmd = new SqlCommand("select eid as 员工代号,ename as 员工姓名,departID as 所属部门,age as 年龄,password as 登录密码 from employee", cn);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                cn.Close();
            }
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();

                if (DropDownList1.Text == "员工信息浏览")
                {
                    string sqlstr = string.Format("select eid as 员工代号,ename as 员工姓名,departID as 所属部门,age as 年龄,password as 登录密码 from employee where eid like '%{0}%'", TextBox1.Text.Trim());
                    SqlCommand cmd = new SqlCommand(sqlstr, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    cn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
                else if (DropDownList1.Text == "员工信息浏览")
                {
                    String sqlstr = string.Format("select eid as 员工代号,ename as 员工姓名,departID as 所属部门,age as 年龄,password as 登录密码 from employee");
                    SqlCommand sqlcn = new SqlCommand(sqlstr, cn);
                    SqlDataReader sqlReader = sqlcn.ExecuteReader();
                    GridView1.DataSource = sqlReader;
                    GridView1.DataBind();
                }
                else if (DropDownList1.Text == "部门信息浏览")
                {
                    String sqlstr = string.Format("select did as 部门代号, dname as 部门名称, director as 部门主管 from department where did like '%{0}%'", TextBox1.Text);
                    SqlCommand sqlcn = new SqlCommand(sqlstr, cn);
                    SqlDataReader sqlReader = sqlcn.ExecuteReader();
                    GridView1.DataSource = sqlReader;
                    GridView1.DataBind();
                }
                else if (DropDownList1.Text == "部门信息浏览")
                {
                    String sqlstr = string.Format("select did as 部门代号, dname as 部门名称, director as 部门主管 from department");
                    SqlCommand sqlcn = new SqlCommand(sqlstr, cn);
                    SqlDataReader sqlReader = sqlcn.ExecuteReader();
                    GridView1.DataSource = sqlReader;
                    GridView1.DataBind();
                }
                else if (DropDownList1.Text == "员工整合信息浏览")
                {
                    String sqlstr = string.Format("select eid as 员工编号,ename as 员工姓名,departID as 所属部门,age as 年龄,password as 登录密码,dname as 部门名称 from employee,department where departID=did");
                    SqlCommand sqlcn = new SqlCommand(sqlstr, cn);
                    SqlDataReader sqlReader = sqlcn.ExecuteReader();
                    GridView1.DataSource = sqlReader;
                    GridView1.DataBind();

                }

            }
        }
    }
}