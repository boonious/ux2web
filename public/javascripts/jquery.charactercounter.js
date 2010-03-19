// Providing Twitter like character counting service

(function($){
	
	$.fn.charactercounter = function (options) {
		var options = $.extend({counter_id: '#character_counter', maximum: 140, input_id: '#shared_object_content'}, options);
		var $this = $(this);
		var $counter = $this.find(options.counter_id);
		var $text_input = $this.find(options.input_id);
		var $submit_button = $this.find(":submit");
		var $twitter_checkbox = $this.find(":checkbox");
		
		$twitter_checkbox.click(function() { 
			current_text = $.trim($text_input.val().replace(/@ux2/ig, "").replace(/#inf11/ig, ""));
			this.checked ? $text_input.text("@ux2 "+ current_text + " #inf11") : $text_input.text(current_text);
			this.checked ? $counter.css("visibility", "visible") : $counter.css("visibility", "hidden");
		});
					
		var setCounter = function() {
			var count = options.maximum - $text_input.val().length
			$counter.text(count);
			// (count < 0 && $twitter_checkbox.checked) ? $submit_button.attr('disabled', true) : $submit_button.attr('disabled', false); 
		};
		
		setCounter();
		$text_input.keyup(setCounter);		
	}
	
})(jQuery);