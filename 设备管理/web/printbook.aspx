<%@ Page Language="C#" AutoEventWireup="true" CodeFile="printbook.aspx.cs" Inherits="printbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <div  style="text-align: center;margin-left:auto;margin-right:auto;width:302px;">
        <h1>便携式计算机表</h1>
        </div>
    <div style="text-align: center;margin-left:auto;margin-right:auto;width:742px;">
        <table border="1" style="border: solid 1px;border-collapse: collapse;">
            <tr>
                <td style="width: 90px;">编号</td>
                <td style="width: 150px;">型号</td>
                
                <td style="width: 100px;">所属部门</td>
               
                <td style="width: 200px;">购买时间</td>
                <td style="width: 200px;">备注</td>
            </tr>
            <asp:Repeater runat="server" ID="rptList">
                <ItemTemplate>
                    <tr>
                        <td style="width: 90px;"><%# Eval("defineId") %></td>
                        <td style="width: 150px;"><%# Eval("version") %></td>
                        <td style="width: 100px;"><%# Eval("department") %></td>                       
                        <td style="width: 200px;"><%# Eval("buyTime") %></td>
                        <td style="width: 200px;"><%# Eval("description") %></td>                        
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>   
</body>
</html>
