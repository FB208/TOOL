<%@ Page Language="C#" AutoEventWireup="true" CodeFile="printsop.aspx.cs" Inherits="printsop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div  style="text-align: center;margin-left:auto;margin-right:auto;width:302px;">
        <h1><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1></div>
   <div style="text-align: center;margin-left:auto;margin-right:auto;width:302px;">
        <table border="1" style="border: solid 1px;border-collapse: collapse;">
            <tr>
                <td style="width: 90px;">编号</td>
                <td style="width: 60px;">品牌</td>
                <td style="width: 150px;">型号</td>                      
            </tr>
            <asp:Repeater runat="server" ID="rptList">
                <ItemTemplate>
                    <tr>
                        <td style="width: 90px;"><%# Eval("defineId") %></td>
                        <td style="width: 60px;"><%# Eval("brand") %></td>
                        <td style="width: 150px;"><%# Eval("info") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
    
</body>
</html>
