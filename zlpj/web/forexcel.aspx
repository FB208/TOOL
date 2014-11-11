<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forexcel.aspx.cs" Inherits="forexcel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>打印提案列表</title>
    <style>
        .table td { text-align: center; }
    </style>
</head>
<body>
    <div style="text-align: center;">
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>委员提案</h1>
    </div>
    <div style="text-align: center;">

        <table border="1" style="border: solid 1px; border-collapse: collapse; margin-left: auto; margin-right: auto;">
        <asp:Repeater runat="server" ID="rptList">
            <HeaderTemplate>
                <table border="1" style="border: solid 1px; border-collapse: collapse; margin-left: auto; margin-right: auto;">
                    <tr>
                        <td style="width: 70px; text-align: center;">序号</td>
                        <td style="width: 100px; text-align: center;">提案号</td>
                        <td style="width: 600px; text-align: center;">案由</td>
                        <td style="width: 120px; text-align: center;">提案者</td>
                        <td style="width: 100px; text-align: center;">类别</td>
                        <td style="width: 70px; text-align: center;">档次</td>
                        <td style="width: 70px; text-align: center;">得分</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table border="1" style="border: solid 1px; border-collapse: collapse; margin-left: auto; margin-right: auto;">
                    <tr>
                        <td style="width: 70px; text-align: center;"><%# (Container.ItemIndex+1) %></td>
                        <td style="width: 100px; text-align: center;"><%# Eval("id") %></td>
                        <td style="width: 600px; text-align: center;"><%# Eval("title") %></td>
                        <td style="width: 120px; text-align: center;"><%# Eval("tarname")%></td>
                        <td style="width: 100px; text-align: center;"><%# Eval("name") %></td>
                        <td style="width: 70px; text-align: center;"><%#dengji(Eval("atotal")) %></td>
                        <td style="width: 70px; text-align: center;"><%# Eval("atotal") %></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:Repeater></table>

    </div>
</body>
</html>

