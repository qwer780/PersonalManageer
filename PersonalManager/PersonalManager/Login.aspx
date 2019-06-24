<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PersonalManager.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 87px;
            height: 89px;
        }
        .auto-style5 {
            font-size: xx-large;
        }
         .auto-style6 {
             background:url(2.jpg) no-repeat;
            margin-bottom: 0px;
        }
        .auto-style8 {
            width: 104%;
            margin-right: 473px;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style17 {
            font-size: medium;
        }
        .auto-style21 {
            text-align: left;
            height: 33px;
            width: 1587px;
        }
        .auto-style22 {
            text-align: left;
            height: 35px;
            width: 1587px;
        }
        .auto-style23 {
            text-align: left;
            width: 1587px;
        }
        .auto-style30 {
            text-align: left;
            height: 33px;
            width: 2622px;
        }
        .auto-style31 {
            text-align: left;
            height: 35px;
            width: 2622px;
        }
        .auto-style32 {
            text-align: left;
            width: 2622px;
        }
        .auto-style33 {
            width: 158px;
        }
        .auto-style34 {
            text-align: left;
        }
        .auto-style35 {
            text-align: right;
            font-size: xx-large;
        }
    </style>
</head>
<body class="auto-style2">
        <form id="form1" runat="server">
            <div class="auto-style3">
                <span class="auto-style5">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style35" style="width: 50%">
                <img alt="" class="auto-style4" src="images/1.jpg" /></td>
                        <td class="auto-style34" style="width: 50%">人事管理系统</td>
                    </tr>
                </table>
                <table class="auto-style8" style="width: 100%">
                    <tr>
                        <td class="auto-style33" rowspan="8">
                <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/2.jpg" Height="391px" Width="927px" CssClass="auto-style6" >
                </asp:Panel>
                        </td>
                        <td class="auto-style21"></td>
                        <td class="auto-style30">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22"></td>
                        <td class="auto-style31">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23"><span class="auto-style9">&nbsp;&nbsp; 账号：</span><asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="187px"></asp:TextBox>
                        </td>
                        <td class="auto-style32">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style17" ErrorMessage="账号不能为空！" ForeColor="Red" InitialValue=" "></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23"><span class="auto-style9">&nbsp;&nbsp; 密码：</span><asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="187px"></asp:TextBox>
                        </td>
                        <td class="auto-style32">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style17" ErrorMessage="密码不能为空！" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp; <span class="auto-style9">登录人员：</span><asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="148px">
                            <asp:ListItem>普通员工</asp:ListItem>
                            <asp:ListItem>管理员</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;</td>
                        <td class="auto-style32">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22">&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Height="30px" Text="登录" Width="57px" OnClick="Button1_Click" />
&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Height="30px" Text="清空信息" Width="104px" CausesValidation="False" OnClick="Button2_Click" />
                        </td>
                        <td class="auto-style31"></td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style17" ForeColor="Red"></asp:Label>
                        </td>
                        <td class="auto-style32">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style32">&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
            </div>
        </form>
</body>
</html>
