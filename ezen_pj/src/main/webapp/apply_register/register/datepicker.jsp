<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>

<script type="text/javascript">
$(function() {
    $(".datetimepicker").datetimepicker({ 
        format: "Y-m-d H:i",
    });

    $("#addButton").click(function() {
        var startDt = $("input[name='start_dt']").val();
        var endDt = $("input[name='end_dt']").val();
        
        if (startDt.trim() === '' || endDt.trim() === '') {
            alert("시작일시와 종료일시를 입력해주세요.");
            return;
        }
        
        // 선택한 날짜와 시간을 출력하는 부분입니다.
        $("#output").append("<p>시작일시: " + startDt + ", 종료일시: " + endDt + "</p>");
        
        // 필요한 작업을 수행할 수 있습니다.
        // 예를 들면, 저장된 데이터를 서버에 전송하거나 다른 처리를 수행하는 등의 작업입니다.
    });
});
</script>

<h1>datetimepicker</h1>
시작일시 : <input type='text' class='datetimepicker' name='start_dt'  style='width:140px;'>, 
종료일시 : <input type='text' class='datetimepicker' name='end_dt'   style='width:140px; padding-left:10px;'>
<br>
<button id="addButton">추가</button>

<div id="output"></div>
</body>
</html>
