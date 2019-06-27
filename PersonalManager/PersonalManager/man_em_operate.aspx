<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="man_em_operate.aspx.cs" Inherits="PersonalManager.man_em_operate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            font-size: medium;
        }
    .auto-style5 {
        text-align: center;
        width: 100%;
        height: 537px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style3">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [department]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" align="center" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <div class="auto-style5">
            <span class="auto-style2">
            <br />
            员工代号：</span><asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Height="27px" Width="302px"></asp:TextBox>
            <br />
            <br class="auto-style2" />
            <span class="auto-style2">员工姓名：</span><asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2" Height="27px" Width="302px"></asp:TextBox>
            <br />
            <br class="auto-style2" />
            <span class="auto-style2">部门代号：</span><asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" DataSourceID="SqlDataSource2" DataTextField="dname" DataValueField="did" Height="27px" Width="302px" AppendDataBoundItems="True" >
            </asp:DropDownList>
            <br />
            <br class="auto-style2" />
            <span class="auto-style2">年龄：</span><asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style2" Height="27px" Width="302px"></asp:TextBox>
            <br />
            <br class="auto-style2" />
            <span class="auto-style2">密码：</span><asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style2" Height="27px" Width="302px"></asp:TextBox>
            <span class="auto-style2">
            <br />
            <br />
            是否为管理员：</span><asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style2" Height="31px" Width="95px">
                <asp:ListItem>是</asp:ListItem>
                <asp:ListItem>否</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="35px" OnClick="Button1_Click" Text="添加员工信息" Width="158px" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Height="35px" OnClick="Button2_Click" Text="修改员工信息" Width="158px" />
&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" CssClass="auto-style4" Height="33px" OnClick="Button3_Click" Text="删除员工信息" Width="158px" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        </div>
    </div>
</asp:Content>
