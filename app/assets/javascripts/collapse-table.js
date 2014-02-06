$("a.accordion-toggle").click(function() {
    if($("#collapse1").hasClass("out")) {
        $("#collapse1").addClass("well");
        $("#collapse1").removeClass("out");
    } else {
        $("#collapse1").addClass("out");
        $("#collapse1").removeClass("well");
    }
});