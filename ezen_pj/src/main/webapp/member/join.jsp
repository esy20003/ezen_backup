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
					<li> <span>* </span> <input type="text" name="id" placeholder="아이디" />
						<input type="hidden" name="reid">
						<input type="button" value="중복체크" class="chk_id" onclick="checkid();">
					</li>
					<li> <span>* </span> <input type="password" name="pwd" placeholder="비밀번호를 입력해주세요." /></li>
					<li> <span>* </span> <input type="password" name="pwdCheck" placeholder="비밀번호 재확인." /><br></li>
					<li> <span>* </span> <input type="text" name="name" placeholder="이름을 입력해주세요." /></li>
					<li> <select name="gender" class="gender">
							<option value="무관">성별 선택</option>
							<option value="남">남</option>
							<option value="여">여</option>
					</select></li>
					<li> <input type="text" name="nickname" placeholder="별명을 입력해주세요." /></li>
					<li> <span>* </span> <input type="text" name="email" placeholder="이메일을 입력해주세요." /></li>
					<li> <span>* </span> <input type="text"  name="phone" placeholder="(입력예 : 010-7777-3333)" /></li>
					<li><span>* </span> <input type="text" class="birthday" name="birth" placeholder="(입력예 yyyy-mm-dd)" onblur="birthCheck()">
					<li>
						 <span>* </span> <input type="text" name="zip_num" placeholder="우편번호를 입력해주세요." readonly="readonly" />
						<input type="button" value="주소 찾기" class="zip_find" onclick="post_zip()">
					</li>
					<li>
						 <span>* </span> <input type="text" name="address1" placeholder="주소를 입력해주세요." readonly="readonly" />
					</li>
				
					<li> <input type="text" name="address2" placeholder="상세주소를 입력해주세요." /></li>
				</ul>
				<div class="notice">
					<p><strong>*</strong>표시는<strong>필수</strong>입력 사항입니다</p>
				</div>
			</div>
			<div id="buttons">
				<input type="button" value="회원가입" class="submit join_ok"  onclick="join_insert()">
				<input type="button" value="취소" class="cancel join_cancel" >
			</div>
		</div>
	</form>
</body>
</html>

<%@ include file="../footer.jsp"%>