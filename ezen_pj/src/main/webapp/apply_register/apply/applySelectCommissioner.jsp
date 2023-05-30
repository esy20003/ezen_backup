<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ include file="../../header.jsp" %>

<form name="frm" action="ticket.do" method="post" class="form">
	<section class="body_Choose2">
		<div class="buttonBoxArea">
			<div class="Header">선택하신 공연</div>
			<div class="detailBody">
				<div class="posterZone">
					<div class="posterBox">
					<c:forEach items="${detailList}" var="dl">
						<img alt="공연 포스터" src="${dl.image}" width=300 height=400>
					</c:forEach>
					</div>
				</div>
				<div class="detailZone">
					<c:forEach items="${detailList}" var="dl">
						<div class="detail title">공연명 : <c:out value="${dl.title}"/></div>
						<div class="detail artist">아티스트 : <c:out value="${dl.artist}"/></div>
					</c:forEach>
					<c:forEach items="${areaList}" var="al">
						<div class="detail location">공연 위치 : ${al.locationName}</div>
					</c:forEach>
					<div class="detail dateTime">공연 일정 : ${date}&nbsp;${param.time}</div>
					<c:forEach items="${areaList}" var="al">
						<div class="detail area">공연 구역 : ${al.area}&nbsp;${al.price}원</div>
					</c:forEach>
						<div class="detail tTime">티켓팅 일정 : ${tDateTime}</div>
				</div>
			</div>
		</div>
		<div class="buttonBoxArea2">
			<div class="Header">대리인 리스트</div>
			<div class="detailBody">
				<table>
					<tr><th>닉네임</th><th>등급</th><th>성공 횟수</th><th>가능한 시간대</th><th>커미션비</th></tr>
				</table>
				<div class="com_list">
					<ul>
					<c:forEach items="${comList}" var="cl" varStatus="state">
						<li<%--  onclick="saveTime('${state.count}')" --%>>
						<div>${cl.cnickname}</div><div>${cl.gname}</div><div>${cl.success}</div><div>${cl.registerdate}&nbsp;${cl.starttime}~${cl.endtime}</div><div>${cl.com_price}원</div>
						<input type="hidden" value="${contentTil.contentTime}" name="time" id='${"time"+=state.count}'>
						</li>
					</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</section>
		<section class=buttonSection>
		<div class=buttonBox>
			<div class=groupBox>
					<div class=buttonSmallBox>
						<input class="button1" type="button" value="뒤로" onclick="goMain()">
					</div>
					<div class=buttonSmallBox>
						<input type="submit" class="button1 next" value="결제" onclick="return applyFormCheck()"/>
					</div>
					<div class=buttonSmallBox>
						<input class="button1" type="button" value="장바구니"onclick="insertCart()">
					</div>
			</div>
		</div>
	</section>
</form>

<%@ include file="../../footer.jsp" %>