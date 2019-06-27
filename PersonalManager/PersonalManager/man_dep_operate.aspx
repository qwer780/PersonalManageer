<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="man_dep_operate.aspx.cs" Inherits="PersonalManager.man_dep_operate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            text-align: center;
            height: 353px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [employee]"></asp:SqlDataSource>
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
    <br />
    <div class="auto-style3">
        <span class="auto-style2">部门代号：</span><asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Height="27px" Width="302
        px"></asp:TextBox>
    <br class="auto-style2" />
    <br class="auto-style2" />
        <span class="auto-style2">部门名称：</span><asp:TextBox ID="TextBox2" runat="server"  CssClass="auto-style2" Height="27px" Width="302
        px"></asp:TextBox>
        <br />
    <br class="auto-style2" />
        <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style2" Text="部门主管：" />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="eid" DataValueField="eid" AutoPostBack="True">
    </asp:DropDownList>
    <br class="auto-style2" />
    <br class="auto-style2" />
    <asp:Button ID="Button1" runat="server" Height="35px" Text="添加部门信息" Width="158px" CssClass="auto-style2" OnClick="Button1_Click" />
        <span class="auto-style2">&nbsp;&nbsp;
    </span>
    <asp:Button ID="Button2" runat="server" Text="修改部门信息" Height="35px" Width="158px" CssClass="auto-style2" OnClick="Button2_Click" />
        <span class="auto-style2">&nbsp;&nbsp;
    </span>
    <asp:Button ID="Button3" runat="server" Text="删除部门信息" Height="35px" Width="158px" CssClass="auto-style2" OnClick="Button3_Click" />
        <br class="auto-style2" />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2"></asp:Label>
    <br class="auto-style2" />
        </div>
</asp:Content>
