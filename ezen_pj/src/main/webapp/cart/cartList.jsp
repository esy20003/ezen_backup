<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../header.jsp" %>

<div id="cartlistwrap">
	<form id="frmcartList" name="frm" method="post">
		<c:choose>
			<c:when test="${ notBuy_cartList.size() == 0 }">
				<h3 style="margin-top: 60px; line-height: 80px; font-size: 50px; text-align: center; margin-bottom: 60px; width: 1200px;
 height: 80px; border: 3px dashed red;">장바구니가 비었습니다</h3>
			</c:when>
			<c:otherwise>
				<div class = "cartList_box">
					<h1>장바구니 목록</h1>
					<table class = "cartItemList">
						<tr>
							<th>번호</th><th>일시</th><th>시간</th><th>위치번호(구역번호)</th><th>좌석</th><th>총수량</th><th>신청날짜</th>
							<th>대리인</th><th>선택</th>
						</tr>
						<c:forEach items="${ notBuy_cartList }" var="cartListVO">
							<tr>
								<td>${ cartListVO.cseq }</td>
								<td><fmt:formatDate value="${ cartListVO.contentdate }" pattern="yyyy-MM-dd" /></td>
								<td>${ cartListVO.contenttime }</td>
								<td>${ cartListVO.locationnum }</td>
								<td>${ cartListVO.area }</td>
								<td>${ cartListVO.quantity }</td>
								<td><fmt:formatDate value="${ cartListVO.indate }" pattern="yyyy-MM-dd" /></td>
								<c:if test="${ cartListVO.mseq2 == 0 }">
									<td>선택 안함</td>
								</c:if>
								<c:forEach items="${ defuty }" end="0" var="defutyVO">
									<c:if test="${ not empty defutyVO.cnickname }">
										<td>${ defutyVO.cnickname }</td>
									</c:if>
								</c:forEach>
								<td><input type="checkbox" name="cartseq" value="${ cartListVO.cseq }"/></td>
							</tr>
						</c:forEach>
					</table>
					<div id="buttons">
						<input type="button" value="계속 쇼핑" class="comeon" onclick="location.href='ticket.do?command=index'"/>
						<c:if test="${ notBuy_cartList.size() != 0 }">
							<input type="button" value="주문하기" class="submit" onclick="go_cart_order();"/>
							<input type="button" value="수정하기" class="update" onclick="go_cart_update();"/>
							<!-- command=cartOrderDetail, jsp = detail/orderDetail -->
							<input type="button" value="삭제하기" class="cancel" onclick="go_cart_delete();" />
						</c:if>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
		<h1>구매 내역</h1>
		<c:choose>
			<c:when test="${ buy_cartList.size() == 0 }">
				<h3 id="notbuyanything">구매한 내역이 없습니다.</h3>
			</c:when>
			<c:otherwise>
				<table class = "cartItemList">
						<tr>
							<th>번호</th><th>일시</th><th>시간</th><th>위치번호(구역번호)</th><th>좌석</th><th>총수량</th><th>신청날짜</th>
						</tr>
						<c:forEach items="${ buy_cartList }" var="cartListVO">
							<tr>
								<td>${ cartListVO.cseq }</td>
								<td><fmt:formatDate value="${ cartListVO.contentdate }" pattern="yyyy-MM-dd"/></td>
								<td>${ cartListVO.contenttime }</td>
								<td>${ cartListVO.locationnum }</td>
								<td>${ cartListVO.area }</td>
								<td>${ cartListVO.quantity }</td>
								<td><fmt:formatDate value="${ cartListVO.indate }" pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>
					</table>
			</c:otherwise>
		</c:choose>
	</form>
</div>

<%@ include file="../footer.jsp" %>

<!--  onclick="go_order_insert();" -->