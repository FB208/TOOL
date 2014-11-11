<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Detail_chakanforld.aspx.cs" Inherits="Detail_chakanforld" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>评价查看</title>
    <script type="text/javascript">
        $(function () {
            listtab('ld');
        });
    </script>
    <style>
        .table tr td {
            padding: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="qianhead">
       <div class="link">
            <a href="List_pcforld.aspx">分配列表</a>
        </div>
       <div class="link">
            <a href="List_fplsforld.aspx?parameter=<%=Request["h"] %>">分配详情</a>
        </div>
         <div class="link on">
            <a href="#">提案详情</a>
        </div>
    </div>
     <div class="tipa">
        提案详情
    </div>
    <div>
        <table class="table nohover" style="text-align: left;font-size:20px;">
            <tr>
                <td style="width: 9%"><b>提案编号</b></td>
                <td>
                    <asp:Label ID="Labelid" runat="server" Text="Label"></asp:Label></td>
                <td style="width: 8%"><b>提案人</b></td>
                <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                <td style="width: 8%"><b>届次</b></td>
                <td>
                    
                    <asp:Label ID="Labeljie" runat="server" Text="Label"></asp:Label>届<asp:Label ID="Labelci" runat="server" Text="Label"></asp:Label>次</td>
            </tr>

            <tr>
                <td><b>案由</b></td>
                <td colspan="5">
                    <asp:Label ID="Labeltitle" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><b>内容</b></td>
                <td colspan="5">
                    <asp:Label ID="Labelcontext" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><b>附件</b></td>
                <td colspan="5"><a href="/down.aspx?id=<%=innerid %>">下载附件</a></td>
            </tr>
        </table>
    </div>
    <div id="isPJ" style="margin:0px;" runat="server">
     <div class="tipa">
        提案评分
    </div>
    <div>
        <table class="table nohover" style="text-align: left;">
            <tr>
                <td style="width: 20%"><b>选题</b></td>
                <td style="width: 20%"><b>代表性</b></td>
                <td style="width: 20%"><b>知情情况</b></td>
                <td style="width: 20%"><b>提案分析</b></td>
                <td style="width: 20%"><b>建议可操作性</b></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label1" runat="server"></asp:Label></td>
                <td><asp:Label ID="Labelr" runat="server"></asp:Label></td>
                <td><asp:Label ID="Label3" runat="server"></asp:Label></td>
                <td><asp:Label ID="Label4" runat="server"></asp:Label></td>
                <td><asp:Label ID="Label5" runat="server"></asp:Label></td>
            </tr>
            <tr>
                 <td><b>是否调研</b></td>
                 <td><asp:Label ID="Labeldy" runat="server"></asp:Label></td>
                 <td></td>
                 <td><b>是否个人问题</b></td>
                 <td><asp:Label ID="Labelpersonal" runat="server"></asp:Label></td>
            </tr>
            <tr>
                 <td><b>提案评价等级</b></td>
                 <td><asp:Label ID="Labelgrade" runat="server"></asp:Label></td>
                 <td></td>
                 <td><b>提案评价总分</b></td>
                 <td><asp:Label ID="Labeltotal" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><b>对提案的总体意见</b></td>
                <td colspan="4"><asp:Label ID="Labelsug" runat="server"></asp:Label></td>
            </tr>
             <tr>
                <td><b>提案有何不足之处</b></td>
                <td colspan="4"><asp:Label ID="Labelshort" runat="server"></asp:Label></td>
            </tr>
        </table>
    </div>
        </div>
    <div id="fh" runat="server"  style="margin-top: 3px; text-align: center; height: 60px;">
        <asp:Button ID="Button1" runat="server" CssClass="u-btn u-btn-c2" Text="返回" OnClick="Button1_Click" />
    </div>
</asp:Content>

