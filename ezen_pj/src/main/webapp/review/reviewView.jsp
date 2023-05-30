<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<div class="review_img_box"></div>
<div id="review_box">
	<div class="review_content">
		<h2 class="review_title">후기 게시판</h2>
		<h3>고객님들의 티켓팅 후기를 상세히 볼 수 있는 게시판 입니다.</h3>
		<form name="formm" method="post" class="review_form">
			<table class="review_view_table">
				<tr>
					<th>번호</th>
					<td>${reviewVO.rseq }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${reviewVO.id }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td width="200">${reviewVO.title}</td>
				</tr>
				<tr>
					<th>등록일</th>
					<td align="left">
						<fmt:parseDate var="parseDate" value="${reviewVO.indate}" pattern="yyyy-MM-dd" />
						<fmt:formatDate var="resultdate" value="${parseDate}" pattern="yyyy-MM-dd" />
						${reviewVO.indate}
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td align="left">
						<textarea cols="" rows="10" readonly="readonly" >${reviewVO.content}</textarea>
					</td>
				</tr>
				<tr>
					<th>댓글</th>
					<td align="left" style=" color: white;">${reviewVO.reply }
				</tr>
				<tr>
					<th>이미지</th>
					<td align="left" style=" color: white;"><img src="./images/content/${reviewVO.image }" style="width:200px; "></td>
				</tr>
			</table>
			<div class="clear"></div>
			<div id="buttons" class="rev_btn_box" style="float: right">
				<input type="button" value="목록보기" class="submit" onClick="location.href='ticket.do?command=reviewList'">
				<input type="button" value="돌아가기" class="cancel" onClick="location.href='ticket.do?command=index'">
				<c:if test="${ reviewVO.id == loginUser.id }">
					<input type="button" value="수정하기" class="review_update_btn" onclick="go_upd('${ reviewVO.rseq}')">
				</c:if>&nbsp; <!-- 로그인 한 유저가 쓴 댓글만 삭제할 수 있게 버튼을표시  -->
			</div>
		</form>
	</div>
</div>
<%@ include file="../footer.jsp"%>