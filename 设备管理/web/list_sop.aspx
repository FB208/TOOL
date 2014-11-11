<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list_sop.aspx.cs" Inherits="list_sop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>设备列表</title>
    <script type="text/javascript">
        $(function () {
            listtab('zj');
        });
    </script>
    <style>
        .table td {
            text-align: center;
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="qianhead">
        <div class="link on">
            <a href="list_sop.aspx">设备管理</a>
        </div>
    </div>
    <div class="toolhead">
        <div class="toolheadleft">
        </div>
        <div class="toolheadmid">
            <ul id="nav">
                <li><a href="addsop.aspx" class="wh">添加外设</a></li>
                <li>
                    <a href="printsop.aspx?parameter=2" target="_blank" class="wh">显示器表</a>
                </li>
                 <li>
                    <a href="printsop.aspx?parameter=1" target="_blank" class="wh">打印机表</a>
                </li>
            </ul>
        </div>
        <div class="toolheadright">
        </div>
        <div class="toolright">
            <asp:DropDownList ID="DropDownListsearch" runat="server" OnSelectedIndexChanged="search_Click">
                <asp:ListItem Value="0">请选择</asp:ListItem>                
                <asp:ListItem Value="1">编号</asp:ListItem>                
                <asp:ListItem Value="2">按类型</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="roomnumTextBox" CssClass="u-ipt" runat="server"></asp:TextBox>
            <asp:Button ID="Button1"  CssClass="u-btn u-btn-sm" runat="server" Text="筛选" OnClick="search_Click" />

        </div>
    </div>


    <div class="tip">
        设备列表
    </div>
    <table class="table">
        <thead>
            <tr>
                <td >序号</td>
                <td>编号</td>
                <td>类型</td>
                <td>品牌</td>
                <td>型号</td>                
            </tr>
        </thead>
        <tbody>
            <asp:ListView runat="server" ID="rptList" OnPagePropertiesChanging="rptList_PagePropertiesChanging">
                <ItemTemplate>                    
                        <tr>
                            <td><%# (Container.DataItemIndex+1) %></td>
                            <td><%# Eval("defineId") %></td>
                            <td><%#Enum.GetName(typeof(DLL.BaseCode.BaseCode.soptype), Eval("type"))%></td>
                            <td><%# Eval("brand") %></td>
                            <td><%# Eval("info") %></td>                           
                           
                        </tr>                   
                </ItemTemplate>
            </asp:ListView>
        </tbody>
       
    </table>
    <div style="text-align: center; margin-top: 10px; height: 18px;">
        
        <div class="m-page">
            <asp:DataPager ID="DataPager1" runat="server" PagedControlID="rptList">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="first pageprv" ShowNextPageButton="false" ShowPreviousPageButton="True" />
                    <asp:NumericPagerField ButtonType="Link" ButtonCount="10" CurrentPageLabelCssClass="z-crt" />
                    <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="last pagenxt" ShowNextPageButton="True" ShowPreviousPageButton="false" />
                </Fields>
            </asp:DataPager>
        </div>
    </div>  
</asp:Content>


