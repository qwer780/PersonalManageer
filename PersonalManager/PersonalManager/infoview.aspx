﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="infoview.aspx.cs" Inherits="PersonalManager.infoview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- 人事信息浏览 --%>
    <style type="text/css">
        .auto-style1 {
            margin:auto;
            text-align: center;
        }
        .auto-style2 {
            color: #333333;
            font-size: large;
        }
        .auto-style4 {
            font-size: medium;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 align="center"><span><font color="red">人事信息浏览</font></span></h2>
    <br />
    <br />
            <div class="auto-style1"style="height:600px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="35px"  align="center" line-height="25px" CssClass="auto-style4">
                <asp:ListItem>员工信息浏览</asp:ListItem>
                <asp:ListItem>部门信息浏览</asp:ListItem>
                <asp:ListItem>员工整合信息浏览</asp:ListItem>
            </asp:DropDownList>&nbsp; &nbsp;   
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" CssClass="auto-style2"></asp:TextBox>&nbsp; &nbsp; 
            <asp:Button ID="Button" runat="server" Height="35px" Text="  查询  " CssClass="auto-style2" OnClick="Button_Click" />
                <br />
                <br />
                <br />                                                             
                <br />
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" align="center">
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
                <div class="auto-style7">
                <br />
                <br />

            </div>

</asp:Content>

