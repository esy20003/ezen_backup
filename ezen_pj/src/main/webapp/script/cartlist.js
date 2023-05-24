/* 카트 리스트 주문하기 버튼 */
function go_order_insert(){
	var a = confirm("정말로 주문하시겠습니까?");
	if(a){
		location.href='ticket.do?command=index';
		/*커맨들 설정하기*/
	}
}