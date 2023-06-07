<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div id="exhibition">
	<div class="title">
		<h1>전시/행사</h1>
	</div>
	<div class="panel">
		<c:forEach items="${ exhibition }" end="3" var="exhibitionVO">
			<div id="item">
				<a href="ticket.do?command=contentDetail&cseq=${ exhibitionVO.cseq }">
					<img src="${ exhibitionVO.image }" />
				</a>
				<h1 style="line-height: 30px; height: 90px;">${ exhibitionVO.title }</h1>
				<a
					href="ticket.do?command=applyContentSelect&cseq=${ exhibitionVO.cseq }&category=${ exhibitionVO.category }&locationNum=${ exhibitionVO.locationNum }"><h3>신청하기</h3>
				</a>
			</div>
		</c:forEach>
	</div>
	<div class="panel">
		<c:forEach items="${ exhibition }" begin="4" end="7"
			var="exhibitionVO">
			<div id="item">
				<a href="ticket.do?command=contentDetail&cseq=${ exhibitionVO.cseq }">
					<img src="${ exhibitionVO.image }" />
				</a>
				<h1 style="line-height: 30px; height: 90px;">${ exhibitionVO.title }</h1>
				<a
					href="ticket.do?command=applyContentSelect&cseq=${ exhibitionVO.cseq }&category=${ exhibitionVO.category }&locationNum=${ exhibitionVO.locationNum }"><h3>신청하기</h3>
				</a>
			</div>
		</c:forEach>
	</div>
</div>


<%@ include file="../footer.jsp"%>

