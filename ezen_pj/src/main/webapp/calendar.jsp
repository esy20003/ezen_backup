<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>영화 예매처럼 달력 표시하기</title>
    <style>
        .calendar {
            display: grid;
            grid-template-columns: repeat(7, 1fr); /* 7개 열로 설정 */
            max-width: 400px;
            font-family: Arial, sans-serif;
        }

        .calendar .day {
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            border: 1px solid #ddd;
        }

        .calendar .weekday {
            height: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            background-color: #f5f5f5;
            border-bottom: 1px solid #ddd;
        }

        .calendar .selected {
            background-color: #a0cfff;
        }
    </style>
    <script>
        var selectedDateTime = "";
        var selectedDate = "";

        function generateCalendar(year) {
            var calendarContainer = document.getElementById("calendar-container");
            calendarContainer.innerHTML = ""; // 이전 달력 내용 지우기

            var weekdays = ['일', '월', '화', '수', '목', '금', '토']; // 요일 표시를 위한 배열

            for (var month = 0; month < 12; month++) {
                var calendar = document.createElement("div");
                calendar.className = "calendar";

                var currentDate = new Date();
                var currentYear = currentDate.getFullYear();
                var currentMonth = currentDate.getMonth();
                var currentDay = currentDate.getDate();

                // Get the number of days in the month
                var numDays = new Date(year, month + 1, 0).getDate();

                // Get the first day of the month
                var firstDay = new Date(year, month, 1).getDay();

                // Generate the weekdays row
                for (var i = 0; i < 7; i++) {
                    var weekday = document.createElement("div");
                    weekday.className = "weekday";
                    weekday.innerText = weekdays[i];
                    calendar.appendChild(weekday);
                }

                // Generate the calendar
                for (var i = 0; i < firstDay; i++) {
                    var emptyDay = document.createElement("div");
                    emptyDay.className = "day";
                    calendar.appendChild(emptyDay);
                }

                for (var day = 1; day <= numDays; day++) {
                    var calendarDay = document.createElement("div");
                    calendarDay.className = "day";
                    calendarDay.innerText = day;

                    if (year === currentYear && month === currentMonth && day === currentDay) {
                        calendarDay.classList.add("selected");
                        selectDate(day, year, new Date(year, month, day).getDay());
                    }

                    var date = new Date(year, month, day);
                    var weekdayIndex = date.getDay();
                    calendarDay.setAttribute("onclick", "selectDate(" + day + ", " + year + ", " + weekdayIndex + ")");
                    calendar.appendChild(calendarDay);
                }

            calendarContainer.appendChild(calendar);
        }
    }

    function refreshCalendar() {
        var year = new Date().getFullYear();
        generateCalendar(year);
    }

    function previousYear() {
        var year = new Date().getFullYear() - 1;
        generateCalendar(year);
    }

    function nextYear() {
        var year = new Date().getFullYear() + 1;
        generateCalendar(year);
    }

    function selectDate(day, year, weekdayIndex) {
        selectedDate = day;
        document.getElementById("selected-date").innerText = selectedDate;

        var weekdays = ['일', '월', '화', '수', '목', '금', '토'];
        var weekday = weekdays[weekdayIndex];

        document.getElementById("selected-year").innerText = year;
        document.getElementById("selected-weekday").innerText = weekday;
    }

    function selectTime(time) {
        selectedDateTime = selectedDate + "일 " + time;
        document.getElementById("selected-date-time").innerText = selectedDateTime;
    }
</script>
</head>
<body onload="refreshCalendar()">
<h1>영화 예매처럼 달력 표시하기</h1>

<div id="calendar-container"></div>

<button onclick="previousYear()">이전 연도</button>
<button onclick="nextYear()">다음 연도</button>

<h2>선택한 날짜: <span id="selected-date"></span></h2>
<h2>선택한 년도: <span id="selected-year"></span></h2>
<h2>선택한 요일: <span id="selected-weekday"></span></h2>

<h2>선택한 날짜와 시간: <span id="selected-date-time"></span></h2>

<h3>시간 선택</h3>
<button onclick="selectTime('10:00')">10:00</button>
<button onclick="selectTime('13:00')">13:00</button>
<button onclick="selectTime('16:00')">16:00</button>
<button onclick="selectTime('19:00')">19:00</button>
</body>
</html>
                