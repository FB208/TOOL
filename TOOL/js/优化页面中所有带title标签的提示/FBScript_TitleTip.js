$(function () {
    $hasTitle = $("[title]");
    var offsetX = 10;
    var offsetY = 20;
    $hasTitle.mouseover(function (e) {
        this.myTitle = this.title;
        this.title = "";
        var tip = "<div id='tooltip'>" + this.myTitle + "</div>";
        $("body").append(tip);
        $("#tooltip").css(
            {
                "position": "absolute",
                "font-size": "10px",
                "background-color": "#e9e8a7",
                "border": "solid",
                "border-width": "1px",
                "top": (e.pageY + offsetY) + "px",
                "left": (e.pageX + offsetX) + "px"
            });

    }).mouseout(function () {
        this.title = this.myTitle;
        $("#tooltip").remove();
    }).mousemove(function (e) {
        //alert(e.pageX);
        $("#tooltip").css({
            "top": (e.pageY + offsetY) + "px",
            "left": (e.pageX + offsetX) + "px"
        });
    });
});