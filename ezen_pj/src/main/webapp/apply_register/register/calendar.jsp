<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Calendar Example</title>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-timepicker@0.5.2/css/bootstrap-timepicker.min.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap-timepicker@0.5.2/js/bootstrap-timepicker.min.js"></script>
  <script>
    $(function() {
      $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd',
        autoclose: true
      });

      $("#timepicker").timepicker({
        showMeridian: false,
        defaultTime: false
      });

      $("#addDateTimeButton").click(function() {
        var selectedDate = $("#datepicker").val();
        var selectedTime = $("#timepicker").val();

        // 빈 칸이 있는 경우 추가하지 않음
        if (selectedDate.trim() === '' || selectedTime.trim() === '') {
          return;
        }

        var dateTime = selectedDate + " " + selectedTime;
        $("#selected-date-times").append("<li>" + dateTime + "</li>");

        // 선택한 날짜와 시간 입력 필드 초기화
        $("#datepicker").val('');
        $("#timepicker").val('');
      });
    });
  </script>
</head>
<body>
  <h3><b>달력과 시간 선택</b></h3>
  <div class="input-group mb-3">
    <input type="text" id="datepicker" class="form-control" placeholder="날짜 선택">
    <button class="btn btn-outline-secondary" type="button" id="addDateTimeButton">날짜 추가</button>
  </div>
  <div class="input-group mb-3">
    <input type="text" id="timepicker" class="form-control" placeholder="시간 선택">
  </div>
  <h4>선택한 날짜 및 시간:</h4>
  <ul id="selected-date-times"></ul>
</body>
</html>
