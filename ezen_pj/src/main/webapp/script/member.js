/* 로그인 체크 */

function loginCheck() {
	if (document.loginFrm.id.value == "") {
		alert("아이디는 필수입력사항입니다.");
		document.loginFrm.id.focus();
		return false;
	} else if (document.loginFrm.pwd.value == "") {
		alert("비밀번호는 필수입력사항입니다.");
		document.loginFrm.pwd.focus();
		return false;
	} else {
		return true;
	}
}



/* formForm 이동하기 
	회원가입약관 동의하기 버튼 
 */

function go_next(){

   if( document.contractFrm.okon[1].checked == true ){
      alert('회원 약관에 동의하셔야 회원으로 가입이 가능합니다');
   }else{
      document.contractFrm.action = 'ticket.do?command=joinForm';
      document.contractFrm.submit();
   }
   
}
