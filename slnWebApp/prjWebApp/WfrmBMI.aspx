<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WfrmBMI.aspx.cs" Inherits="prjWebApp.WfrmBMI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }


        #form1{background-image:url('../../img/banner.jpg');}

    </style>
</head>
<body style="font-weight: 700">
    <div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1 class="auto-style2"><a href="#">BMI 計算機</a></h1>
		</div>
	</div>
</div>
    
    <form id="form1" runat="server">
        <div>
                    <table class="auto-style1">

                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">身高(公分)<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">體重(公斤)<asp:TextBox
            ID="TextBox2" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2"><asp:Button ID="Button1"
            runat="server" onclick="Button1_Click" Text="開始計算" style="height: 21px" />
        &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="清除重算" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lbl警告" runat="server" Font-Bold="True" Font-Size="Large" style="color: #FF3300; font-size: xx-large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">BMI結果:
                                <asp:Label ID="lblbmi" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">檢測結果:
        <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                    </table>
        </div>
    </form>
    <p style="text-align: center">
        &nbsp;</p>
</body>
</html>
