<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PersonalManager.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            overflow: hidden;
            width: 100%;
            height: 384px;
        }

        .auto-style3 {
            height: 382px;
            width: 100%;
        }

        .auto-style4 {
            width: 1359%;
            height: 448px;
        }

        .auto-style6 {
            width: 509%;
            height: 293px;
        }

        .auto-style7 {
            width: 853%;
            height: 158px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <body>
        <div>
            <div id="demo" style="overflow: hidden; width: 100%; align: center">
                <table cellspacing="0" cellpadding="0" align="center" border="0">
                    <tbody>
                        <tr>
                            <td id="marquePic1" valign="top">

                                <table width="660" height="80" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="66" align="center">
                                            <img src="images/5.jpg" width="900" height="500"></td>
                                        <td width="66" align="center">
                                            <img src="images/6.jpg" width="1300" height="550"></td>
                                        <td width="66" align="center">
                                            <img src="images/4.jpg" width="1200" height="550"></td>
                                        <td width="66" align="center">
                                            <img src="images/3.jpg" width="1100" height="550"></td>
                                        <td width="66" align="center">
                                            <img src="images/2.jpg" width="1100" height="550"></td>
                                    </tr>
                                </table>

                            </td>
                            <td id="marquePic2" valign="top"></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <script type="text/javascript">
                var speed = 20        //定义速度,实指下面滚动函数的执行间隔,值越小滚动越快
                marquePic2.innerHTML = marquePic1.innerHTML       //将demo1中的内容复制到demo2
                function Marquee() {                           //开始定义滚动函数
                    if (demo.scrollLeft >= marquePic1.scrollWidth) {   //如果滑动块的位置大于demo2的宽度,滑动块退回一个demo2的宽度
                        demo.scrollLeft = 0
                    } else {                                         //否则,滑动块向右滚动(图片向左滚)
                        demo.scrollLeft++
                    }
                }                              //滚动函数定义完
                var MyMar = setInterval(Marquee, speed)            //设置定时器,使滚动函数每30毫秒运行一次
                demo.onmouseover = function () { clearInterval(MyMar) }        //鼠标经过时,清除定时器,停止执行滚动函数,弹出信息;
                demo.onmouseout = function () { MyMar = setInterval(Marquee, speed) }     // 鼠标离开后,继续滚动
            </script>
        </div>
    </body>


</asp:Content>
