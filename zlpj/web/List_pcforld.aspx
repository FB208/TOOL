<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List_pcforld.aspx.cs" Inherits="List_pcforld" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>分配列表</title>
    <script type="text/javascript">
        $(function () {
            listtab('ld');
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="qianhead">
        <div class="link on">
            <a href="List_wfp.aspx">分配列表</a>
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
                  
                    <th style="width: 300px;">
                        名称
                    </th>
                    <th style="width: 35px;">
                        总件数
                    </th>
                    <th style="width: 60px;">
                        已评件数
                    </th>
                    <th style="width: 60px;">
                        分配日期
                    </th>
                     
                    
                </tr>
            </thead>
            <tbody>
                <asp:ListView runat="server" ID="Listfp" OnPagePropertiesChanging="rptList_PagePropertiesChanging">
                    <ItemTemplate>
                        <tr>
                            <td onclick="location.href='List_fplsforld.aspx?parameter=<%# Eval("id") %>'">
                                <%# (Container.DataItemIndex+1) %>
                            </td>
                            
                            <td onclick="location.href='List_fplsforld.aspx?parameter=<%# Eval("id") %>'">
                                <%# Eval("name") %>
                            </td>
                            <td onclick="location.href='List_fplsforld.aspx?parameter=<%# Eval("id") %>'">
                                <%#countzs(Eval("id")) %>
                            </td>
                            <td onclick="location.href='List_fplsforld.aspx?parameter=<%# Eval("id") %>'">
                                <%#countyp(Eval("id")) %>
                            </td>
                            <td onclick="location.href='List_fplsforld.aspx?parameter=<%# Eval("id") %>'">
                                <%# Eval("sendTime","{0:yyyy/MM/dd}") %>
                            </td>
                           
                            
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </tbody>
        </table>
        <div style="text-align: center; margin-top: 10px; height: 18px;">
            <div class="m-page">
                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="Listfp" PageSize="100" >
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

