<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="infomanage.aspx.cs" Inherits="PersonalManager.infomanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 708px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                <br />
                eid:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                ename:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                departID:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                age:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                password:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="修改" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="删除" />
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="查询" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <table class="auto-style1">
                    <tr>
                        
                </table>
            </td>
           
            <td>
                <asp:GridView ID="GridView2" runat="server">
                </asp:GridView>
                <br />
                did:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                dname:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <br />
                director:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="添加" />
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="修改" />
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="删除" />
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="查询" />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</asp:Content>
