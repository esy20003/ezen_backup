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
		 case '0': location.href="ticket.do?command=categorySelect&category=0"; break;
		 case '1': location.href="ticket.do?command=categorySelect&category=1"; break;
		 case '2': location.href="ticket.do?command=categorySelect&category=2"; break;
		 case '3': location.href="ticket.do?command=categorySelect&category=3"; break;
		 case '4': location.href="ticket.do?command=categorySelect&category=4"; break;
		 case '5': location.href="ticket.do?command=categorySelect&category=5"; break;
	 }
 }
 
function submitDateTime() {
    var selectedDate = $("#datepicker").val();
    var selectedTime = $("#timepicker").val();

    // 빈 칸이 있는 경우 등록하지 않음
    if (selectedDate.trim() === '' || selectedTime.trim() === '') {
      return;
    }

    var dateTime = selectedDate + " " + selectedTime;
    $("#selectedDateTime").val(dateTime);

    // 선택한 날짜와 시간을 서버로 전송
    document.getElementById("registerForm").submit();
  }

  function resetDateTime() {
    // 선택한 날짜와 시간 입력 필드 초기화
    $("#datepicker").val('');
    $("#timepicker").val('');
  }

 
 
 
 
 