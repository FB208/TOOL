<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="CSS/demo.css" rel="stylesheet" />
    <script src="JS/demo.js"></script>
    <script src="JS/jquery-1.8.2.min.js"></script>
    <link href="CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="CSS/img-ext.css" rel="stylesheet" />
    <link href="CSS/img-extt.css" rel="stylesheet" />
    <script type="text/javascript">
        function logerror() {
            $('#diverror').hide();
        }
    </script>
</head>
<body style="background-color: #fef5e5; margin: 0">
    <form runat="server">
        <div style="height: 310px; width: 505px; background: url('css/img/login.jpg'); top: 50%; left: 50%; margin-top: -157px; margin-left: -254px; position: absolute">
            <div>
                <asp:TextBox ID="TextBoxusername" class="u-ipt" Style="margin-top: 180px; margin-left: 270px" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBoxpassword" class="u-ipt" Style="margin-top: 10px; margin-left: 270px" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div style="margin-top: 17px; margin-left: 335px">
                <asp:Button ID="Buttonlogin" runat="server" Text="登录" CssClass="u-btn u-btn-c2" OnClick="Buttonlogin_Click" />
            </div>
        </div>
        <div class="m-layer m-layer-show" runat="server" id="diverror">
            <div class="lymask"></div>
            <table class="lytable">
                <tbody>
                    <tr>
                        <td class="lytd">
                            <div class="lywrap">
                                <div class="lytt">
                                    <h2 class="u-tt">登录失败</h2>
                                    <span class="lyclose" runat="server" onclick="logerror()">×</span>
                                </div>
                                <div class="lyct">
                                    <p>用户名或密码错误！</p>

                                </div>
                                <div class="lybt">

                                    <div class="lybtns" style="text-align: center">
                                        <asp:Button ID="Buttonqueren" runat="server" Text="确认" CssClass="u-btn u-btn-c2" OnClick="Buttonqueren_Click" />
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
