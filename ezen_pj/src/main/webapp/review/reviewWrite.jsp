<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<div class="review_img_box"></div>
<div id="review_box">
	<div class="review_content">
		<h2>후기 게시판</h2>
		<h3>후기 글쓰기 게시판</h3>
		<form name="formm" method="post" class="review_form review_write" enctype="multipart/form-data">
			<!-- <input type="hidden" name="command" value="reviewWrite"> -->
			<table id="reviewList">
				<tr>
					<th>제목</th>
					<td>
						<input type="text" name="title" >
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<textarea rows="25" cols="" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<th>상품이미지</th>
					<td>
						<label for="file" class="file_up_label">
							<div class="btn_file_up">파일 업로드하기</div>
						</label>
						<input type="file" name="file" id="file" style="display:none;">
					</td>
				</tr>
			</table>

			<div class="clear"></div>
			<div id="buttons" class="rev_btn_box" style="float: right">
				<input type="submit" value="작성완료" class="submit" onclick="review_up();">
				<input type="reset" value="취소" class="cancel">
				<input type="button" value=" 돌아가기" class="submit" onClick="location.href='ticket.do?command=index'">
			</div>
		</form>
	</div>
</div>

<%@ include file="../footer.jsp"%>
