using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalManager
{
    public partial class man_dep_operate : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("SELECT did 部门代号,dname 部门名称,director 部门主管,ename FROM department left join employee on director=eid ", SQL.open());
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            SQL.con_close();
        }

        protected void Button1_Click(object sender, EventArgs e) //添加
        {
             try
             {
            SQL.open();
            if (CheckBox1.Checked == true)
            {
                string sqlstr = string.Format("INSERT INTO department(did,dname,director)" + "VALUES('{0}',N'{1}','{2}')",
                      TextBox1.Text, TextBox2.Text, DropDownList1.Text);
                SqlCommand cmd = new SqlCommand(sqlstr, SQL.open());
                cmd.ExecuteNonQuery();
                
            }
            else
            {
                string sqlstr1 = string.Format("INSERT INTO department(did,dname)" + "VALUES('{0}',N'{1}')",
                TextBox1.Text, TextBox2.Text);
            SqlCommand cmd1 = new SqlCommand(sqlstr1, SQL.open());
            cmd1.ExecuteNonQuery();
        }
                SQL.con_close();
                ShowData1();
                Label1.Text = "添加成功";
           }
            catch
            {
                Label1.Text = "添加失败";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)//修改
        {
            try
            {
                SQL.open();
                if (CheckBox1.Checked == true)
                {
                    string sqlstr = string.Format("UPDATE department SET dname=N'{0}',director='{1}' WHERE did='{2}'",
                                TextBox2.Text, DropDownList1.Text, TextBox1.Text);
                    SqlCommand cmd = new SqlCommand(sqlstr, SQL.open());
                    cmd.ExecuteNonQuery();
if (cmd.ExecuteNonQuery() >= 0)
                    Label1.Text = "修改成功!";
                else
                    Label1.Text = "请确认需要修改的信息填入正确!";
                }
                else
                {
                    string sqlstr1 = string.Format("UPDATE department SET dname=N'{0}',director=NULL WHERE did='{1}'",
                    TextBox2.Text, TextBox1.Text);
                    SqlCommand cmd1 = new SqlCommand(sqlstr1, SQL.open());
                    cmd1.ExecuteNonQuery();
                    if (cmd1.ExecuteNonQuery() >= 0)
                        Label1.Text = "修改成功!";
                    else
                        Label1.Text = "请确认需要修改的信息填入正确!";
                }
                SQL.con_close();
                ShowData1();
                
            }
            catch
            {
                Label1.Text = "修改失败";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)//删除
        {
            try
            {
                SQL.open();
                string sqlstr = string.Format("DELETE FROM department WHERE did = '{0}'", TextBox1.Text);
                SqlCommand cmd = new SqlCommand(sqlstr, SQL.open());
                cmd.ExecuteNonQuery();
                SQL.con_close();
                ShowData1();
                Label1.Text = "删除成功";
            }
            catch
            {
                Label1.Text = "删除失败";
            }
        }
    }
}