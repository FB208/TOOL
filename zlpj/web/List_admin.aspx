<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List_admin.aspx.cs" Inherits="List_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>用户列表</title>
    <script type="text/javascript">
        $(function () {
            listtab('yg');

        });
    </script>
    <style type="text/css">
        .table th { font-weight: bold; }
        .aa:link { text-decoration: none; color: red; }
        .aa:hover { text-decoration: none; color: red; }
        .aa:visited { text-decoration: none; color: red; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="qianhead">
        <div class="link on">
            <a href="List_admin.aspx">用户列表</a>
        </div>
    </div>
    <div class="toolhead">
        <div class="toolheadleft">
        </div>
        <div class="toolheadmid">
            <ul id="nav">
                <li><a href="editor_admin.aspx" class="wh">添加用户</a></li>
            </ul>
        </div>
        <div class="toolheadright">
        </div>
    </div>
    <div class="tipa">
        用户列表
    </div>
    <div>
        <table class="table nohover">
            <thead>
                <tr>
                    <th style="width: 35px;">
                        序号
                    </th>
                    <th style="width: 80px;">
                        姓名
                    </th>
                    <th style="width: 80px;">
                        登录名
                    </th>
                    <th style="width: 80px;">
                        身份
                    </th>
                    <th>
                    </th>
                </tr>
            </thead>
            <tbody>
            <tbody>
                <asp:ListView runat="server" ID="Listadmin" OnPagePropertiesChanging="rptList_PagePropertiesChanging">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# (Container.DataItemIndex+1) %>
                            </td>
                            <td>
                                <%# Eval("name") %>
                            </td>
                            <td>
                                <%# Eval("loginname") %>
                            </td>
                            <td>
                                <%#Enum.GetName(typeof(DLL.BaseCode.BaseCode.role), int.Parse(Eval("role").ToString()))%>
                            </td>
                            <td style="width: 40px;">
                                <a href="editor_admin.aspx?parameter=<%# Eval("id") %>" class="aa">修改</a>
                            </td>
                            <%--<td style="width: 40px;"><asp:LinkButton ID="LinkButton2" runat="server">删除</asp:LinkButton></td>--%>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </tbody>
        </table>
        <div style="text-align: center; margin-top: 10px; height: 18px;">
            <div class="m-page">
                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="Listadmin" PageSize="20">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="first pageprv" ShowNextPageButton="false" ShowPreviousPageButton="True" />
                        <asp:NumericPagerField ButtonType="Link" ButtonCount="10" CurrentPageLabelCssClass="z-crt" />
                        <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="last pagenxt" ShowNextPageButton="True" ShowPreviousPageButton="false" />
                    </Fields>
                </asp:DataPager>
            </div>
        </div>
    </div>
</asp:Content>
