<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addsop.aspx.cs" Inherits="addsop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>添加设备</title>
    <script type="text/javascript">
        $(function () {
            listtab('zj');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="qianhead">
        <div class="link">
            <a href="List_equipment.aspx">设备管理</a>
        </div>
        <div class="link on">
            <a href="add.aspx">添加外设</a>
        </div>
    </div>
    <div class="tip">添加外设</div>
    <div>
        <table border="1" class="table nohover">
            <tr>
                <td style="width: 15%;">&nbsp; 机器类型:</td>
                <td style="width: 85%;">&nbsp;
                   <asp:DropDownList ID="DropDownListtype" runat="server" Width="90.5%"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">&nbsp;编号:</td>
                <td>&nbsp;
                    <asp:TextBox ID="descTextBox" runat="server" Width="90%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">&nbsp; 品牌:</td>
                <td>&nbsp;
                    <asp:TextBox ID="brandTextBox" runat="server" Width="90%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">&nbsp; 型号:</td>
                <td>&nbsp;
                    <asp:TextBox ID="versionTextBox" runat="server" Width="90%"></asp:TextBox>
                </td>
            </tr>

        </table>
        <div style="text-align: center; margin-top: 10px;">
            <asp:Button ID="saveButton" runat="server" CssClass="u-btn u-btn-sm" Text="保存" OnClick="saveButton_Click" />
        </div>
    </div>
</asp:Content>



