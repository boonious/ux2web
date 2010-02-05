// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

document.createElement('header');
document.createElement('footer');
document.createElement('section');
document.createElement('nav');
document.createElement('article');
document.createElement('address');
	
$(document).ready(function(){
	decorateHeader();
	//	decorateBlogs(800, 2000);
	if($("#comment_input_form").length > 0) { $('#comment_input_form').charactercounter(); }	
	/*$('#brightBackground').click(function() {
		$('#page').css({backgroundColor: 'white'});
	});*/
 });
 
function decorateHeader() {
 	var $headerTitle1 = $('h1.headerTitle1');
	var $headerTitle2 = $('h1.headerTitle2');
	$headerTitle1.before('<img class="logo" src="/images/projectLogoGreen.png" />'); 
	$headerTitle2.after('<a href="http://www.jisc.ac.uk/"><img class="jisclogo" src="/images/JISCcolour15.png" /></a>');	
	$headerTitle1.css({marginTop: '48px'});
	$headerTitle2.css({marginLeft: '268px', marginTop: '3px'});
 }

function decorateBlogs(maxChars, columnMaxChars){
 	$('article').each(function () {
		$numWords = $(this).text().length;
		$content = $(this).find('section')
		if($numWords > maxChars) {
			if ($numWords > columnMaxChars) {
			//	$(this).find('header').nextAll().wrapAll('<section></section>');
				$content.addClass('columns');
			}
			if($(this).attr("id")!='blog') {
				$content.truncate({max_length: maxChars, more: 'More..', less: 'Less'});
			}
		}
	});
 }