<%@ Page Language="C#" AutoEventWireup="true" CodeFile="printuser.aspx.cs" Inherits="printuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <div  style="text-align: center;margin-left:auto;margin-right:auto;width:302px;">
        <h1>使用人表</h1>
        </div>
    <div style="text-align: center;margin-left:auto;margin-right:auto;width:652px;">
        <table border="1" style="border: solid 1px;border-collapse: collapse;">
            <tr>
                <td style="width: 150px;">所属部门</td>
                <td style="width: 100px;">房间号</td>
                <td style="width: 100px;">使用人</td>
                <td style="width: 100px;">主机编号</td>
                <td style="width: 100px;">显示器编号</td>
                <td style="width: 100px;">打印机编号</td>
               
            </tr>
            <asp:Repeater runat="server" ID="rptList">
                <ItemTemplate>
                    <tr>
                        <td style="width: 150px;"><%# Eval("department") %></td>
                        <td style="width: 100px;"><%# Eval("roomNum") %></td>
                        <td style="width: 100px;"><%# Eval("username") %></td>
                        <td style="width: 100px;"><%# Eval("defineId") %></td>
                        <td style="width: 100px;"><%# Eval("screenInfo") %></td>
                        <td style="width: 100px;"><%# Eval("printerInfo") %></td>
                                         
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>   
</body>
</html>
