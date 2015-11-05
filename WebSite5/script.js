
$( document ).ready(function() {
    $("#redcat").hide();
    $(".cssmenu").mouseenter(function () {
        $("#redcat").show();
    });
    $(".cssmenu").mouseleave(function () {
        $("#redcat").hide();
    });
    });
