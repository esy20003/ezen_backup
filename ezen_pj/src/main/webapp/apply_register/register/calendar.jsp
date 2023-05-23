<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>캘린더</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }

        h1 {
            color: #333;
        }

        input[type="text"] {
            padding: 5px;
            margin: 10px;
            width: 200px;
        }

        #time-wrapper {
            display: flex;
            justify-content: center;
        }

        select {
            padding: 5px;
            margin: 10px;
            width: 70px;
        }

        #datetime-list {
            list-style-type: none;
            padding: 0;
        }

        #datetime-list li {
            margin-bottom: 10px;
        }

        #datetime-list li.checked {
            background-color: #eee;
        }

        button {
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <h1>캘린더</h1>
    <label for="date">날짜:</label>
    <input type="text" id="date" placeholder="날짜를 선택하세요" readonly>
    <label for="time">시간:</label>
    <div id="time-wrapper">
        <select id="hour-select"></select>
        <span>:</span>
        <select id="minute-select"></select>
    </div>
    <button onclick="addDateTime()">추가</button>
    <form id="register-form" action="registerEnd.jsp" method="post">
        <input type="hidden" id="datetimeList" name="datetimeList" value="">
        <button type="submit">등록</button>
    </form>

    <ul id="datetime-list"></ul>

    <button onclick="deleteChecked()">선택 삭제</button>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(document).ready(function() {
            $("#date").datepicker({
                dateFormat: "yy-mm-dd"
            });

            populateHourSelect();
            populateMinuteSelect();
        });

        function populateHourSelect() {
            var hourSelect = $("#hour-select");
            for (var i = 0; i <= 23; i++) {
                var option = "<option value='" + i + "'>" + (i < 10 ? "0" + i : i) + "</option>";
                hourSelect.append(option);
            }
        }

        function populateMinuteSelect() {
            var minuteSelect = $("#minute-select");
            for (var i = 0; i <= 50; i += 10) {
                var option = "<option value='" + i + "'>" + (i < 10 ? "0" + i : i) + "</option>";
                minuteSelect.append(option);
            }
        }

        function addDateTime() {
            var selectedDate = $("#date").val();
            var selectedHour = $("#hour-select").val();
            var selectedMinute = $("#minute-select").val();

            if (selectedDate !== "" && selectedHour !== "" && selectedMinute !== "") {
                var datetime = selectedDate + " " + selectedHour + ":" + selectedMinute;
                var datetimeItem = "<li>" + datetime + "<input type='checkbox'></li>";
                $("#datetime-list").append(datetimeItem);

                // 입력 필드 초기화
                $("#date").val("");
                $("#hour-select").val("");
                $("#minute-select").val("");

                // 등록할 날짜와 시간을 숨은 입력 필드에 설정
                updateDatetimeList();
            } else {
                alert("날짜와 시간을 입력하세요.");
            }
        }

        function deleteChecked() {
            var checkedItems = $("#datetime-list input[type='checkbox']:checked").closest("li");
            checkedItems.remove();
            updateDatetimeList();
        }

        function updateDatetimeList() {
            var datetimeList = [];
            $("#datetime-list li").each(function() {
                datetimeList.push($(this).text());
            });
            $("#datetimeList").val(datetimeList.join(","));
        }
    </script>
</body>
</html>
