<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calendar</title>
    <style>
        table {
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
        }

        th {
            background-color: lightgray;
        }
    </style>
</head>
<body>
    <h1>Calendar</h1>

    <%-- 현재 날짜와 시간 가져오기 --%>
    <%@ page import="java.util.*" %>
    <% Calendar cal = Calendar.getInstance();
       int year = cal.get(Calendar.YEAR);
       int month = cal.get(Calendar.MONTH) + 1;
       int day = cal.get(Calendar.DAY_OF_MONTH);
       int hour = cal.get(Calendar.HOUR_OF_DAY);
       int minute = cal.get(Calendar.MINUTE);
    %>

    <%-- 날짜 선택 폼 --%>
    <form method="post" action="">
        <label for="date">날짜 선택:</label>
        <input type="date" id="date" name="date" value="<%= year %>-<%= month %>-<%= day %>" required>
        <br>
        <label for="time">시간 선택:</label>
        <input type="time" id="time" name="time" value="<%= String.format("%02d", hour) %>:<%= String.format("%02d", minute) %>" required>
        <br>
        <input type="submit" value="선택">
    </form>

    <%-- 선택된 날짜와 시간 출력 --%>
    <% if (request.getMethod().equalsIgnoreCase("POST")) {
           String selectedDate = request.getParameter("date");
           String selectedTime = request.getParameter("time");
    %>
        <h2>선택된 날짜와 시간:</h2>
        <p>날짜: <%= selectedDate %></p>
        <p>시간: <%= selectedTime %></p>
    <% } %>

    <%-- 캘린더 출력 --%>
    <table>
        <tr>
            <th colspan="7"><%= year %>년 <%= month %>월</th>
        </tr>
        <tr>
            <th>일</th>
            <th>월</th>
            <th>화</th>
            <th>수</th>
            <th>목</th>
            <th>금</th>
            <th>토</th>
        </tr>

        <%-- 첫째 주의 시작 위치 계산 --%>
        <% cal.set(year, month - 1, 1);
           int startDay = cal.get(Calendar.DAY_OF_WEEK) - 1;
           cal.add(Calendar.MONTH, 1);
           cal.add(Calendar.DATE, -1);
           int lastDay = cal.get(Calendar.DATE);
        %>

        <%-- 캘린더 날짜 출력 --%>
        <tr>
            <%-- 이전 달 날짜 출력 --%>
            <% for (int i = startDay - 1; i >= 0; i--) { %>
                <td></td>
            <% } %>

            <%-- 현재 달 날짜 출력 --%>
            <% for (int i = 1; i <= lastDay; i++) { %>
                <% if ((startDay + i - 1) % 7 == 0) { %>
                    </tr><tr>
                <% } %>
                <% if (i == day) { %>
                    <td style="background-color: yellow;"><%= i %></td>
                <% } else { %>
                    <td><%= i %></td>
                <% } %>
            <% } %>

            <%-- 다음 달 날짜 출력 --%>
            <% int remainingCells = 7 - ((startDay + lastDay) % 7);
               for (int i = 0; i < remainingCells; i++) { %>
                <td></td>
            <% } %>
        </tr>
    </table>
</body>
</html>
