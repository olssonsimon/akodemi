// $(window).load(function() {
// 	$('.highlight-link a').each(function() {
// 		// IS this the active link?
// 		if ($(this).attr('href') == $(location).attr('pathname'))
// 		$(this).parent().addClass("active")
// 	})
// })

$(function () {
    setNavigation();
});

function setNavigation() {
    var path = window.location.pathname;
    path = path.replace(/\/$/, "");
    path = decodeURIComponent(path);

    $(".highlight-link a").each(function () {
        var href = $(this).attr('href');
        if (path.substring(0, href.length) === href) {
            $(this).closest('li').addClass('active');
        }
    });
}