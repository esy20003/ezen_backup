<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>

<form name="frm" action="ticket.do" method="post" class="form">
<input type="hidden" name="command" value="orderView">
<section>
<h1>신청 완!!!!!!!!!!!!!!!!!!!!!!!!!!</h1>
<input type="submit" value="신청내역 보기">
<input type="button" value="메인으로" onclick="goMain()">
</section>
</form>
<%@ include file="../../footer.jsp" %>