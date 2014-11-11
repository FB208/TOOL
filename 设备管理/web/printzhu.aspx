<%@ Page Language="C#" AutoEventWireup="true" CodeFile="printzhu.aspx.cs" Inherits="printzhu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
        <div  style="text-align: center;margin-left:auto;margin-right:auto;width:302px;">
        <h1>计算机主机表</h1>
        </div>
    <div style="text-align: center;margin-left:auto;margin-right:auto;width:1122px;">
        <table border="1" style="border: solid 1px;border-collapse: collapse;">
            <tr>
                <td style="width: 90px;">编号</td>
                <td style="width: 150px;">型号</td>
                <td style="width: 80px;">网络类型</td>
                <td style="width: 100px;">内网IP</td>
                <td style="width: 100px;">外网IP</td>
                <td style="width: 300px;">MAC地址</td>
                <td style="width: 100px;">购买时间</td>
                <td style="width: 200px;">备注</td>
            </tr>
            <asp:Repeater runat="server" ID="rptList">
                <ItemTemplate>
                    <tr>
                        <td style="width: 90px;"><%# Eval("defineId") %></td>
                        <td style="width: 150px;"><%# Eval("version") %></td>
                        <td style="width: 80px;"><%# Eval("nettype") %></td>
                        <td style="width: 100px;"><%# Eval("innerIp") %></td>
                        <td style="width: 100px;"><%# Eval("outerIp") %></td>
                        <td style="width: 300px;"><%# Eval("mac") %></td>
                        <td style="width: 100px;"><%# Eval("buyTime") %></td>
                        <td style="width: 200px;"><%# Eval("description") %></td>                        
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>   
</body>
</html>
