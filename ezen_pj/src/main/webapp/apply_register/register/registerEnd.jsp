<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>등록 완료</title>
</head>
<body>
    <h1>등록이 완료되었습니다.</h1>
    
    <%-- 등록된 날짜와 시간 출력 --%>
    <h3>저장된 날짜와 시간:</h3>
    <ul>
        <%
            String datetimeList = request.getParameter("datetimeList");
            if (datetimeList != null && !datetimeList.isEmpty()) {
                String[] datetimeArray = datetimeList.split("<li>");
                for (int i = 1; i < datetimeArray.length; i++) {
                    String datetime = datetimeArray[i].replaceAll("</li>", "");
                    out.println("<li>" + datetime + "</li>");
                }
            } else {
                out.println("<li>저장된 날짜와 시간이 없습니다.</li>");
            }
        %>
    </ul>
    
    <%-- 추가적인 작업 수행 가능 --%>
</body>
</html>
<%@ include file="../../footer.jsp"%>
