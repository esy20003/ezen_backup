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

   if( document.contractFrm.check_on1.checked == false ){
      alert('회원 약관에 동의하셔야 회원으로 가입이 가능합니다');
   }else if(document.contractFrm.check_on2.checked == false) {
	   alert('개인정보처리방침 약관에 동의하셔야 회원으로 가입이 가능합니다');
   } else {
	  document.contractFrm.action = 'ticket.do?command=joinForm';
      document.contractFrm.submit(); 
   }
}

/* id 중복체크  */
function checkid(){	
if(document.joinForm.id.value==""){		
	alert("아이디를 입력하고 중복체크를 진행하시오");
	document.joinForm.id.focus();
	return;
}
var url = "ticket.do?command=idCheckForm&id=" + document.joinForm.id.value;
var opt = "toolbar=no, menubar=no, resizable=no, width=600, height=400,scrollbars=no";
window.open(url,"checkid",opt);
}


/* 아이디 사용하기 버튼 클릭 */
function idok(userid){
    opener.joinForm.id.value = userid;
    opener.joinForm.reid.value = userid;
    self.close();
}

/* 주소찾기  */
function post_zip(){	
	   	var url = "ticket.do?command=findZipNum";
	    var opt = "toolbar=no, menubar=no, resizable=no, width=600, ,scrollbars=no";
	    opt = opt + " height=300,top=300,left=300";
	    window.open(url,"findZipNum",opt);
}

/* 검색값을 주소에 입력 */
function result(zip_num,sido,gugun,dong){	
		// 함수 호출 형태 - result('123-123','서울시', '서대문구', '대현동' , '~~번지' )
	    opener.document.joinForm.zip_num.value = zip_num;
	    opener.document.joinForm.address1.value = sido+" " +gugun+" "+dong;
	    self.close();
	}




/* 회원정보 저장 */
function join_insert(){ 
   if( document.joinForm.id.value == "" ){
      alert("아이디를 입력하여 주세요.");
      document.joinForm.id.focus();     
     }else if(document.joinForm.reid.value != document.joinForm.id.value){	
	   alert("아이디 중복확인을 하지 않았습니다.");
       document.joinForm.id.focus();	 
     }else if(document.joinForm.pwd.value == ""){	
	   alert("비밀번호를 입력해 주세요.");
      document.joinForm.pwd.focus();	      
      }else if(document.joinForm.pwdCheck.value != document.joinForm.pwdCheck.value){	
	   alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
      document.joinForm.pwdCheck.focus();	      
        }else if(document.joinForm.name.value ==""){	
	   alert("이름을 입력해 주세요.");
      document.joinForm.name.focus();	      
        }else if(document.joinForm.phone.value == ""){	
	     alert("전화번호를 입력해주세요.");
        document.joinForm.phone.focus();	                	   
      }else{
	     document.joinForm.action = "shop.do";
         document.joinForm.submit();
   }
}






