﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add_admin.aspx.cs" Inherits="add_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>添加用户</title>
    <script type="text/javascript">
        $(function () {
            listtab('yg');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="qianhead">
        <div class="link">
            <a href="List_admin.aspx">用户管理</a>
        </div>
        <div class="link on">
            <a href="add_admin.aspx">添加用户</a>
        </div>
    </div>
    <div class="tip">添加用户</div>
    <div>
        <table border="1" class="table nohover">
            <tr>
                <td style="width: 15%;">&nbsp; 登录名:</td>
                <td style="width: 85%;">&nbsp;<asp:TextBox ID="loginTextBox" runat="server" Width="80%" ></asp:TextBox> </td>
            </tr>
            <tr>
                <td style="width: 15%;">&nbsp; 密码:</td>
                <td style="width: 85%;">&nbsp;<asp:TextBox ID="psyTextBox" runat="server" TextMode="Password" Width="80%" ></asp:TextBox> </td>
            </tr>
            <tr>
                <td style="width: 15%;">&nbsp; 用户名:</td>
                <td style="width: 85%;">&nbsp;<asp:TextBox ID="userTextBox" runat="server" Width="80%" ></asp:TextBox> </td>
            </tr>
            <tr>
                <td style="width: 15%;">&nbsp; 电话:</td>
                <td style="width: 85%;">&nbsp;<asp:TextBox ID="telTextBox" runat="server" Width="80%" ></asp:TextBox> </td>
            </tr>
        </table>
    </div>
    <div style="text-align:center;margin-top:10px;"> <asp:Button ID="saveImageButton" CssClass="u-btn u-btn-sm" runat="server" text="保存" OnClick="saveImageButton_Click"  /></div>
</asp:Content>

