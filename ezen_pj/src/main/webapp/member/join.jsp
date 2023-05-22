<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼입니다</title>

</head>
<body>
	<form method="post" name="joinForm" style="margin: 0 auto;">
		<input type="hidden" name="command" value="join">
		<div id="join_box">
			<div class="join_title">
				<span>회원정보 입력</span> 홈페이지에서 사용할 정보를 입력해주세요.
			</div>
			<div class="join_content">
				<ul>
					<li><label>아이디</label> <span>* 필수입력</span> <input type="text" name="id" placeholder="아이디" />
						<input type="hidden" name="reid">
						<input type="button" value="중복체크" class="chk_id" onclick="checkid();">
					</li>
					<li><label>비밀번호</label> <span>* 필수입력</span> <input type="password" name="pwd" placeholder="비밀번호를 입력해주세요." /><br></li>
					<li><label>이름</label> <span>* 필수입력</span> <input type="text" name="name" placeholder="이름을 입력해주세요." /></li>
					<li><label style="float: left;">성별</label> <select name="gender" style="height: 40px; width: 400px; float: right; margin-right: 10px; margin-top: 10px;">
							<option value="무관">성별 선택</option>
							<option value="남">남</option>
							<option value="여">여</option>
					</select></li>
					<li><label>별명</label> <input type="text" name="nickname" placeholder="별명을 입력해주세요." /></li>
					<li><label>이메일</label> <span>* 필수입력</span> <input type="text" name="email" placeholder="이메일을 입력해주세요." /></li>
					<li><label>전화번호</label> <span>* 필수입력</span> <input type="text" name="phone" placeholder="전화번호를(예:010-7777-3333) 양식으로 입력해주세요." /></li>
					<li><label>우편번호</label> <span>* 필수입력</span> <input type="text" name="zip_num" placeholder="우편번호를 입력해주세요." /></li>
					<li><label>주소</label> <span>* 필수입력</span> <input type="text" name="address1" placeholder="주소를 입력해주세요." /></li>
					<li><label>상세주소</label> <input type="text" name="address2" placeholder="상세주소를 입력해주세요." /></li>
				</ul>
			</div>

			<div id="buttons">
				<input type="button" value="회원가입" class="submit" onclick="go_save()">
				<input type="button" value="취소" class="cancel">
			</div>
		</div>
	</form>
</body>
</html>

<%@ include file="../footer.jsp"%>