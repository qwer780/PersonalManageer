using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalManager
{
    public partial class change_pas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SQL.open();
                if (TextBox1.Text == Login.Login_Pas)
                {
                    if (TextBox2.Text == TextBox3.Text)
                    {
                        string sqlstr = string.Format("UPDATE employee SET password='{0}' " +
                        "WHERE eid='{1}'", TextBox2.Text, Login.Login_No);
                        SqlCommand cmd = new SqlCommand(sqlstr, SQL.open());
                        cmd.ExecuteNonQuery();
                        if (cmd.ExecuteNonQuery() >= 0)
                            Label4.Text = "修改成功!";
                        else
                            Label4.Text = "请确认需要修改的信息填入正确!!";
                    }
                    else
                    {
                        Label4.Text = "新密码不相同";
                    }
                }
                else
                {
                    Label4.Text = "输入的密码不正确";
                }
                SQL.con_close();
            }
            catch
            {
                Label4.Text = "修改失败";
            }
        }

    }
}