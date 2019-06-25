using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalManager
{
    public partial class Login: System.Web.UI.Page
    {
        public static int mode=0;   //标识，初始化为0，若1为普通员工，2为管理员
        public static string Login_No;  //记录登陆者的账号、密码
        public static string Login_Pas;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";   //初始化
            mode = 0;
        }

        protected void Button1_Click(object sender, EventArgs e)  //登录系统
        {
            
            SQL.open();
            //获取数据库信息与textbox的值对比，若Read()返回值为1则为有此账号，否则无此账号
            SqlDataReader sDr = SQL.getcom("select * from employee where eid='" +TextBox1.Text.Trim()+"' and password='"+TextBox2.Text.Trim()+"'");
            SqlDataReader sDr1 = SQL.getcom("select * from employee,department where eid='" + TextBox1.Text.Trim() + "' and password='" + TextBox2.Text.Trim() + "' and dname='人事部' and did=departID");
            bool ifcom = sDr.Read();
            bool ifcom1 = sDr1.Read();
            if (ifcom == true)
            {
                if (ifcom1 == false && DropDownList1.Text == "普通员工")
                {
                    mode = 1;
                    Login_No = TextBox1.Text.ToString();
                    Login_Pas = TextBox2.Text.ToString();
                    Response.Redirect("Default.aspx");
                }
                else if (ifcom1 == true && DropDownList1.Text == "管理员")
                {
                    mode = 2;
                    Login_No = TextBox1.Text.ToString();
                    Login_Pas = TextBox2.Text.ToString();
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Label1.Text = "你不是管理员！";
                }
            }
            else
            {
                Label1.Text = "账号或密码错误，请重新输入！";
            }
            SQL.con_close();
        }

        protected void Button2_Click(object sender, EventArgs e)  //清空输入的信息
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }      

    }
}