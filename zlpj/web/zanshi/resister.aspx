<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resister.aspx.cs" Inherits="resister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>框架系统</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width" />
    <!--网站logo和移动设备logo
    <link rel="shortcut icon" href="img/favicon.ico" />
    <link rel="apple-touch-icon" href="img/touchicon.png" />
    -->
    <!--默认css引用-->
    <link href="CSS/media.css" rel="stylesheet" />
    <link href="CSS/themes/cupertino/jquery-ui-1.9.2.custom.css" rel="stylesheet" />
    <link href="CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="CSS/img-ext.css" rel="stylesheet" />
    <!--默认js引用-->
    <script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="js/JScript.js" type="text/javascript"></script>
</head>
<body>
     <div class="tipa">
        注册账户
    </div>
    <div class="m-form" style="margin-left: 30px">
        <form id="form1" runat="server">
            <fieldset>
                <div class="formitm">
                    <label class="lab">账号：</label>
                    <div class="ipt">
                        <input type="text" class="u-ipt" />
                        <p>6~8个字符，包括字母，数字，下划线以字母开头，字母或数字结尾</p>
                    </div>
                </div>
                <div class="formitm">
                    <label class="lab">初始密码：</label>
                    <div class="ipt">
                        <input type="text" class="u-ipt" />
                        <p>6~8个字符，区分大小写</p>
                    </div>
                </div>
                <div class="formitm">
                    <label class="lab">确认密码：</label>
                    <div class="ipt">
                        <input type="text" class="u-ipt" />
                        <p>再次输入密码</p>
                    </div>
                </div>           
            </fieldset>
        </form>
    </div>
</body>
</html>
