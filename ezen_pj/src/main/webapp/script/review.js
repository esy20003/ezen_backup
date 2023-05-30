//function review_up() {
//	var result = confirm("등록하시겠습니까?");
//	
//	if(result == true) {
//		
//		alert("확인누름");
//		document.formm.action = "ticket.do?command=reviewWrite";
//	} else {
//		alert("취소누름");
//		document.formm.action = "ticket.do?command=reviewList";
//	}
//	
//}
function review_write() {
	var reviewForm = document.formm
	if (reviewForm.title.value == "") {
		alert("제목을 입력해주세요")
		reviewForm.title.focus()
	} else if (reviewForm.content.value == "") {
		alert("내용을 입력해주세요")
		reviewForm.content.focus()
	}  else {
		reviewForm.action = "ticket.do?command=reviewWrite";
		reviewForm.submit();
	}

}


// 수정 버튼 클릭  // 수정 폼으로 이동
function go_upd(rseq) {
	var url = "ticket.do?command=reviewEditForm&rseq=" + rseq
	location.href = url
}




function review_update() {
	if(document.formm.pwd.value == "" ) {
		alert("리뷰 수정 시 비밀번호 입력은 필수입니다.");
		document.formm.pwd.focud();
		//return false;
	}else if(document.formm.title.value == "") {
		alert("제목은 필수 입력 사항입니다.");
		document.formm.title.focus();
		//return false;
	} else if(document.formm.content.value == "") {
		alert("내용은 필수 입력 사항입니다.");
		document.formm.content.focus();
		//return false;
	} else {
		if(confirm("수정 ㄱ?")) {
			document.formm.action ="ticket.do?command=reviewEdit";
			document.formm.submit();
		}
	}
}



//function review_chk_pwd(reviewrseq, popupWinName) {
//	var url = "ticket.do?command=reviewChkForm&rseq=" + reviewrseq;
//	var opt = "toolbar=no, menubar=no, scrollbars=no, resizable=no, width=500, height=300";
//	window.open(url, popupWinName, opt);
//}







