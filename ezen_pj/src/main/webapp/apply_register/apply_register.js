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
 
 

   function register() {
    // 선택된 날짜와 시간을 가져옵니다.
    var selectedDateTime = $("#selected-date-times li").text();
    // 빈 칸인 경우 등록하지 않음
    if (selectedDateTime.trim() === '') {
      alert("날짜와 시간을 선택하세요.");
      return;
    }
    // registerAction 호출 및 저장 로직 추가
    $.ajax({
      url: "registerAction",
      method: "POST",
      data: { dateTime: selectedDateTime },
      success: function(response) {
        // 등록 완료 후 registerEnd.jsp로 이동
        window.location.href = "registerEnd.jsp";
      },
      error: function() {
        alert("등록 중 오류가 발생했습니다.");
      }
    });
  }

  function resetDateTime() {
    // 선택한 날짜와 시간 리셋
    $("#selected-date-times").empty();
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
 


 
 
 
 
 