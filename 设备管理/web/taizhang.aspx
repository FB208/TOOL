<%@ Page Language="C#" AutoEventWireup="true" CodeFile="taizhang.aspx.cs" Inherits="taizhang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        .table td {
            text-align: center;
        }
    </style>
</head>
<body>
    <div  style="text-align: center;margin-left:auto;margin-right:auto;width:302px;">
        <h1>台帐</h1></div>
    <div style="text-align: center">
        <table border="1" style="border: solid 1px;border-collapse: collapse;">
            <tr>
                <td style="width: 140px;">所属部门</td>
                <td style="width: 90px;">房间号</td>
                <td style="width: 90px;">使用人</td>
                <td style="width: 90px;">主机编号</td>
                <td style="width: 150px;">主机型号</td>
                <td style="width: 80px;">网络类型</td>
                <td style="width: 100px;">显示器编号</td>
                <td style="width: 100px;">显示器尺寸</td>
                <td style="width: 100px;">打印机编号</td>
                <td style="width: 100px;">打印机编号</td>
            </tr>
            <asp:Repeater runat="server" ID="rptList">
                <ItemTemplate>
                    <tr>
                        <td style="width: 140px;"><%# Eval("department") %></td>
                        <td style="width: 90px;"><%# Eval("roomnum") %></td>
                        <td style="width: 90px;"><%# Eval("username") %></td>
                        <td style="width: 90px;"><%# Eval("defineId") %></td>
                        <td style="width: 150px;"><%# Eval("version") %></td>
                        <td style="width: 100px;"><%# Eval("nettype") %></td>
                        <td style="width: 60px;"><%# Eval("screenInfo") %></td>
                        <td style="width: 100px;"><%# Eval("size") %></td>
                        <td style="width: 210px;"><%# Eval("printerInfo") %></td>
                        <td style="width: 80px;"><%# Eval("pversion") %></td>                        
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>   
    <div style="float:right;margin-top:7px;margin-right:80px;display:inline-block">日期：</div>
    <div style="float:right;margin-top:7px;margin-right:80px;display:inline-block">签名：</div>
</body>
</html>

