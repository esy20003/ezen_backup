/* 카트 리스트 삭제하기 버튼 */

function go_cart_delete(){
	var count = 0;
	if(document.frm.cartseq.length == undefined){
		// 체크박스가 한 개인 경우
		if(document.frm.cartseq.checked == true)
			count++;
	}else{
		// 체크박스가 두 개이상인 경우 반복실행문을 이용하여 모든 체크박스를 하나씩 점검하여 체크된 갯수를 count합니다.
		for(var i=0; i < document.frm.cartseq.length; i++){
			if(document.frm.cartseq[i].checked == true)
				count++;
		}
	}
	
	if(count == 0){
		alert('삭제할 항목을 선택하세요');
	}else{
		document.frm.action = "ticket.do?command=cartDelete";
		document.frm.submit();
		// jsp 파일에 있는 체크된  checkbox 들의 value들(cseq 값들)이 배열로 전송됩니다.
	}
	
}

/* 카트 리스트 주문하기 버튼 */

function go_cart_order(){
	var count = 0;
	if(document.frm.cartseq.length == undefined){
		// 체크박스가 한 개인 경우
		if(document.frm.cartseq.checked == true)
			count++;
	}else{
		// 체크박스가 두 개이상인 경우 반복실행문을 이용하여 모든 체크박스를 하나씩 점검하여 체크된 갯수를 count합니다.
		for(var i=0; i < document.frm.cartseq.length; i++){
			if(document.frm.cartseq[i].checked == true)
				count++;
		}
	}
	
	if(count == 0){
		alert('주문할 항목을 선택하세요');
	}else{
		document.frm.action = "ticket.do?command=cartDetail";
		document.frm.submit();
		// jsp 파일에 있는 체크된  checkbox 들의 value들(cseq 값들)이 배열로 전송됩니다.
	}
	
}

/* 카트리스트 수정하기 버튼*/

function go_cart_update(){
	var count = 0;
	if(document.frm.cartseq.length == undefined){
		if(document.frm.cartseq.checked == true)
			count++;
	}else{
		for(var i=0; i < document.frm.cartseq.length; i++){
			if(document.frm.cartseq[i].checked == true)
				count++;
		}
	}
	
	if(count == 0){
		alert('수정할 항목을 선택하세요');
	}else if(count >= 2){
		alert('수정할 항목은 하나만 선택이 가능합니다');
	}else{
		document.frm.action = "ticket.do?command=cartUpdate";
		document.frm.submit();
	}
}