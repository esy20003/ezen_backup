<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>

<form name="frm" action="ticket.do" method="post" class="form">


<section>
	<div class="cartList_box">
		<h1>주문 목록</h1>
		<table class="ordersTable">
			<tr>
				<td>주문 번호</td>
				<td>공연명</td>
				<td>가격</td>
				<td>주문 날짜</td>
			</tr>
			<c:forEach items="${orderList}" var="ol">
				<tr>
					<td>${ol.oseq}</td>
					<td>${ol.title}</td>
					<td>${ol.content_price}+${ol.com_price}</td>
					<td>${ol.oindate}</td>
				</tr>
			</c:forEach>
			</table>
	</div>
</section>
</form>
<%@ include file="../../footer.jsp" %>