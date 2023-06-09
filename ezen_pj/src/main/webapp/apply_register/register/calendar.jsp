<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_달력</title>

<style type="text/css">
    td { font-weight:bold; font-size:110%; }
    tr>td:first-child { color:red; }
    tr>td:last-child { color:blue; }
    a { text-decoration:none; }
</style>
</head>
<body>
<%
    java.util.Calendar sDay = java.util.Calendar.getInstance();  // 출력될 달력의 1일자를 저장할 객체
    Calendar eDay = Calendar.getInstance();   // 출력될 달력의 말일자가 저장될 객체

    int sYear = sDay.get(Calendar.YEAR);
    int sMonth = sDay.get(Calendar.MONTH);

    if (request.getParameter("sYear") != null) {
        sYear = Integer.parseInt(request.getParameter("sYear"));
    }
    if (request.getParameter("sMonth") != null) {
        sMonth = Integer.parseInt(request.getParameter("sMonth"));
        if (sMonth == 12) {
            sMonth = 0;
            sYear++;
        }
        if (sMonth == -1) {
            sMonth = 11;
            sYear--;
        }
    }

    sDay.set(sYear, sMonth, 1);
    int lastDay = sDay.getActualMaximum(Calendar.DATE);
    eDay.set(sYear, sMonth, lastDay);
    int START_WEEK = sDay.get(Calendar.DAY_OF_WEEK);
%>

<!-- jsp 문법을 이용해서  토요일부터 시작하는 4월 달력을 표시해주세요 -->
<table width="560" align="left" cellspacing="1" bgcolor="black">
    <tr bgcolor="white" height="50">
        <td colspan="7" align="center">
            <h2>
            <a href="ticket.do?command=prevMonth&sYear=<%=sYear%>&sMonth=<%=sMonth-1%>">이전달</a>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <%=sYear%>년 <%=(sMonth+1)%>월
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="ticket.do?command=nextMonth&sYear=<%=sYear%>&sMonth=<%=sMonth+1%>">다음달</a></h2>
        </td>
    </tr>
    <tr bgcolor="white" height="50"><!-- 맨윗줄 요일이 표시되는 tr -->
        <td align="center" width="80">일</td><td align="center" width="80">월</td>
        <td align="center" width="80">화</td><td align="center" width="80">수</td>
        <td align="center" width="80">목</td><td align="center" width="80">금</td>
        <td align="center" width="80">토</td>
    </tr>
    <tr bgcolor="white" height="50"><!-- 날짜가 표시되는 tr -->
        <%
            int i;
            for (i = 1; i < START_WEEK; i++) {
                out.print("<td>&nbsp;</td>");
            }// 1일자 전 빈칸들 (2023년 4월 1일은 토요일 -> 여섯칸 빈칸)

            for (int d = 1; d <= lastDay; d++) { // 1일부터 30일까지 한칸(td테그)씩 표시
                // 날짜를 클릭했을 때 선택한 날짜의 년도, 월, 일을 JavaScript 함수를 호출하여 출력
                out.print("<td><a href='javascript:void(0);' onclick='showSelectedDate(" + sYear + ", " + (sMonth + 1) + ", " + d + ")'>" + d + "</a></td>");

                if (i++ % 7 == 0) { // 7의 배수만큼 열이 채워지는 순간 줄바꿈 -> tr끝 - tr시작
                    out.print("</tr><tr bgcolor=\"white\" height=\"50\">");
                }
            }

            if (i % 7 != 0) {
                for (int k = 1; k <= (8 - (i % 7)); k++) { // 마지막 말일 표시후 남는 칸에 빈칸으로 
                    out.print("<td>&nbsp;</td>");
                }
            } else {
                out.print("<td>&nbsp;</td>");
            }
        %>
    </tr>
</table>

<!-- 선택된 날짜의 년도, 월, 일 출력 -->
<div id="selectedDateInfo" style="margin-left: 20px;">
    <h3>선택된 날짜</h3>
    <p id="selectedYear"></p>
    <p id="selectedMonthDay"></p>
</div>

<!-- 시간 선택 -->
<div id="selectedTime" style="margin-left: 20px;">
    <h3>시간 선택</h3>
    <label for="startTime">시작 시간:</label>
    <select id="startTime">
        <% for (int hour = 0; hour <= 23; hour++) {
            for (int minute = 0; minute <= 55; minute += 5) {
                String formattedHour = String.format("%02d", hour);
                String formattedMinute = String.format("%02d", minute);
                out.print("<option value='" + formattedHour + ":" + formattedMinute + "'>" + formattedHour + ":" + formattedMinute + "</option>");
            }
        }
        %>
    </select>
    <br>
    <label for="endTime">종료 시간:</label>
    <select id="endTime">
        <% for (int hour = 0; hour <= 23; hour++) {
            for (int minute = 0; minute <= 55; minute += 5) {
                String formattedHour = String.format("%02d", hour);
                String formattedMinute = String.format("%02d", minute);
                out.print("<option value='" + formattedHour + ":" + formattedMinute + "'>" + formattedHour + ":" + formattedMinute + "</option>");
            }
        }
        %>
    </select>
</div>

<!-- 저장 버튼 -->
<button onclick="registerDateTime()">저장</button>

<!-- 선택된 날짜와 시간 출력 및 저장 -->
<div id="selectedDateTime" style="margin-left: 20px;">
    <h3>선택된 날짜와 시간</h3>
    <p id="selectedDate"></p>
    <p id="selectedTimeSlot"></p>
    <p id="registrationResult"></p>
</div>

<!-- JavaScript 함수 -->
<script type="text/javascript">
    function showSelectedDate(year, month, day) {
        var selectedYear = document.getElementById("selectedYear");
        var selectedMonthDay = document.getElementById("selectedMonthDay");
        selectedYear.innerHTML = "년도: " + year;
        selectedMonthDay.innerHTML = "날짜: " + month + "월 " + day + "일";
    }

    function registerDateTime() {
        var selectedDate = document.getElementById("selectedDate");
        var selectedTimeSlot = document.getElementById("selectedTimeSlot");
        var registrationResult = document.getElementById("registrationResult");

        var year = document.getElementById("selectedYear").textContent.split(": ")[1];
        var monthDay = document.getElementById("selectedMonthDay").textContent.split(": ")[1];
        var startTime = document.getElementById("startTime").value;
        var endTime = document.getElementById("endTime").value;

        selectedDate.innerHTML = "날짜: " + year + " " + monthDay;
        selectedTimeSlot.innerHTML = "시간: " + startTime + " - " + endTime;

        registrationResult.innerHTML = "저장되었습니다.";
    }
</script>

</body>
</html>
