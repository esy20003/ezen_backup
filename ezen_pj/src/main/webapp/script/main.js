/* 탑버튼 */

$(function() {
    $('#btn_top').on('click',function() {
		$('html, body').stop().animate({scrollTop:0},600);
	});
});

function contentSearch(){
	
	var key = document.frm.key.value;
	document.frm.action = "ticket.do?command=contentSearch&key=" + key;
	document.frm.submit();
	
}