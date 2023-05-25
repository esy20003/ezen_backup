/**
 * 
 */
 
 function go_apply(){

	 document.frm.action='ticket.do?command=categorySelect&category=0';
	 document.frm.submit();
 }
 
 function go_register(){
	 document.frm.action='ticket.do?command=registerForm';
	 document.frm.submit();

 }
 
 
 function select_category(category){
	 switch(category){
		 case 0: location.href="ticket.do?command=categorySelect&category=0"; break;
		 case 1: location.href="ticket.do?command=categorySelect&category=1"; break;
		 case 2: location.href="ticket.do?command=categorySelect&category=2"; break;
		 case 3: location.href="ticket.do?command=categorySelect&category=3"; break;
		 case 4: location.href="ticket.do?command=categorySelect&category=4"; break;
		 case 5: location.href="ticket.do?command=categorySelect&category=5"; break;
	 }
 }


function applyFormCheck(){
	
	if(document.getElementById('cseq').value==""){
		alert("공연을 선택해 주세요.");
		return false;
	}else if(document.date.value==""){
		alert("공연 날짜를 선택해 주세요.");
		return false;
	}else if(document.getElementById('time').value==""){
		alert("공연 시간을 선택해 주세요.");
		return false;
	}else if(document.getElementById('area').value==""){
		alert("공연 구역을 선택해 주세요.");
		return false;
	}else{
		return true;	
	}	
}
 
 function datecheck() {
	alert(document.getElementById('cseq').value);
	alert(document.getElementById('date1').value);
}
 
 