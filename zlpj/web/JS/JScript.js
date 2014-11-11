/// <reference path="jquery-1.8.2.min.js" />
var tabs_i = 0;
$(function () {
    //菜单隐藏展开            
    $('.vtitle').click(function () {
        var _self = $(this);
        var j = $('.vtitle').index(_self);
        if (tabs_i == j) return false;
        tabs_i = j;
        $('.vtitle').each(function (e) {
            if (e == tabs_i) {
                $(this).addClass('hid');
            } else {
                $(this).removeClass('hid');
            }
        });
        $('.vcon').slideUp(100).eq(tabs_i).slideDown(100);

    });
    //中间折叠
    $('.hidbutton').click(function () {
        hiddenleft();
    });
    //table渲染
    $(".table tbody tr:even").addClass("even");
    $(".table:not('.nohover') tbody tr").mouseover(function () { $(this).addClass("onmouse"); });
    $(".table:not('.nohover') tbody tr").mouseleave(function () { $(this).removeClass("onmouse"); });
    //隐藏按钮
    if (document.cookie == "hid") {
        //        $('.g-hd').hide();
        //        $(".g-mn").addClass("g-mn-full");
        //        $(".middle").addClass("middle-ful");
        //        $('.hidbutton').addClass("hidbuttonclick");
        //        $('.hidbutton').addClass("hidbuttonclick");
        $(".g-mn").addClass("g-mn-full");
        $(".middle").addClass("middle-full");
        $("html").addClass("html-full");
        $('.btpo').addClass("fright");
        $('.g-hd').hide();
    }
    //按钮渲染
    //$("input[type=submit],button").button();
    $(".table tbody a").addClass("red");
    $(".table thead a").addClass("black");


    //下拉渲染
    //$("select").combobox();
    //全选渲染
    $(".allcheck").click(function () {
        if ($(this).attr("checked")) {
            $("input[type=\"checkbox\"]").attr("checked", "checked");
        } else { $("input[type=\"checkbox\"]").removeAttr("checked"); }
    });
});
function hiddenleft() {
    $('.g-hd').toggle();
    if ($('.g-hd').css("display") != "block") {
        $(".g-mn").addClass("g-mn-full");
        $(".middle").addClass("middle-full");
        $("html").addClass("html-full");
        $('.btpo').addClass("fright");
        document.cookie = "hid";
    } else {
        $(".g-mn").removeClass("g-mn-full");
        $(".middle").removeClass("middle-full");
        $('.btpo').removeClass("fright");
        $("html").removeClass("html-full");
        document.cookie = "show";
    }
}
function listtab(name) {
    $('.vtitle').each(function (e) {
        if ($(this).hasClass(name)) {
            tabs_i = e;
        }
    });
    $('.vcon').slideUp(0).eq(tabs_i).slideDown(0);
    $('.vtitle').eq(tabs_i).addClass('hid');
}