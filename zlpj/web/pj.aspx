<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pj.aspx.cs" Inherits="pj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>评价提案</title>
    <script type="text/javascript">
        $(function () {
            listtab('pj');
        });
    </script>
    <style>
        .table tr td {
            padding: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="qianhead">
        <div class="link">
            <a href="List_twpj.aspx">评价列表</a>
        </div>
        <div class="link on">
            <a href="pj.aspx">评价提案</a>
        </div>
    </div>

    <div class="tipa">
        提案详情
    </div>
    <div style="font-size:20px;">
        <table class="table nohover" style="text-align: left;font-size:20px;">
            <tr>
                <td style="width: 9%"><b>提案编号</b></td>
                <td>
                    <asp:Label ID="Labelid" runat="server" Text="Label"></asp:Label></td>
                <td style="width: 8%"><b>提案人</b></td>
                <td>
                    <asp:Label ID="Label2" runat="server"  ></asp:Label></td>
                <td style="width: 8%"><b>届次</b></td>
                <td>
                    <asp:Label ID="Labeljie" runat="server" Text="Label"></asp:Label>届<asp:Label ID="Labelci" runat="server" Text="Label"></asp:Label>次</td>
            </tr>

            <tr>
                <td><b>案由</b></td>
                <td colspan="5">
                    <asp:Label ID="Labeltitle" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><b>内容</b></td>
                <td colspan="5">
                    <asp:Label ID="Labelcontext" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><b>附件</b></td>
                <td colspan="5"><a href="/down.aspx?id=<%=innerid %>">下载附件</a></td>
            </tr>
        </table>
    </div>
    <div class="tipa">
        评价提案
    </div>
    <div>
        <table class="table nohover">
            <tr>
                <td><b>是否调研</b></td>
                <td>
                    <asp:DropDownList ID="DropDownListsurvey" runat="server" Style="height: 35px; width: 120px"></asp:DropDownList></td>

                <td><b>是否代表个人</b></td>
                <td>
                    <asp:DropDownList ID="DropDownListpersonal" runat="server" Style="height: 35px; width: 120px"></asp:DropDownList></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 140px;"><b>项目</b></td>
                <td style="width: 230px;"><b>A(15-20分)</b></td>
                <td style="width: 230px;"><b>B(10-14分)</b></td>
                <td style="width: 230px;"><b>C(5-9分)</b></td>
                <td style="width: 230px;"><b>D(0-4分)</b></td>
                <td style="width: 140px;"><b>分数</b></td>
            </tr>
            <tr>
                <td><b>选题</b></td>
                <td>选题围绕经济社会发展中心工作、全面深化改革工作和人民群众关心的热点难点问题紧密</td>
                <td>选题围绕经济社会发展中心工作、全面深化改革工作和人民群众关心的热点难点问题相对较紧密</td>
                <td>选题没有很好地围绕经济社会发展中心工作、全面深化改革工作和人民群众关心的热点难点问题</td>
                <td>选题意义和价值较低</td>
                <td>
                    <asp:DropDownList ID="DropDownLists" runat="server" Style="height: 35px">
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
                        <asp:ListItem>0</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label1" runat="server" Text="分"></asp:Label>
                </td>

            </tr>
            <tr>
                <td><b>代表性</b></td>
                <td>提案从公共利益的角度提出问题</td>
                <td>提案从群体利益的角度提出问题</td>
                <td>提案从个人和小团体的角度提出问题</td>
                <td>提案的代表意义较差</td>
                <td>
                    <asp:DropDownList ID="DropDownListr" runat="server" Style="height: 35px">
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
                        <asp:ListItem>0</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label4" runat="server" Text="分"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><b>知情情况</b></td>
                <td>调研深入，对政策、法规及党政现行工作了解深入</td>
                <td>调研较深入，对政策、法规及党政现行工作了解较深入</td>
                <td>调研一般，对政策、法规及党政现行工作了解一般</td>
                <td>缺乏调研、对政策、法规及党政现行工作不了解</td>
                <td>
                    <asp:DropDownList ID="DropDownListk" runat="server" Style="height: 35px">
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
                        <asp:ListItem>0</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label5" runat="server" Text="分"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><b>提案分析</b></td>
                <td>论述全面系统，问题分析深入。</td>
                <td>论述全面系统，问题分析较深入。</td>
                <td>有相应的论述和问题分析</td>
                <td>缺乏论述和问题分析</td>
                <td>
                    <asp:DropDownList ID="DropDownLista" runat="server" Style="height: 35px">
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
                        <asp:ListItem>0</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label6" runat="server" Text="分"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><b>建议可操作性</b></td>
                <td>意见建议具有较强的建设性和较强的可行性、可操作性</td>
                <td>意见建议可行性、可操作性较强</td>
                <td>意见建议可行性、可操作性一般</td>
                <td>意见建议可行性较低</td>
                <td>
                    <asp:DropDownList ID="DropDownListf" runat="server" Style="height: 35px">
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
                        <asp:ListItem>0</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label7" runat="server" Text="分"></asp:Label>
                </td>
            </tr>

            <tr>
                <td colspan="7"><b>总体意见</b></td>
            </tr>
            <tr>
                <td colspan="7">
                    <div style="margin-top: 10px;"></div>
                    <asp:TextBox ID="TextBoxsuggest" runat="server" TextMode="MultiLine" Width="99%" Height="60px" class="u-ipt"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="7"><b>不足之处</b></td>
            </tr>
            <tr>
                <td colspan="7">
                    <div style="margin-top: 10px;"></div>
                    <asp:TextBox ID="TextBoxshort" runat="server" TextMode="MultiLine" Width="99%" Height="60px" class="u-ipt"></asp:TextBox></td>
            </tr>
        </table>
    </div>
    <div style="margin-top: 3px; text-align: center; height: 60px;">
        <asp:Button ID="Button2" runat="server" CssClass="u-btn u-btn-c2" Text="保存" OnClick="Button2_Click" />
    </div>

</asp:Content>

