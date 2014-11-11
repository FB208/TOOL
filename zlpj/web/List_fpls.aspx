<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List_fpls.aspx.cs" Inherits="List_fpls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>分配详情</title>
    <script type="text/javascript">
        $(function () {
            listtab('fp');
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
            <a href="List_wfp.aspx">分配列表</a>
        </div>
        <div class="link on">
            <a href="#">分配详情</a>
        </div>
    </div>
    <div class="tipa">
        分配列表
    </div>
    <div>
        <table class="table">
            <thead>
                <tr>
                    <th style="width: 35px;">
                        序号
                    </th>
                    <th style="width: 60px;">
                        <a href="List_fpls.aspx?parameter=<%=Request["parameter"] %>&o=tah">提案号<span class="ui-icon ui-icon-carat-1-s ui-spinner"></span></a>
                    </th>
                    <th style="width: 300px;">
                        案由
                    </th>
                    <th style="width: 90px;">
                        类别
                    </th>
                    <th style="width: 100px;">
                        档次
                    </th>
                    <th style="width: 100px;">
                        <a href="List_fpls.aspx?parameter=<%=Request["parameter"] %>&o=zf">总分<span class="ui-icon ui-icon-carat-1-s ui-spinner"></span></a>
                    </th>
                    <th style="width: 100px;">
                        是否评价
                    </th>
                    <th style="width: 100px;">
                        <a href="List_fpls.aspx?parameter=<%=Request["parameter"] %>&o=pjr">评价人<span class="ui-icon ui-icon-carat-1-s ui-spinner"></span></a>
                    </th>
                </tr>
            </thead>
            <tbody>
                <asp:ListView runat="server" ID="Listfpdetail" OnPagePropertiesChanging="rptList_PagePropertiesChanging">
                    <ItemTemplate>
                        <tr onclick="location.href='Detail_chakan.aspx?parameter=<%# Eval("appid") %>&h=<%=Request["parameter"]%>'">
                            <td>
                                <%# (Container.DataItemIndex+1) %>
                            </td>
                            <td>
                                <%# Eval("id") %>
                            </td>
                            <td>
                                <%# Eval("title") %>
                            </td>
                            <td>
                                <%#leibie(Eval("yjztc")) %>
                            </td>
                            <td>
                                <%#dengji(Eval("total")) %>
                            </td>
                            <td>
                                <%#Eval("total") %>
                            </td>
                            <td>
                                <%#Enum.GetName(typeof(DLL.BaseCode.BaseCode.aflag), int.Parse(Eval("flag").ToString()))%>
                            </td>
                            <td>
                                <%# Eval("aname") %>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </tbody>
        </table>
        <div style="text-align: center; margin-top: 10px; height: 18px;">
            <div class="m-page">
                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="Listfpdetail" PageSize="150">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="first pageprv" ShowNextPageButton="false" ShowPreviousPageButton="True" />
                        <asp:NumericPagerField ButtonType="Link" ButtonCount="10" CurrentPageLabelCssClass="z-crt" />
                        <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="last pagenxt" ShowNextPageButton="True" ShowPreviousPageButton="false" />
                    </Fields>
                </asp:DataPager>
            </div>
        </div>
        <div style="height: 30px; width: 20px">
        </div>
    </div>
</asp:Content>
