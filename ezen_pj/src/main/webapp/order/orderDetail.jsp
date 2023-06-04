<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form name="frm" action="ticket.do" method="post" class="form">


<section>
	<div class="orderList_box">
		<div class="title">주문 상세 내역</div>
		<table class="orderDTable">
			<tr class="titleTr">
				<td>주문 번호</td>
				<td>공연 정보</td>
				<td>대리인</td>
				<td>가격</td>
			</tr>
			</table>
				<ul class="orderDListUl">
			<c:forEach items="${orderDetailList}" var="odl">
					<li>
						<div class="od"><div>${odl.oseq}</div><div>구매날짜 <fmt:formatDate value="${odl.oindate}" pattern="yyyy-MM-dd" /></div></div>
						<div class="od"><div>${odl.title}</div><div>${odl.artist}</div><div>${odl.locationName}&nbsp;&nbsp;${odl.area }</div><div><fmt:formatDate value="${odl.contentDate}" pattern="yyyy-MM-dd" />&nbsp;&nbsp;${odl.contentTime}</div></div>
						<div class="od"><div>${odl.com_nickname }</div><div>${odl.com_grade}</div></div>
						<div class="od"><div>수량 ${odl.quantity }</div><div>좌석 가격 ${odl.content_price }</div><div>커미션비 ${odl.com_price}</div><div>총합가격 ${odl.content_price*odl.quantity+odl.com_price}</div></div>
					</li>
			</c:forEach>
				</ul>
	</div>
</section>
</form>

<%@ include file="../footer.jsp" %>