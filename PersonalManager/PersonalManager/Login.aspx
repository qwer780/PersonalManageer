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
        .auto-style4 {
            width: 87px;
            height: 89px;
        }
        .auto-style5 {
            font-size: xx-large;
        }
         .auto-style8 {
            width: 100%;
            margin-right: 473px;
            margin-bottom: 0px;
        }
        .auto-style9 {
            font-size: large;
        }
         .auto-style17 {
            font-size: medium;
        }
        .auto-style22 {
            text-align: left;
            width: 40%;
        }
        .auto-style33 {
            width: 4125px;
        }
        .auto-style34 {
            text-align: left;
        }
        .auto-style35 {
            text-align: right;
            font-size: xx-large;
        }
        .auto-style36 {
            width: 100%;
        }
        .auto-style37 {
            width: 80%;
            height: 44px;
            text-align: right;
        }
        .auto-style38 {
            height: 44px;
        }
        .auto-style39 {
            width: 100%;
            height: 459px;
        }
        .auto-style40 {
            width: 4125px;
            text-align: center;
            font-size: large;
        }
        .auto-style41 {
            text-align: right;
        }
        .auto-style42 {
            text-align: center;
        }
        </style>
</head>
<body class="auto-style2">
        <form id="form1" runat="server">
                <span class="auto-style5"/>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style35" style="width: 50%">
                <img alt="" class="auto-style4" src="images/1.jpg" /></td>
                        <td class="auto-style34" style="width: 50%">人事管理系统</td>
                    </tr>
                </table>
                    <div>
                    <img src="images/2.jpg" class="auto-style39" />
                        </div>

                    <div>
                        &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        
                        <table class="auto-style8">
                    <tr>
                        <td class="auto-style40" style="height: 20%">
                            人事管理系统</td>
                <span class="auto-style5"/>
                        <td class="auto-style22" rowspan="2">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <table class="auto-style36">
                                        <tr>
                                            <td style="width: 75%" class="auto-style41"><span class="auto-style5"/><span class="auto-style9">账号：</span><asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="187px"></asp:TextBox>
                                            </td>
                                            <td style="width: 25%">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="账号不能为空！" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 75%" class="auto-style41"><span class="auto-style5"/><span class="auto-style9">密码：</span><asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="187px"></asp:TextBox>
                                            </td>
                                            <td style="width: 25%">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码不能为空！" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 75%" class="auto-style37"><span class="auto-style5"/><span class="auto-style9">&nbsp;&nbsp; 登录人员：</span><asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="148px">
                                                <asp:ListItem>普通员工</asp:ListItem>
                                                <asp:ListItem>管理员</asp:ListItem>
                                                </asp:DropDownList>
                                                </td>
                                            <td class="auto-style38" style="width: 25%"></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 75%" class="auto-style41"><span class="auto-style5"/>
                                                &nbsp;&nbsp;
                                                <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="登录" Width="57px" />
                                                &nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" Height="30px" OnClick="Button2_Click" Text="清空信息" Width="104px" />
                                            </td>
                                            <td style="width: 25%">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 75%" class="auto-style42"><span class="auto-style5"/>
                                                &nbsp;&nbsp;
                                                <asp:Label ID="Label1" runat="server" CssClass="auto-style17" ForeColor="Red"></asp:Label>
                                            </td>
                                            <td style="width: 25%">&nbsp;</td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style33">
                            <span class="auto-style17" style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 人事管理系统，它单指汇集成功企业先进的人力资源管理理念、人力资源管理实践、人力资源信息化系统建设的经验，以信息技术实现对企业人力资源信息的高度集成化管理，为中国企业使用的人力资源管理解决方案。核心价值在于将人力资源工作者从繁重的日常琐碎事务中解放出来，将更多地精力用于企业的人力资源职能管理和管理决策，保持企业的持续高效运营。 集中记录、监测和分析所有劳动力的技能和资格，提供决策分析。提高企业整体的科技含量与管理效率，加快企业的信息化建设。</span></td>
                    </tr>
                    </table>
                <br />
                <br />
                <br />
            </div>
        </form>
</body>
</html>
