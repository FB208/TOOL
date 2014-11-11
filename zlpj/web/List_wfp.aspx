<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List_wfp.aspx.cs" Inherits="List_wfp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>分配列表</title>
    <script type="text/javascript">
        $(function () {
            listtab('fp');
            $(".lyclose").click(function () { $(".m-layer").hide(); });
        });
    </script>
    <style type="text/css">
        .table td { cursor: pointer; }
        .table th { font-weight: bold; }
        .aa:link { text-decoration: none; color: red; }
        .aa:hover { text-decoration: none; color: red; }
        .aa:visited { text-decoration: none; color: red; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="qianhead">
        <div class="link on">
            <a href="#">分配列表</a>
        </div>
    </div>
    <div class="toolhead">
        <div class="toolheadleft">
        </div>
        <div class="toolheadmid">
            <ul id="nav">
                <li><a href="fpta.aspx" class="wh">新建分配</a></li>
            </ul>
        </div>
        <div class="toolheadright">
        </div>
    </div>
    <div class="tipa">
        分配列表
    </div>
    <div>
        <table class="table">
            <thead>
                <tr>
                    <th style="width: 35px;">序号
                    </th>
                    
                    <th style="width: 300px;">名称
                    </th>
                    <th style="width: 35px;">总件数
                    </th>
                    <th style="width: 60px;">已评件数
                    </th>
                    <th style="width: 60px;">分配日期
                    </th>
                    <th style="width: 60px;">状态
                    </th>

                    <th style="width: 35px;">删除
                    </th>
                </tr>
            </thead>
            <tbody>
                <asp:ListView runat="server" ID="Listfp" OnPagePropertiesChanging="rptList_PagePropertiesChanging" OnItemCommand="Listfp_ItemCommand">
                    <ItemTemplate>
                        <tr>
                            <td onclick="location.href='List_fpls.aspx?parameter=<%# Eval("id") %>'">
                                <%# (Container.DataItemIndex+1) %>
                            </td>
                           
                            <td onclick="location.href='List_fpls.aspx?parameter=<%# Eval("id") %>'">
                                <%# Eval("name") %>
                            </td>
                            <td onclick="location.href='List_fpls.aspx?parameter=<%# Eval("id") %>'">
                                <%#countzs(Eval("id")) %>
                            </td>
                            <td onclick="location.href='List_fpls.aspx?parameter=<%# Eval("id") %>'">
                                <%#countyp(Eval("id")) %>
                            </td>
                            <td onclick="location.href='List_fpls.aspx?parameter=<%# Eval("id") %>'">
                                <%# Eval("sendTime","{0:yyyy/MM/dd}") %>
                            </td>
                            <td onclick="location.href='locked.aspx?parameter=<%# Eval("id") %>'">
                                <%#Enum.GetName(typeof(DLL.BaseCode.BaseCode.dflag), int.Parse(Eval("flag").ToString()))%>
                            </td>
                            <td>
                                  <asp:LinkButton ID="LinkButtondelete" runat="server" CssClass="aa" CommandArgument='<%# Eval("id") %>' CommandName="del">删除</asp:LinkButton>                                                             
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </tbody>
        </table>
        <div style="text-align: center; margin-top: 10px; height: 18px;">
            <div class="m-page">
                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="Listfp" PageSize="100">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="first pageprv" ShowNextPageButton="false" ShowPreviousPageButton="True" />
                        <asp:NumericPagerField ButtonType="Link" ButtonCount="10" CurrentPageLabelCssClass="z-crt" />
                        <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="last pagenxt" ShowNextPageButton="True" ShowPreviousPageButton="false" />
                    </Fields>
                </asp:DataPager>
            </div>
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
                                    <h2 class="u-tt">删除确认</h2>
                                    <span class="lyclose" runat="server">×</span>
                                </div>
                                <div class="lyct">
                                    <p>如果删除分配批次，该次的评价将同时删除！是否确认？</p>

                                </div>
                                <div class="lybt">

                                    <div class="lybtns" style="text-align: center">
                                        <asp:Button ID="Buttonqueren" runat="server" Text="确认" CssClass="u-btn u-btn-c2" OnClick="Buttonqueren_Click" />
                                        <asp:Button ID="Button1" runat="server" Text="取消" CssClass="u-btn u-btn-c2" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
</asp:Content>
