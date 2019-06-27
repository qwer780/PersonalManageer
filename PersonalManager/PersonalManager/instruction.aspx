<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="instruction.aspx.cs" Inherits="PersonalManager.instruction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
            padding: 1px 4px;
            width: 158px;
            border-right-style: solid;
            border-right-width: 1px;
        }
    .auto-style3 {
        padding: 1px 4px;
            width: 158px;
            height: 47px;
            border-right-style: solid;
            border-right-width: 1px;
        }
    .auto-style5 {
        font-size: large;
    }
    .auto-style6 {
        width: 100%;
        height: 231px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
    <tr>
        <td class="auto-style3">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style5" Height="34px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="134px">
                <asp:ListItem>无</asp:ListItem>
                <asp:ListItem>员工</asp:ListItem>
                <asp:ListItem>管理员</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td rowspan="6">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style5" ForeColor="Red"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged">
                    </asp:AsyncPostBackTrigger>
                </Triggers>
            </asp:UpdatePanel>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
    </tr>
</table>

</asp:Content>
