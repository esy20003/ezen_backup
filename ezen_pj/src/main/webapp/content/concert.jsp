<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div id="concert">
	<div class="title">
		<h1>콘서트</h1>
	</div>

	<div class="panel">
		<c:forEach items="${ concert }" begin="0" end="3" var="concertVO">
			<div id="item">
				<a href="ticket.do?command=contentDetail&cseq=${ concertVO.cseq }">
					<img src="${ concertVO.image }" />
				</a>
				<h1 style="line-height: 30px; height: 90px;">${ concertVO.title }</h1>
				<a
					href="ticket.do?command=applyContentSelect&cseq=${ concertVO.cseq }&category=${ concertVO.category }&locationNum=${ concertVO.locationNum }"><h3>신청하기</h3>
				</a>
			</div>
		</c:forEach>
	</div>


	<div class="panel">
		<c:forEach items="${ concert }" begin="4" end="7" var="concertVO">
			<div id="item">
				<a href="ticket.do?command=contentDetail&cseq=${ concertVO.cseq }">
					<img src="${ concertVO.image }" />
				</a>
				<h1 style="line-height: 30px; height: 90px;">${ concertVO.title }</h1>
				<a
					href="ticket.do?command=applyContentSelect&cseq=${ concertVO.cseq }&category=${ concertVO.category }&locationNum=${ concertVO.locationNum }"><h3>신청하기</h3>
				</a>
			</div>
		</c:forEach>
	</div>
</div>


<%@ include file="../footer.jsp"%>