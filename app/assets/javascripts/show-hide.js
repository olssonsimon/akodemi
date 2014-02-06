$("a.accordion-toggle").click(function() {
	if($("a.accordion-toggle").text() == 'Visa mer') {
		$("a.accordion-toggle").text("Dölj");
	} else {
		$("a.accordion-toggle").text("Visa mer");
	}
});