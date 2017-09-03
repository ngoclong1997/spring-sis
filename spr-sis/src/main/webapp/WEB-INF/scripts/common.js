;
(function($) {
	$(function() {
		$('#quickReg').click(function(e) {
			e.preventDefault();
			$('#element_to_pop_up').bPopup({
				modalClose : false,
				opacity : 0.6,
				positionStyle : 'fixed'
			});

		});
	});

})(jQuery);