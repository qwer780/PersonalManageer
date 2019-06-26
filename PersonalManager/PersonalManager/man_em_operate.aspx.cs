using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalManager
{
    public partial class man_em_operate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Login.mode == 1)
                Response.Write("<script>alert('权限不足，无法操作！');window.location.href ='Default.aspx'</script>");
            else
                ShowData1();
        }

        public void ShowData1()  //显示数据
        {
            SQL.open();
            SqlCommand cmd = new SqlCommand("SELECT eid 员工代号,ename 员工姓名,departID 部门代号,dname 部门名称,age 年龄,password 密码,manager 是否为管理员 FROM employee,department where departID=did ", SQL.open());
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            SQL.con_close();
        }

        protected void Button1_Click(object sender, EventArgs e)//添加信息
        {
            try
            {
                SQL.open();
                bool a;
                if (DropDownList2.Text == "是")
                    a = true;
                else
                    a = false;
                string sqlstr = string.Format("INSERT INTO employee(eid,ename,departID,age,password,manager) " +
                    "VALUES('{0}',N'{1}','{2}',N'{3}','{4}','{5}')",TextBox1.Text, TextBox2.Text, DropDownList1.SelectedValue, TextBox3.Text, TextBox4.Text,a);
          
            SqlCommand cmd = new SqlCommand(sqlstr, SQL.open());
                cmd.ExecuteNonQuery();
                SQL.con_close();
                ShowData1();
                Label1.Text = "添加成功!";
            }
            catch
            {
                Label1.Text = "添加失败!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e) //修改信息
        {
            try
            {
                bool a;
                if (DropDownList2.Text == "是")
                    a = true;
                else
                    a = false;
                SQL.open();
                string sqlstr = string.Format("UPDATE employee SET ename=N'{0}',departID='{1}',age='{2}',password='{3}',manager='{4}' " +
                    "WHERE eid='{5}'", TextBox2.Text, DropDownList1.SelectedValue, TextBox3.Text, TextBox4.Text, a, TextBox1.Text);
                SqlCommand cmd = new SqlCommand(sqlstr, SQL.open());
                cmd.ExecuteNonQuery();
                if (cmd.ExecuteNonQuery() >= 0)
                    Label1.Text = "修改成功!";
                else
                    Label1.Text = "请确认需要修改的信息填入正确!!";
                ShowData1();
                SQL.con_close();
            }
            catch
            {
                Label1.Text = "修改失败!";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)//删除信息
        {
            try
            {
                SQL.open();
                string sqlstr = string.Format("DELETE FROM employee WHERE eid = '{0}'", TextBox1.Text);
                SqlCommand cmd = new SqlCommand(sqlstr, SQL.open());
                cmd.ExecuteNonQuery();
                ShowData1();
                SQL.con_close();
                Label1.Text = "删除成功!";

            }
            catch
            {
                Label1.Text = "删除失败!";
            }
        }
    }
}