<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>

<form name="frm" action="ticket.do" method="post" class="form">
	<section class="body_Choose">
		<div class="buttonBoxArea">
			<div class="Header">선택하신 공연</div>
			<div class="detailBody">
				<div class="posterZone">
					<div class="posterBox">
						<img alt="공연 포스터" src="{detailList.image}" width=300 height=400>
					</div>
				</div>
				<div class="detailZone">
					<div class="detail title">공연명 : {detailList.title}</div>
					<div class="detail artist">아티스트 : {detailList.artist}</div>
					<div class="detail location">공연 위치 : {areaList.locationName}</div>
					<div class="detail dateTime">공연 일정 : ${date}&nbsp;${time}</div>
					<div class="detail area">공연 구역 : {areaList.area}</div>
					<div class="detail tTime">티켓팅 일정 : {detailList.tDateTime}</div>
				</div>
			</div>
		</div>
		<div class="buttonBoxArea">
			<div class="Header">대리인 리스트</div>
			<div class="detailBody">
				<table>
					<tr><th>닉네임</th><th>등급</th><th>성공 횟수</th><th>가능한 시간대</th><th>커미션비</th></tr>
					<c:forEach items="${comList}" var="cl" varStatus="state">
					<tr <%-- onclick="saveTime('${state.count}')" --%>>
						<td>${cl.cnickname}</td><td>${cl.gname}</td><td>${cl.success}</td><td>${cl.registerdate}&nbsp;${cl.starttime}~${cl.endtime}</td><td>${cl.com_price}원</td>
<%-- 						<input type="hidden" value="${contentTil.contentTime}" name="time" id='${"time"+=state.count}'> --%>
					</tr>
					</c:forEach>
					
				</table>
			</div>
		</div>
	</section>
</form>

<%@ include file="../../footer.jsp" %>