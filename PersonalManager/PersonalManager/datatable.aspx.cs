using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalManager
{
    public partial class datatable : System.Web.UI.Page
    {
        string sqlconn = "Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database.mdf';";
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
            SQL.open();
            SqlCommand cmd = new SqlCommand("select eid as 员工代号,ename as 员工姓名,departID as 所属部门,age as 年龄,password as 登录密码 from employee", SQL.open());
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            SQL.con_close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            method();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Clear();
            //Response.Buffer = true;
            //Response.Charset = "UTF-8";
            //Response.AppendHeader("Content-Disposition", "attachment;filename=FileName.xls");
            //// 如果设置为 GetEncoding("GB2312");导出的文件将会出现乱码！！！
            //Response.ContentEncoding = System.Text.Encoding.UTF8;
            //Response.ContentType = "application/ms-excel";//设置输出文件类型为excel文件。 
            //System.IO.StringWriter oStringWriter = new System.IO.StringWriter();
            //System.Web.UI.HtmlTextWriter oHtmlTextWriter = new System.Web.UI.HtmlTextWriter(oStringWriter);
            //this.GridView1.RenderControl(oHtmlTextWriter);
            //Response.Output.Write(oStringWriter.ToString());
            //Response.Flush();
            //Response.End();

            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename=FileName.xls");
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
            Response.Charset = "gb2312";
            Response.ContentType = "application/vnd.xls";
            System.IO.StringWriter stringWrite = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
            GridView1.AllowPaging = false;
            method();
            GridView1.RenderControl(htmlWrite);
            Response.Write(stringWrite.ToString());
            Response.End();
            GridView1.AllowPaging = true;
            GridView1.DataBind();
            method();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void paging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            ShowData1();

        }

        public void method()
        {
            SQL.open();
            if (DropDownList1.Text == "员工信息浏览")
            {
                string sqlstr = string.Format("Select  eid as 员工代号,ename as 员工姓名,departID as 所属部门,age as 年龄,password as 登录密码 from employee");
                SqlCommand cmd = new SqlCommand(sqlstr, SQL.open());
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            else if (DropDownList1.Text == "部门信息浏览")
            {
                String sqlstr = string.Format("select did as 部门代号,dname as 部门名称,director as 部门主管 from department");
                SqlCommand sqlcn = new SqlCommand(sqlstr, SQL.open());
                SqlDataReader sqlReader = sqlcn.ExecuteReader();
                GridView1.DataSource = sqlReader;
                GridView1.DataBind();
            }
            else if (DropDownList1.Text == "员工整合信息浏览")
            {
                String sqlstr = string.Format("select eid as 员工编号,ename as 员工姓名,departID as 所属部门,age as 年龄,password as 登录密码,dname as 部门名称 from employee,department where departID=did");
                SqlCommand sqlcn = new SqlCommand(sqlstr, SQL.open());
                SqlDataReader sqlReader = sqlcn.ExecuteReader();
                GridView1.DataSource = sqlReader;
                GridView1.DataBind();

            }
            SQL.con_close();
        }


    }
}