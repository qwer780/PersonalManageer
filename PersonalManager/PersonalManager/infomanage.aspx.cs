using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalManager
{
    public partial class infomanage : System.Web.UI.Page
    {
        string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" + "AttachDbFilename='|DataDirectory|\\Database.mdf';";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ShowData();
                ShowData1();

            }


        }

        void ShowData()
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM employee", cn);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
        }
              void ShowData1()
               {
                   using (SqlConnection cn = new SqlConnection())
                   {
                       cn.ConnectionString = sqlconn;
                       cn.Open();
                       SqlCommand cmd = new SqlCommand("SELECT * FROM department", cn);
                       SqlDataReader dr = cmd.ExecuteReader();
                       GridView2.DataSource = dr;
                       GridView2.DataBind();
                   }
               }
       
     

  //添加功能
        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {

                try
                {
                    cn.ConnectionString = sqlconn;
                    cn.Open();
                    string sqlstr = string.Format("INSERT INTO employee(eid,ename,departID,age,password)" + "VALUES('{0}',N'{1}','{2}','{3}','{4}')",
                        TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text);
                    SqlCommand cmd = new SqlCommand(sqlstr, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    cn.Open();
                    ShowData();
                    Label1.Text = "添加成功";
                }
                catch
                {
                    Label1.Text = "添加失败";
                }
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                try
                {
                    cn.ConnectionString = sqlconn;
                    cn.Open();
                    string sqlstr = string.Format("INSERT INTO department(did,dname,director)" + "VALUES('{0}',N'{1}','{2}')",
                        TextBox6.Text, TextBox7.Text, TextBox8.Text);
                    SqlCommand cmd = new SqlCommand(sqlstr, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    cn.Open();
                    ShowData1();
                    Label2.Text = "添加成功";
                }
                catch
                {
                    Label2.Text = "添加失败";
                }
            }
        }


   //修改功能
        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                string sqlstr = string.Format("UPDATE employee SET ename=N'{0}',departID='{1}',age='{2}',password='{3}' WHERE eid='{4}'",
                            TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox1.Text);

                SqlCommand cmd = new SqlCommand(sqlstr, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                cn.Open();
                ShowData();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                string sqlstr = string.Format("UPDATE department SET dname=N'{0}',director='{1}' WHERE did='{2}'",
                            TextBox7.Text, TextBox8.Text, TextBox6.Text);

                SqlCommand cmd = new SqlCommand(sqlstr, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                cn.Open();
                ShowData1();
            }
        }


   
    //删除功能
        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                string sqlstr = string.Format("DELETE FROM employee WHERE eid = '{0}'", TextBox1.Text);                          

                SqlCommand cmd = new SqlCommand(sqlstr, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                cn.Open();
                ShowData();
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                string sqlstr = string.Format("DELETE FROM department WHERE did = '{0}'", TextBox6.Text);
                SqlCommand cmd = new SqlCommand(sqlstr, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                cn.Open();
                ShowData1();
            }
        }



  //查询功能
        protected void Button4_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                string sqlstr = string.Format("SELECT  * FROM employee WHERE eid = '{0}'", TextBox1.Text);

                SqlCommand cmd = new SqlCommand(sqlstr, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {

            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                string sqlstr = string.Format("SELECT  * FROM department  WHERE did = '{0}'", TextBox6.Text);

                SqlCommand cmd = new SqlCommand(sqlstr, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                cn.Open();
               SqlDataReader dr = cmd.ExecuteReader();
                GridView2.DataSource = dr;
                GridView2.DataBind();
            }
        }
    }
       
    }
