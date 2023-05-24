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
 
function submitForm() {
    // 선택한 날짜와 시간을 가져옵니다.
    var datetimeList = [];
    $("#datetime-list li").each(function() {
        datetimeList.push($(this).text());
    });

    // 숨은 입력 필드에 선택한 날짜와 시간 값을 설정합니다.
    $("#datetimeList").val(datetimeList.join(","));

    // registerEnd.jsp로 폼을 제출합니다.
    document.getElementById("register-form").submit();
}

 
 
 
 
 