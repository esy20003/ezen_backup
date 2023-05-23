/**
 * 
 */
 
 function go_apply(){

	 document.frm.action='ticket.do?command=applyForm';
	 document.frm.submit();
 }
 
 function go_register(){
	 document.frm.action='ticket.do?command=registerForm';
	 document.frm.submit();

 }
 
 
 function select_category(category){
	 switch(category){
		 case '0': location.href="ticket.do?command=categorySelect&category=1"; break;
		 case '1': location.href="ticket.do?command=categorySelect&category=1"; break;
		 case '2': location.href="ticket.do?command=categorySelect&category=1"; break;
		 case '3': location.href="ticket.do?command=categorySelect&category=1"; break;
		 case '4': location.href="ticket.do?command=categorySelect&category=1"; break;
		 case '5': location.href="ticket.do?command=categorySelect&category=1"; break;
	 }
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 