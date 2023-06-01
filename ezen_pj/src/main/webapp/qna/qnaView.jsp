<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../header.jsp" %>
<%@ include file="sub_image_menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket Shop</title>

<link rel="stylesheet" href="/css/qna.css">
<script src="script/qna.js"></script>
</head>
<article>
<h2> 고객 게시판 </h2> <br><br> <h3> 고객님의 질문에 대해서 운영자가 1:1 답변을 드립니다. </h3><br><br>
<form>

<table class="qna_view_table">
	<tr><th>번호</th><td width="500" style="text-align:left; ">${QnaVO.qseq}</td></tr>
	<tr><th>제목</th><td width="500" style="text-align:left; ">${QnaVO.title}</td></tr>
	<tr><th>질문내용</th>
	<td align="left" style="text-align:left;font-size:100%; box-sizing: border-box; resize: none; padding:10px;"><pre>${QnaVO.content}</pre></td></tr>
	<tr><th>답변내용</th><td align="left" style="text-align:left; color:white;">${QnaVO.reply}</td></tr>
	<tr><th>작성자</th><td align="left" style="text-align:left; font-size:115%;"><pre>&nbsp;&nbsp;${QnaVO.id}</pre></td></tr>
	<tr><th>등록일</th><td align="left" style="text-align:left;">
	<fmt:formatDate value="${QnaVO.indate}" type="date"/></td></tr>
	<tr><th>조회수</th><td>${QnaVO.readcount}</td></tr>
	
</table>
	<input type="button" value="메인 화면으로 돌아가기"
				onClick="location.href='ticket.do?command=index'"> 
		<input type="button" value="수정 "
				onClick="checkPass('${QnaVO.qseq}' ,  'update');"> 
		<input	type="button" value="삭제 "
				onClick="checkPass('${QnaVO.qseq}' ,  'delete');"> <br>
		<br>
		
<c:set var="now" value="<%=new java.util.Date()%>" />

		<form action="ticket.do" method="get" name="frm_reply">
			<input type="hidden" name="command" value="AddReply" /> <input
				type="hidden" name="qnanum" value="${QnaVO.qseq}" />
			<table>
				<tr>
					<th width="100">작성자</th>
					<th width="100">작성일시</th>
					<th>내용</th>
					<th width="100">추가/삭제</th>
				</tr>

				<tr align="center">
					<td>${loginUser.id}<input type="hidden" name="id"
						value="${loginUser.id}"></td>
					<td><fmt:formatDate value="${now}" pattern="MM/dd HH:mm" /></td>
					<td><input type="text" name="reply" size="100" ></td>
					<td><input type="submit" value="답글 작성"
						onClick="return reply_check();"></td>
				</tr>

				<c:forEach items="${replyList}" var="reply">
					<tr align="center">
						<td>${reply.id}</td>
						<td><fmt:formatDate value="${reply.indate}"
								pattern="MM/dd HH:mm" /></td>
						<td align="left">&nbsp;${reply.content}</td>
						<td>
							<c:if test="${reply.id==loginUser.id}">
								<input type="button" value="삭제"	
								onClick = "location.href='ticket.do?command=deleteReply&replynum=${reply.replynum}&qnanum=${QnaVO.qseq}'">
							</c:if>&nbsp;</td>
					</tr>
				</c:forEach>
			</table>
		</form>

	
		<div class="clear"></div>
<div id="buttons" style="float:right">
	<input type="button" value="돌아가기" class="cancel" style="color:black" onclick="location.href='ticket.do?command=qnaList'">
</div>
</form>
</article>

<%@ include file="../footer.jsp" %>