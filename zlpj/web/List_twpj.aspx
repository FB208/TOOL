<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List_twpj.aspx.cs" Inherits="List_twpj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>未评价提案</title>
    <script type="text/javascript">
        $(function () {
            listtab('pj');
        });
    </script>
    <style type="text/css">
        .table td { cursor: pointer; }
        
        .table th { font-weight: bold; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="qianhead">
        <div class="link on">
            <a href="List_twpj.aspx">评价列表</a>
        </div>
    </div>
    <div class="toolhead">
        <div class="toolheadleft">
        </div>
        <div class="toolheadmid">
            <ul id="nav">
                <li><a href="change.aspx" class="wh">更换提案</a></li>
            </ul>
        </div>
        <div class="toolheadright">
        </div>
        <div style="text-align: center; width: 400px; margin: 0 auto">
            <div style="float: left;">
                <asp:DropDownList ID="DropDownListsearch" runat="server" Style="height: 30px; width: 100px">
                    <asp:ListItem Value="defineId">提案号</asp:ListItem>
                    <asp:ListItem Value="name">案由</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div style="float: left">
                <asp:TextBox ID="roomnumTextBox" runat="server" class="u-ipt"></asp:TextBox></div>
            <div style="float: left">
                <asp:Button ID="Buttonsearch" runat="server" CssClass="u-btn u-btn-c2" Text="检索" OnClick="Buttonsearch_Click" /></div>
        </div>
    </div>
    <div class="tipa" style="margin-top: 10px">
        评价列表
    </div>
    <div>
        <table class="table">
            <thead>
                <tr>
                    <th style="width: 40px;">
                        序号
                    </th>
                    <th style="width: 80px;">
                        <a href="List_twpj.aspx?o=tah">提案号<span class="ui-icon ui-icon-carat-1-s ui-spinner"></span></a>
                    </th>
                    <th>
                        案由
                    </th>
                    <th style="width: 140px;">
                        <a href="List_twpj.aspx?o=lb">类别<span class="ui-icon ui-icon-carat-1-s ui-spinner"></span></a>
                    </th>
                     <th style="width: 60px;">
                        <a href="List_twpj.aspx?o=zf">总分<span class="ui-icon ui-icon-carat-1-s ui-spinner"></span></a>
                    </th>
                    <th style="width: 60px;">
                        <a href="List_twpj.aspx?o=zt">状态<span class="ui-icon ui-icon-carat-1-s ui-spinner"></span></a>
                    </th>
                </tr>
            </thead>
            <tbody>
                <asp:ListView runat="server" ID="Listta" OnPagePropertiesChanging="rptList_PagePropertiesChanging">
                    <ItemTemplate>
                        <tr>
                            <td onclick="location.href='pj.aspx?parameter=<%# Eval("appid") %>&unid=<%# Eval("unid") %>'">
                                <%# (Container.DataItemIndex+1) %>
                            </td>
                            <td onclick="location.href='pj.aspx?parameter=<%# Eval("appid") %>&unid=<%# Eval("unid") %>'">
                                <%# Eval("id") %>
                            </td>
                            <td onclick="location.href='pj.aspx?parameter=<%# Eval("appid") %>&unid=<%# Eval("unid") %>'">
                                <%# Eval("title") %>
                            </td>
                            <td onclick="location.href='pj.aspx?parameter=<%# Eval("appid") %>&unid=<%# Eval("unid") %>'">
                                <%#leibie(Eval("yjztc")) %>
                            </td>
                             <td onclick="location.href='pj.aspx?parameter=<%# Eval("appid") %>&unid=<%# Eval("unid") %>'">
                                <%# Eval("total") %>
                            </td>
                            <td onclick="location.href='pj.aspx?parameter=<%# Eval("appid") %>&unid=<%# Eval("unid") %>'">
                                <%#Enum.GetName(typeof(DLL.BaseCode.BaseCode.aflag), int.Parse(Eval("flag").ToString()))%>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </tbody>
        </table>
        <div style="text-align: center; margin-top: 10px; height: 18px;">
            <div class="m-page">
                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="Listta" PageSize="150">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="first pageprv" ShowNextPageButton="false" ShowPreviousPageButton="True" />
                        <asp:NumericPagerField ButtonType="Link" ButtonCount="10" CurrentPageLabelCssClass="z-crt" />
                        <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="last pagenxt" ShowNextPageButton="True" ShowPreviousPageButton="false" />
                    </Fields>
                </asp:DataPager>
            </div>
        </div>
        <div style="height: 30px; width: 100px">
        </div>
    </div>
</asp:Content>
