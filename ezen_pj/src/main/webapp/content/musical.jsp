<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div id="musical">
	<div class="title">
		<h1>뮤지컬</h1>
	</div>
	<div class="panel">
		<c:forEach items="${ musical }" end="3" var="musicalVO">
			<div id="item">
				<a href="ticket.do?command=contentDetail&cseq=${ musicalVO.cseq }">
					<img src="${ musicalVO.image }" />
				</a>
				<h1 style="line-height: 30px; height: 90px;">${ musicalVO.title }</h1>
				<h3
					style="width: 270px; height: 40px; font-size: 25px; margin-left: 5px; line-height: 40px; font-weight: bold; color: red; border: 2px dashed black; cursor: pointer;">신청하기</h3>
			</div>
		</c:forEach>
	</div>
	<div class="panel">
		<c:forEach items="${ musical }" begin="4" end="7" var="musicalVO">
			<div id="item">
				<a href="ticket.do?command=contentDetail&cseq=${ musicalVO.cseq }">
					<img src="${ musicalVO.image }" />
				</a>
				<h1 style="line-height: 30px; height: 90px;">${ musicalVO.title }</h1>
				<h3
					style="width: 270px; height: 40px; font-size: 25px; margin-left: 5px; line-height: 40px; font-weight: bold; color: red; border: 2px dashed black; cursor: pointer;">신청하기</h3>
			</div>
		</c:forEach>
	</div>
</div>

<%@ include file="../footer.jsp"%>