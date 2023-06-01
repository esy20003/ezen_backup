<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div id="sports">
	<div class="title">
		<h1>스포츠</h1>
	</div>
	<div class="panel">
		<c:forEach items="${ sports }" end="3" var="sportsVO">
			<div id="item">
				<a href="ticket.do?command=contentDetail&cseq=${ sportsVO.cseq }">
					<img src="${ sportsVO.image }" />
				</a>
				<h1 style="line-height: 30px; height: 90px;">${ sportsVO.title }</h1>
				<a
					href="ticket.do?command=applyContentSelect&cseq=${ sportsVO.cseq }&category=${ sportsVO.category }&locationNum=${ sportsVO.locationNum }"><h3>신청하기</h3>
				</a>
			</div>
		</c:forEach>
	</div>
	<div class="panel">
		<c:forEach items="${ sports }" begin="4" end="7" var="sportsVO">
			<div id="item">
				<a href="ticket.do?command=contentDetail&cseq=${ sportsVO.cseq }">
					<img src="${ sportsVO.image }" />
				</a>
				<h1 style="line-height: 30px; height: 90px;">${ sportsVO.title }</h1>
				<a
					href="ticket.do?command=applyContentSelect&cseq=${ sportsVO.cseq }&category=${ sportsVO.category }&locationNum=${ sportsVO.locationNum }"><h3>신청하기</h3>
				</a>
			</div>
		</c:forEach>
	</div>
</div>

<%@ include file="../footer.jsp"%>

