<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

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
			<c:choose>
				<c:when test="${orderList.size()==0}">
					<tr>
						<td>주문 내역 없음</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${orderList}" var="ol">
						<tr>
							<td>${ol.oseq}</td>
							<td>${ol.orderTitle}</td>
							<td>${ol.totalPrice}</td>
							<td><fmt:formatDate value="${ol.oindate}" pattern="yyyy-MM-dd" /></td>
							<td><input type="button" value="주문 상세 보기" onclick="location.href='ticket.do?command=orderDetail&oseq='+${ol.oseq}" /></td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			</table>
	</div>
</section>
</form>
<%@ include file="../footer.jsp" %>