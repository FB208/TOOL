<script type="text/javascript" language="javascript" runat="server">
    Response.Charset = "gb2312"
    function ShowPage(rs, formname) {
        var pagecount = rs.pagecount
        var pagesize = rs.pagesize
        var recordcount = rs.recordcount
        var firsty = "", lasty = "", firstclick = "", lastclick = "", sclick = "", wclick = ""
        gopage = Getgopage();
        if (gopage > pagecount - 1) {
            gopage = pagecount;
            lasty = " z-dis";
        }
        else {
            wclick = " onclick=\"gotopage('" + pagecount + "')\""
            lastclick = " onclick=\"gotopage('" + (gopage + 1) + "')\""
        }
        if (gopage == 1) {
            firsty = " z-dis"
        }
        else {
            sclick = " onclick=\"gotopage('1')\""
            firstclick = " onclick=\"gotopage('" + (gopage - 1) + "')\""
        }
        Response.Write("<nav class=\"m-page m-page-sr m-page-sm\">\n");
        Response.Write("<i>共&nbsp;<b style=\"color:#39C\">" + pagecount + "</b>&nbsp;页&nbsp;<b style=\"color:#39C\">" + recordcount + "</b>&nbsp;条</i>\n");
        Response.Write('<a class="pageprv' + firsty + '" href="###"' + sclick + '>首页</a>\n');
        Response.Write('<a class="pageprv' + firsty + '" href="###"' + firstclick + '>上一页</a>\n');
        if ((gopage - 4) > 0 && (gopage - 4) < pagecount + 1) {
            Response.Write('<a href="#" onclick="gotopage(\'' + (gopage - 4) + '\')">' + (gopage - 4) + '</a>\n');
        }
        if ((gopage - 3) > 0 && (gopage - 3) < pagecount + 1) {
            Response.Write('<a href="#" onclick="gotopage(\'' + (gopage - 3) + '\')">' + (gopage - 3) + '</a>\n');
        }
        if ((gopage - 2) > 0 && (gopage - 2) < pagecount + 1) {
            Response.Write('<a href="#" onclick="gotopage(\'' + (gopage - 2) + '\')">' + (gopage - 2) + '</a>\n');
        }
        if ((gopage - 1) > 0 && (gopage - 1) < pagecount + 1) {
            Response.Write('<a href="#" onclick="gotopage(\'' + (gopage - 1) + '\')">' + (gopage - 1) + '</a>\n');
        }
        Response.Write('<a href="#" class="z-crt">' + gopage + '</a>\n');
        if ((gopage + 1) > 0 && (gopage + 1) < pagecount + 1) {
            Response.Write('<a href="#" onclick="gotopage(\'' + (gopage + 1) + '\')">' + (gopage + 1) + '</a>\n');
        }
        if ((gopage + 2) > 0 && (gopage + 2) < pagecount + 1) {
            Response.Write('<a href="#" onclick="gotopage(\'' + (gopage + 2) + '\')">' + (gopage + 2) + '</a>\n');
        }
        if ((gopage + 3) > 0 && (gopage + 3) < pagecount + 1) {
            Response.Write('<a href="#" onclick="gotopage(\'' + (gopage + 3) + '\')">' + (gopage + 3) + '</a>\n');
        }
        if ((gopage + 4) > 0 && (gopage + 4) < pagecount + 1) {
            Response.Write('<a href="#" onclick="gotopage(\'' + (gopage + 4) + '\')">' + (gopage + 4) + '</a>\n');
        }

        Response.Write('<a class="pagenxt' + lasty + '" href="###"' + lastclick + '>下一页</a>\n');
        Response.Write('<a class="pagenxt' + lasty + '" href="###"' + wclick + '>尾页</a>\n');
        Response.Write("<input type=\"text\" name=\"go\" style=\"width:22px;height:12px;\" value=\"" + gopage + "\" onkeydown=\"fungopage()\" >\n");
        Response.Write('<a href="###" onclick="goto()">跳转</a>\n');
        Response.Write("</nav>\n");
        Response.Write("<input type=\"hidden\" name=\"gopage\" value=\"" + gopage + "\" >\n");
        Response.Write("<scr" + "ipt type=\"text/javascript\">\n");
        Response.Write(" window.onload=function(){ document.onkeydown=funkeygopage;}\n");
        Response.Write(" function gotopage(gopage) {\n");
        Response.Write(" " + formname + ".gopage.value = gopage;\n");
        Response.Write(" " + formname + ".submit();}\n");
        Response.Write(" function goto() {\n");
        Response.Write("if((" + formname + ".go.value>0)&&(" + formname + ".go.value<=" + pagecount + ")){\n ");
        Response.Write(" " + formname + ".gopage.value = " + formname + ".go.value;\n");
        Response.Write(" " + formname + ".submit();}\n");
        Response.Write(" }\n");
        Response.Write(" function fungopage() {\n ");
        Response.Write("if(event.keyCode == 13){\n ");
        Response.Write("if((" + formname + ".go.value>0)&&(" + formname + ".go.value<=" + pagecount + ")){\n ");
        Response.Write(" " + formname + ".gopage.value = " + formname + ".go.value;\n");
        Response.Write(" " + formname + ".submit();\n }\n }\n");
        Response.Write(" }\n");
        Response.Write(" function funkeygopage() {\n ");
        Response.Write("if((event.keyCode == 37||event.keyCode == 33)&&(" + (gopage - 1) + ">0)){\n ");
        Response.Write("gotopage('" + (gopage - 1) + "');\n");
        Response.Write(" }\n");
        Response.Write("if((event.keyCode == 39||event.keyCode == 34)&&(" + (gopage + 1) + "<=" + pagecount + ")){\n ");
        Response.Write("gotopage('" + (gopage + 1) + "');\n");
        Response.Write(" }\n");
        Response.Write(" }\n ");
        Response.Write("</sc" + "ript>\n");
    }
    function Getgopage() {
        var gopage = GetQueryInt("gopage");
        if (gopage == -1) {
            gopage = GetFormInt("gopage");
        }
        if (gopage == 0) {
            gopage = 1
        }
        return gopage;
    }
</script>
