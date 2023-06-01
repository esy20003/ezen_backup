<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div id="festival">
	<div class="title">
		<h1>페스티벌</h1>
	</div>
	<div class="panel">
		<c:forEach items="${ festival }" end="3" var="festivalVO">
			<div id="item">
				<a href="ticket.do?command=contentDetail&cseq=${ festivalVO.cseq }">
					<img src="${ festivalVO.image }" />
				</a>
				<h1 style="line-height: 30px; height: 90px;">${ festivalVO.title }</h1>
				<a
					href="ticket.do?command=applyContentSelect&cseq=${ festivalVO.cseq }&category=${ festivalVO.category }&locationNum=${ festivalVO.locationNum }"><h3>신청하기</h3>
				</a>
			</div>
		</c:forEach>
	</div>
	<div class="panel">
		<c:forEach items="${ festival }" begin="4" end="7" var="festivalVO">
			<div id="item">
				<a href="ticket.do?command=contentDetail&cseq=${ festivalVO.cseq }">
					<img src="${ festivalVO.image }" />
				</a>
				<h1 style="line-height: 30px; height: 90px;">${ festivalVO.title }</h1>
				<a
					href="ticket.do?command=applyContentSelect&cseq=${ festivalVO.cseq }&category=${ festivalVO.category }&locationNum=${ festivalVO.locationNum }"><h3>신청하기</h3>
				</a>
			</div>
		</c:forEach>
	</div>
</div>


<%@ include file="../footer.jsp"%>

