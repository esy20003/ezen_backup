$(function() {

    $('#btn_top').on('click',function() {
		$('html, body').stop().animate({scrollTop:0},600);
	});
});