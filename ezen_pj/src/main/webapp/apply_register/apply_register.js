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
		 case 0: location.href="ticket.do?command=categorySelect&category=0";
		 sessionStorage.removeItem('selectedDate');
		 sessionStorage.removeItem('selectedTime');
		 sessionStorage.removeItem('selectedArea');
		  break;
		 case 1: location.href="ticket.do?command=categorySelect&category=1";
		 sessionStorage.removeItem('selectedDate');
		 sessionStorage.removeItem('selectedTime');
		 sessionStorage.removeItem('selectedArea');
		  break;
		 case 2: location.href="ticket.do?command=categorySelect&category=2"; 
		 sessionStorage.removeItem('selectedDate');
		 sessionStorage.removeItem('selectedTime');
		 sessionStorage.removeItem('selectedArea');
		 break;
		 case 3: location.href="ticket.do?command=categorySelect&category=3"; 
		 sessionStorage.removeItem('selectedDate');
		 sessionStorage.removeItem('selectedTime');
		 sessionStorage.removeItem('selectedArea');
		 break;
		 case 4: location.href="ticket.do?command=categorySelect&category=4"; 
		 sessionStorage.removeItem('selectedDate');
		 sessionStorage.removeItem('selectedTime');
		 sessionStorage.removeItem('selectedArea');
		 break;
		 case 5: location.href="ticket.do?command=categorySelect&category=5"; 
		 sessionStorage.removeItem('selectedDate');
		 sessionStorage.removeItem('selectedTime');
		 sessionStorage.removeItem('selectedArea');
		 break;
	 }
 }


function applyFormCheck(){
	var date=sessionStorage.getItem('selectedDate');
	var time=sessionStorage.getItem('selectedTime');
	var area=sessionStorage.getItem('selectedArea');
	if(document.getElementById('cseq').value==""){
		alert("공연을 선택해 주세요.");
		return false;
	}else if(sessionStorage.getItem('selectedDate')==null){
		alert("공연 날짜를 선택해 주세요.");
		return false;
	}else if(sessionStorage.getItem('selectedTime')==null){
		alert("공연 시간을 선택해 주세요.");
		return false;
	}else if(sessionStorage.getItem('selectedArea')==null){
		alert("공연 구역을 선택해 주세요.");
		return false;
	}else{
		return true;	
	}	
}

function saveDate(num){
	
	sessionStorage.setItem('selectedDate',document.getElementById('date'+num).value);
}
function saveTime(num){
	sessionStorage.setItem('selectedTime',document.getElementById('time'+num).value);
}
function saveArea(num){
	sessionStorage.setItem('selectedArea',document.getElementById('area'+num).value);
}
 
 
 