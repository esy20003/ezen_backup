<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div id="contentDetail">
	<c:forEach items="${ content }" var="contentVO">
		<div class="title">
			<h2>${ contentVO.title }</h2>
		</div>
		<div class="image">
			<img src="${ contentVO.image }"
				style="margin-right: 80px; margin-left: 10px;" /> <img
				src="${ contentVO.image }" style="margin-right: 80px;" /> <img
				src="${ contentVO.image }" />
		</div>
		<div class="content_contents">
			<form name="frmcd">
				<!-- action="ticket.do" method="post" -->
				<!-- <input type="hidden" name="command" value="applyContentSelect" />  -->
				<input type="hidden" value="${ contentVO.cseq }" name="cseq" /> <input
					type="hidden" value="${ contentVO.category }" name="category" /> <input
					type="hidden" value="${ contentVO.locationNum }" name="locationNum" />
				<table>
					<tr style="line-height:50px;">
						<th style="width: 10%;">아티스트</th>
						<th style="width: 60%;">내용</th>
						<th style="width: 15%;">제한 연령</th>
						<th style="width: 15%;">티켓팅날짜</th>
					</tr>
					<tr>

						<td><br/><br/>${ contentVO.artist }</td>
						<td style="height:100px; line-height:20px; font-size: 15px; font-weight: bold; text-align: left; border: 1px solid black;">${ contentVO.content }</td>
						<td><br/><br/>${ contentVO.age }</td>
						<td><br/><br/><fmt:parseDate value="${ contentVO.tDateTime }"
								var="tdatetime" pattern="yyyyMMddHHmm" /> <fmt:formatDate
								value="${ tdatetime }" pattern="yyyy-MM-dd HH:mm" /></td>
					</tr>
				</table>
			</form>
		</div>

		<div id="buttons_contentDetail">
			<a
				href="ticket.do?command=applyContentSelect&cseq=${ contentVO.cseq }&category=${ contentVO.category }&locationNum=${ contentVO.locationNum }">
				<input type="submit" value="신청하기"
				onclick="return hoon_go_order_detail();" />
			</a> <input type="button" value="홈으로"
				onclick="location.href='ticket.do?command=index'" />
		</div>

	</c:forEach>
</div>

<%@ include file="../footer.jsp"%>