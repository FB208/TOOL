<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pj2.aspx.cs" Inherits="pj2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>评价提案</title>
    <script type="text/javascript">
        $(function () {
            listtab('fp');
        });
    </script>
    <style>
        .table td {  /*cursor: pointer;*/ }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="qianhead">
          <div class="link">
            <a href="List_wfp.aspx">分配列表</a>
        </div>
        <div class="link">
            <a href="List_fpls.aspx">分配详情</a>
        </div>
        <div class="link on">
            <a href="pj.aspx">评价提案</a>
        </div>
    </div>

    <div class="tipa">
        提案详情
    </div>
    <div>
        <table class="table nohover" style="text-align:left">
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="关于“城市地下管线建设运营提案”的建议"></asp:Label></td>               
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="内容"></asp:Label></td>               
            </tr>
            <tr>
                <td><asp:LinkButton ID="LinkButton1" runat="server">下载附件</asp:LinkButton></td>               
            </tr>
        </table>
    </div>
    <div class="tipa">
        评价提案
    </div>
    <div>
        <table class="table nohover" >
            <tr>               
                <td>选题</td>
                <td>代表性</td>
                <td>知情情况</td>
                <td>提案分析</td>
                <td>建议可操作性</td>                
            </tr>
            <tr>
                <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label3" runat="server" Text="分"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                   <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label4" runat="server" Text="分"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                   <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label5" runat="server" Text="分"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                   <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label6" runat="server" Text="分"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label7" runat="server" Text="分"></asp:Label>
                </td>
            </tr>
           
            <tr>
                 <td colspan="5">总体意见</td>
                </tr>
                <tr>
                <td colspan="5"><div style="margin-top:10px;"></div>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width=80% Height="60px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="5">不足之处</td>
                </tr>
                <tr>
                 <td colspan="5"><div style="margin-top:10px;"></div>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width=80% Height="60px"></asp:TextBox></td>
            </tr>
        </table>
    </div>
    <div style="margin-top: 3px; text-align: center">
        <asp:Button ID="Button2" runat="server" CssClass="u-btn u-btn-c2" Text="保存"  />
    </div>
</asp:Content>

