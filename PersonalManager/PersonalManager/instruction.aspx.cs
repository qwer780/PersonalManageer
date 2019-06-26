using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalManager
{
    public partial class instruction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "员工")
            {
                Label1.Text = "员工使用说明";
                Label2.Text = "员工使用权限：员工只能使用本系统中人事信息管理的查询功能，" +
                    "查询个人信息及部门信息。";

            }
            else if (DropDownList1.Text == "管理员")
            {
                Label1.Text = "管理员使用说明";
                Label2.Text = "管理员使用权限：管理员能够查询、浏览员工和部门信息，添加、修改、删除员工和部门信息," +
                    "";
            }
            else
            {
                Label1.Text = "";
                Label2.Text = "";
            }
        }
    }
}