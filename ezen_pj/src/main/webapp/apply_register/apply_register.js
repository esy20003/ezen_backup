/**
 * 
 */
 
 /* apply_Or_Register.jsp의 js*/
 function go_apply(){
	 
	sessionStorage.removeItem('selectedCseq');
	sessionStorage.removeItem('selectedDate');
	sessionStorage.removeItem('selectedTime');
	sessionStorage.removeItem('selectedArea');
	sessionStorage.removeItem('selectedQuantity');
	sessionStorage.removeItem('selectedCom');
	document.frm.action='ticket.do?command=categorySelect&category=0';
	document.frm.submit();
 }
 
 function go_register(){
	 document.frm.action='ticket.do?command=registerForm';
	 document.frm.submit();

 }
 
 
 /* 여기부턴 applyForm.jsp의 js*/
 
 function select_category(category){
	 switch(category){
		 case 0: location.href="ticket.do?command=categorySelect&category=0";
		sessionStorage.removeItem('selectedCseq');
		 sessionStorage.removeItem('selectedDate');
		 sessionStorage.removeItem('selectedTime');
		 sessionStorage.removeItem('selectedArea');
		 sessionStorage.removeItem('selectedQuantity');
		  break;
		 case 1: location.href="ticket.do?command=categorySelect&category=1";
	sessionStorage.removeItem('selectedCseq');
		 sessionStorage.removeItem('selectedDate');
		 sessionStorage.removeItem('selectedTime');
		 sessionStorage.removeItem('selectedArea');
		 sessionStorage.removeItem('selectedQuantity');
		  break;
		 case 2: location.href="ticket.do?command=categorySelect&category=2"; 
	sessionStorage.removeItem('selectedCseq');
		 sessionStorage.removeItem('selectedDate');
		 sessionStorage.removeItem('selectedTime');
		 sessionStorage.removeItem('selectedArea');
		 sessionStorage.removeItem('selectedQuantity');
		 break;
		 case 3: location.href="ticket.do?command=categorySelect&category=3"; 
	sessionStorage.removeItem('selectedCseq');
		 sessionStorage.removeItem('selectedDate');
		 sessionStorage.removeItem('selectedTime');
		 sessionStorage.removeItem('selectedArea');
		 sessionStorage.removeItem('selectedQuantity');
		 break;
		 case 4: location.href="ticket.do?command=categorySelect&category=4"; 
	sessionStorage.removeItem('selectedCseq');
		 sessionStorage.removeItem('selectedDate');
		 sessionStorage.removeItem('selectedTime');
		 sessionStorage.removeItem('selectedArea');
		 sessionStorage.removeItem('selectedQuantity');
		 break;
		 case 5: location.href="ticket.do?command=categorySelect&category=5"; 
	sessionStorage.removeItem('selectedCseq');
		 sessionStorage.removeItem('selectedDate');
		 sessionStorage.removeItem('selectedTime');
		 sessionStorage.removeItem('selectedArea');
		 sessionStorage.removeItem('selectedQuantity');
		 break;
	 }
 }


function saveCseq(num){
	
	sessionStorage.setItem('selectedCseq',document.getElementById('cseq'+num).value);
	
}
function saveDate(num){
	
	sessionStorage.setItem('selectedDate',document.getElementById('date'+num).value);
}
function saveTime(num){
	sessionStorage.setItem('selectedTime',document.getElementById('time'+num).value);
    /*document.getElementById('time'+num).style.backgroundColor = 'red';*/
   
}

function saveArea(num){
	sessionStorage.setItem('selectedArea',document.getElementById('area'+num).value);
}
function saveQuantity() {
	sessionStorage.setItem('selectedQuantity',document.getElementById('quantity').value);
}

function applyFormCheck(){
	var cseq=sessionStorage.getItem('selectedCseq');
	var date=sessionStorage.getItem('selectedDate');
	var time=sessionStorage.getItem('selectedTime');
	var area=sessionStorage.getItem('selectedArea');
	var quantity=sessionStorage.getItem('selectedQuantity');
	if(cseq==null){
		alert("공연을 선택해 주세요.");
		return false;
	}else if(date==null){
		alert("공연 날짜를 선택해 주세요.");
		return false;
	}else if(time==null){
		alert("공연 시간을 선택해 주세요.");
		return false;
	}else if(area==null){
		alert("공연 구역을 선택해 주세요.");
		return false;
	}else if(quantity==null){
		alert("티켓 수량을 선택해 주세요.");
		return false;
	}else{
		document.frm.action='ticket.do?command=applySelectCommissioner&cseq='+cseq+'&date='+date+'&time='+time+'&area='+area+'&quantity='+quantity;
		document.frm.submit();
		
	}	
}

function goMain(){
	document.frm.action='ticket.do?command=index';
	document.frm.submit();
}


function insertCart(){
	var cseq=sessionStorage.getItem('selectedCseq');
	var date=sessionStorage.getItem('selectedDate');
	var time=sessionStorage.getItem('selectedTime');
	var area=sessionStorage.getItem('selectedArea');
	var quantity=sessionStorage.getItem('selectedQuantity');

	if(cseq==null){
		alert("공연을 선택해 주세요.");
		return false;
	}else if(date==null){
		alert("공연 날짜를 선택해 주세요.");
		return false;
	}else if(time==null){
		alert("공연 시간을 선택해 주세요.");
		return false;
	}else if(area==null){
		alert("공연 구역을 선택해 주세요.");
		return false;
	}else if(quantity==null){
		alert("티켓 수량을 선택해 주세요.");
		return false;
	}else{
	var url = 'ticket.do?command=applyCart&cseq='+cseq+'&date='+date+'&time='+time+'&area='+area+'&quantity='+quantity;
	if(sessionStorage.getItem('selectedCom')!=null){
	var mseq2=sessionStorage.getItem('selectedCom');
	url='ticket.do?command=applyCart&cseq='+cseq+'&date='+date+'&time='+time+'&area='+area+'&quantity='+quantity+'&mseq2'+mseq2;
	var opt = "toolbar=no, menubar=no, resizable=no, width=600, height=250, scrollbars=no";
	window.open(url, "InsertCart", opt);
	}}	
}
}

}

function saveCommissioner(num){
	
	sessionStorage.removeItem('selectedCom');
	sessionStorage.setItem('selectedCom',document.getElementById('Com'+num).value);

	localStorage.removeItem('');
	localStorage.setItem('com_price',document.getElementById('com_price'+num).value);
}

function refresh(){
	sessionStorage.removeItem('selectedCom');
}

function apply(){
	var com=sessionStorage.getItem('selectedCom');
	if(com==null){
		alert("대리인을 선택해 주세요.");
		return false;
	}else{
		return true;
	}
}

/*function gotime(){
	 var date = registerForm.date.value;
	 var starttime = registerForm.starttime.value;
	 var endtime = registerForm.endtime.value;
    document.registerForm.action="ticket.do?command=registerTimeForm&date="+ date + "&starttime=" + starttime + "&endtime="
    + endtime;
 }*/
 
 