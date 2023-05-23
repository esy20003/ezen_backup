/**
 * 
 */
 
 function go_apply(){
	 document.bodyChoose.applyButton.action='ticket.do?command=applyForm';
	 document.bodyChoose.applyButton.submit();
 }
 
 function go_register(){
	 document.bodyChoose.registerButton.action = 'ticket.do?command=registerForm';
	 document.bodyChoose.registerButton.submit();
 }