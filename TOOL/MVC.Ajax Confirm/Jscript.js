$(function () {
    if ($.browser.msie && parseInt($.browser.version) == 6) {
        $(".m-layer,.lymask").height($(window).height());
    }
    $(".dclose").click(function () {
        $(".m-layer").hide();
    });
})
function FBConfirm(t, c, o, funY, funN) {
    if (t == "") t = "ÌבÊ¾";
    $(".LayoutConfirm .u-tt").html(t);
    $(".LayoutConfirm .lyct").html(c);
    $(".LayoutConfirm .lyother").html(o);
    $(".ConfirmYes").attr("onclick", funY);
    $(".ConfirmNo").attr("onclick", funN);
    $(".LayoutConfirm").show();
}