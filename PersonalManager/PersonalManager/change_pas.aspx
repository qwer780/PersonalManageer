<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="change_pas.aspx.cs" Inherits="PersonalManager.change_pas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            text-align: center;
            height: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <br />
        <br />
        <br />
        <span class="auto-style3">旧密码：</span><asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" Height="27px" Width="224px"></asp:TextBox>
        &nbsp;
        <br class="auto-style3" />
        <br class="auto-style3" />
    </div>
    <div class="auto-style2">
        <span class="auto-style3">新密码：</span><asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3" Height="27px" Width="224px"></asp:TextBox>
        &nbsp;
        <br class="auto-style3" />
        <br class="auto-style3" />
    </div>
    <div class="auto-style4">
        <span class="auto-style3">再输一次新密码：</span><asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3" Height="27px" Width="211px"></asp:TextBox>
        &nbsp;
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Text="确认" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
        <br />
    </div>
</asp:Content>
