<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div id="wrap" align="center">
	<h1>리뷰 수정</h1>
	<form name="frm" method="post" action="ticket.do?command=updateReview" > <!--  enctype="multipart/form-data"  -->

		<input type="hidden" name="rseq" value="${ reviewVO.rseq }">
		<table>
			<tr>
				<th>작성자</th>
				<td>${ reviewVO.id }
					<input type="hidden" name="userid" value="${ loginUser.id }">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" name="pwd" size="12" >* (게시물 수정 삭제시 필요)
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="title" size="20" value="${ reviewVO.title }">*
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="15" cols="70" name="content">${ reviewVO.content }</textarea>*
				</td>
			</tr>
			<tr>
				<th>이미지</th>
				<td>
					<c:choose>
						<c:when test="${ empty reviewVO.image }">
							<img src="./images/content" height="150">
						</c:when>
						<c:otherwise>
							<img src="upload/${ reviewVO.image }" height="150">
						</c:otherwise>
					</c:choose>&nbsp;&nbsp;
					<input type="file" name="newfile"/>
					<input type="hidden" name="oldfile" value="${ reviewVO.image }">
				</td>
			</tr>
		</table><br>
		<input type="submit" value="수정" onclick="return reviewCheck()">
		<input type="reset" value="다시작성">
		<input type="button" value="돌아가기" onclick="location.href='ticket.do?command=reviewView&rseq=${ reviewVO.rseq }'">
	</form>
</div>


<%@ include file="../header.jsp" %>