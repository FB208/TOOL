<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="fpta.aspx.cs" Inherits="fpta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>分配提案</title>
    <script type="text/javascript">
        $(function () {
            listtab('fp');
            $(".lyclose").click(function () { $(".m-layer").hide(); });
       
        });
    </script>
        <style type="text/css">
        .table th {
            font-weight: bold;
        }
            .auto-style1 {
                width: 80px;
                height: 40px;
            }
            .auto-style2 {
                height: 40px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="qianhead">
        <div class="link">
            <a href="List_wfp.aspx">分配列表</a>
        </div>
        <div class="link on">
            <a href="fpta.aspx">新建分配</a>
        </div>
    </div>
    <div class="tipa">
        新建分配
    </div>
    <div>
        <table class="table nohover" style=" text-indent:1em">
            <tr style="height: 40px">
                <th style="width: 80px"><b>分配名</b></th>
                <td colspan="3">
                    <asp:TextBox ID="TextBoxname" runat="server" Width="95%" class="u-ipt"></asp:TextBox></td>
            </tr>
            <tr style="height: 40px">
                <th style="width: 80px"><b>届次</b></th>

                <th>
                    <asp:Label ID="Labeljc" runat="server" Text="Label" Width="90%"  ></asp:Label>
                </th>
                <th style="width: 80px"><b>会次</b></th>
                <th>
                    <asp:Label ID="Labelhc" runat="server" Text="Label" Width="90%"  ></asp:Label>
                </th>

            </tr>
            <tr>
                <th class="auto-style1"><b>类别</b></th>
                <th class="auto-style2">
                    <asp:DropDownList ID="DropDownListkind" runat="server" Width="90%" AppendDataBoundItems="True" Style="height: 30px">
                        <asp:ListItem>请选择</asp:ListItem>
                    </asp:DropDownList></th>
                <th class="auto-style1"><b>党派</b></th>
                <th class="auto-style2">
                    <asp:DropDownList ID="DropDownListparty" runat="server" Width="90%" AppendDataBoundItems="True" Style="height: 30px">
                        <asp:ListItem>请选择</asp:ListItem>
                    </asp:DropDownList></th>

            </tr>
            <tr style="height: 40px">
                <th style="width: 80px"><b>界别</b></th>
                <th>
                    <asp:DropDownList ID="DropDownListconst" runat="server" Width="90%" AppendDataBoundItems="True" Style="height: 30px">
                        <asp:ListItem>请选择</asp:ListItem>
                    </asp:DropDownList></th>
                <th style="width: 80px"></th>
                <th>
                   <%-- <asp:DropDownList ID="DropDownListcommit" runat="server" Width="90%" AppendDataBoundItems="True" Style="height: 30px">
                        <asp:ListItem>请选择</asp:ListItem>
                    </asp:DropDownList>--%>
                </th>

            </tr>
            <tr style="height: 40px">
                <th style="width: 80px"><b>提案号</b></th>
                <th>
                    <asp:TextBox ID="TextBoxdefineid" runat="server" Width="90%" class="u-ipt"></asp:TextBox></th>
                <th style="width: 80px"><b>案由</b></th>
                <th>
                    <asp:TextBox ID="TextBoxtitle" runat="server" Width="90%" class="u-ipt"></asp:TextBox></th>

            </tr>
        </table>
    </div>
    <div style="margin-top: 3px; text-align: center">
        <asp:Button ID="Buttonsearch1" runat="server" Text="检索" CssClass="u-btn u-btn-c2" OnClick="Buttonsearch1_Click" />
    </div>
    <div class="tipa" style="margin-top: 10px;">
        检索结果
    </div>
    <div>
        <table class="table nohover">
            <thead>
                <tr>
                    <th style="width: 40px;">序号</th>
                    <th style="width: 100px;">提案号</th>
                    <th>案由</th>
                    <th style="width: 100px;">提出方式</th>
                </tr>
            </thead>
            <tbody>
                <asp:ListView runat="server" ID="Listta" OnPagePropertiesChanging="rptList_PagePropertiesChanging">
                    <ItemTemplate>
                        <tr>
                            <td><%# (Container.DataItemIndex+1) %></td>
                            <td><%# Eval("id") %></td>
                            <td><%# Eval("title") %></td>
                            <td><%# Eval("taxs") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </tbody>
        </table>
        <div style="text-align: center; margin-top: 10px; height: 18px;">
            <div class="m-page">
                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="Listta">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="first pageprv" ShowNextPageButton="false" ShowPreviousPageButton="True" />
                        <asp:NumericPagerField ButtonType="Link" ButtonCount="10" CurrentPageLabelCssClass="z-crt" />
                        <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="last pagenxt" ShowNextPageButton="True" ShowPreviousPageButton="false" />
                    </Fields>
                </asp:DataPager>
            </div>
        </div>
    </div>
    <div class="tipa">
        选择评价人
    </div>
    <div>
        <table class="table nohover">
            <tr>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="checklist" RepeatColumns="11"></asp:CheckBoxList></td>
            </tr>
        </table>
    </div>
    <div style="margin-top: 3px; text-align: center; height: 40px;">
        <asp:Button ID="Button2" runat="server" Text="确认分配" class="u-btn u-btn-c2" OnClick="Button2_Click" />
    </div>
     <div class="m-layer m-layer-show" runat="server" id="diverror">
    <div class="lymask"></div>
    <table class="lytable"><tbody><tr><td class="lytd">
    <div class="lywrap">
	    <div class="lytt"><h2 class="u-tt">分配失败</h2><span class="lyclose" runat="server">×</span></div>
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

