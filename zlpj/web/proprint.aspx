<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="proprint.aspx.cs" Inherits="proprint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>打印提案</title>
    <script type="text/javascript">
        $(function () {
            listtab('tj');
        });
    </script>
    <style>
        .table td { /*cursor: pointer;*/ }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="qianhead">
        <div class="link on">
            <a href="proprint.aspx">打印提案</a>
        </div>
    </div>
    <div class="tipa">
        检索提案
    </div>
    <div>
        <table class="table nohover">
            <tr style="height: 40px">
                <th style="width: 10%">
                    <b>届次</b>
                </th>
                <th>
                    <asp:Label ID="Labeljc" runat="server" Text="Label" Width="200px" class="u-ipt"></asp:Label>
                </th>
                <th style="width: 10%">
                    <b>会次</b>
                </th>
                <th>
                    <asp:Label ID="Labelhc" runat="server" Text="Label" Width="200px" class="u-ipt"></asp:Label>
                </th>
            </tr>
            <tr style="height: 40px">
                <th>
                    <b>类别</b>
                </th>
                <th>
                    <asp:DropDownList ID="DropDownListkind" runat="server" Width="200px" AppendDataBoundItems="True" Style="height: 30px">
                        <asp:ListItem>请选择</asp:ListItem>
                    </asp:DropDownList>
                </th>
                <th>
                    <b>党派</b>
                </th>
                <th>
                    <asp:DropDownList ID="DropDownListparty" runat="server" Width="200px" AppendDataBoundItems="True" Style="height: 30px">
                        <asp:ListItem>请选择</asp:ListItem>
                    </asp:DropDownList>
                </th>
            </tr>
            <tr style="height: 40px">
                <th>
                    <b>界别</b>
                </th>
                <th>
                    <asp:DropDownList ID="DropDownListconst" runat="server" Width="200px" AppendDataBoundItems="True" Style="height: 30px">
                        <asp:ListItem>请选择</asp:ListItem>
                    </asp:DropDownList>
                </th>
                 <th>
                     <b>专委会</b>
                 </th>
                <th>
                    <asp:DropDownList ID="DropDownListcommit" runat="server" Width="40%" AppendDataBoundItems="True" Style="height: 30px">
                        <asp:ListItem>请选择</asp:ListItem>
                    </asp:DropDownList>
                </th>
                </tr>
            <tr style="height: 40px">
                <th>
                    <b>排序</b>
                </th>
                <th>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" AppendDataBoundItems="True" Style="height: 30px">
                        <asp:ListItem Value="tah">提案号</asp:ListItem>
                        <asp:ListItem Value="zf">总分</asp:ListItem>
                        <asp:ListItem Value="ztc">类别</asp:ListItem>
                    </asp:DropDownList>
                </th>
            </tr>
        </table>
    </div>
    <div style="margin-top: 3px; text-align: center">
        <asp:Button ID="Button2" runat="server" Text="打印" class="u-btn u-btn-c2" OnClick="Button2_Click" />
        <asp:Button ID="Button1" runat="server" Text="导出excel" class="u-btn u-btn-c2" OnClick="Button1_Click"/>
    </div>
</asp:Content>
