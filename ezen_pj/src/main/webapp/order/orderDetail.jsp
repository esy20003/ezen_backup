<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>

<form name="frm" action="ticket.do" method="post" class="form">


<section>
	<div class="cartList_box">
		<h1>주문 상세 내역</h1>
		<table class="ordersTable">
			<tr>
				<td>주문 번호</td>
				<td>공연 정보</td>
				<td>대리인</td>
				<td>가격</td>
			</tr>
			<c:forEach items="${orderList}" var="ol">
				<tr>
					<td>
						<div>${ol.oseq}</div><div>구매날짜 <fmt:formatDate value="${ol.oindate}" pattern="yyyy-MM-dd" /></div>
					</td>
					<td>
						<div>${ol.title}</div><div>아티스트</div><div>위치, 구역</div><div>날짜 시간</div>
					</td>
					<td>
						<div>대리인</div><div>대리인 등급</div>
					</td>
					<td>
						<div>수량</div><div>좌석 가격</div><div>커미션비</div><div>총합가격 ${ol.content_price*ol.quantity+ol.com_price}</div>
					</td>
				</tr>
			</c:forEach>
			</table>
	</div>
</section>
</form>

<%@ include file="../../footer.jsp" %>