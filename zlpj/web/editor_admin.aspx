<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editor_admin.aspx.cs" Inherits="editor_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>添加用户</title>
    <script type="text/javascript">
        $(function () {
            listtab('yg');        
            $(".lyclose").click(function () { $(".m-layer").hide(); });
        });
    </script>
    <style type="text/css">
        .table td { cursor: pointer; }
        .table th { font-weight: bold; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="qianhead">
        <div class="link">
            <a href="List_admin.aspx">用户列表</a>
        </div>
        <div class="link on">
            <a href="#" runat="server" id="isxg2">添加用户</a>
        </div>
    </div>
    <div id="IsXg" class="tipa" runat="server">
        添加用户
    </div>
    <div>
        <table class="table nohover" style=" text-indent:1em">
            <tr style="height: 40px;">
                <td style=" width:10%">用户名</td>
                <td>
                 <asp:TextBox ID="TextBoxlogin" runat="server" Width="90%" class="u-ipt"></asp:TextBox>
                </td>
            </tr>
             <tr style="height: 40px">
                <td>密码</td>
                <td><asp:TextBox ID="TextBoxpsw" runat="server" Width="90%" class="u-ipt" TextMode="Password"></asp:TextBox></td>
            </tr>
             <tr style="height: 40px">
                <td>姓名</td>
                <td><asp:TextBox ID="TextBoxname" runat="server" Width="90%" class="u-ipt"></asp:TextBox></td>
            </tr>
        </table>
    </div>
    <div style="margin-top: 3px; text-align: center; height: 40px;">
        <asp:Button ID="Button2" runat="server" Text="确定" class="u-btn u-btn-c2" OnClick="Button2_Click" />
    </div>
     <div class="m-layer m-layer-show" runat="server" id="diverror">
    <div class="lymask"></div>
    <table class="lytable"><tbody><tr><td class="lytd">
    <div class="lywrap">
	    <div class="lytt"><h2 class="u-tt">失败</h2><span class="lyclose" runat="server">×</span></div>
	    <div class="lyct">
	        <p>请将信息补充完整！</p>
	        
	    </div>
	    <div class="lybt">
	       
	        <div class="lybtns" style="text-align:center">
	            <asp:Button ID="Buttonqueren" runat="server" Text="确认"  CssClass="u-btn u-btn-c2" OnClick="Buttonqueren_Click"/>	           
	        </div>
	    </div>
    </div></td></tr></tbody></table>
</div>   
</asp:Content>

