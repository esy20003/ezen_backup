<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼입니다</title>
<style type="text/css">
	* {border: none;}
	#login_box {width:500px; height:500px; border-bottom:1px solid #ddd; margin:50px auto 0; }
	#login_box h1 {text-align: center;}
	
	#login_box .id_input_box {width:470px; height:60px; border:1px solid black; margin-bottom:20px;}
	#login_box .id_input_box .id_input {padding-left:20px; font-size:20px; color:#444; margin-top:18px; outline: none;}
	/* 로그인 폼 아이디 비밀번호 인풋  */
	#login_box .pwd_input_box {width:470px; height:60px; border:1px solid black; }
	#login_box .pwd_input_box .pwd_input {padding-left:20px; font-size:20px; color:#444; margin-top:18px; outline: none;}
	
	#login_box .btn_log {margin-top : 15px;}
	#login_box .btn_log .login_btn { width:470px; height:60px; font-size:20px; font-weight:700; outline: none; border:none; text-align: center; color:#fff; background:#ff0000; cursor: pointer;}
	
	#login_box .login_wrap .login_option {width: 468px; height:50px; border:1px solid red; }
	#login_box .login_wrap .login_option a {text-decoration: none; color:#444; width:80px; height:30px; line-height: 30px; text-align: center; margin-top: 10px;} 
	#login_box .login_wrap .login_option .go_main {float:left; margin-left:20px;}
	#login_box .login_wrap .login_option .login_option_detail {float:right; line-height:50px; margin-right:20px;}
	
	#login_box .login_form_footer{font-size:80%; text-align:center;border-top:1px solid #ddd;}
	
</style>
</head>
<body>

<div id="login_box">
	<h1>로그인 폼</h1>
	<form method="post" action="ticket.do" name="loginFrm">
		<input type="hidden" name="command" value="login">
		<fieldset>
		<legend></legend>
		<div class="login_wrap" >
			<div class="id_input_box">
				<input type="text" name="id" class="id_input"  maxlength="20" placeholder="아이디">
			</div>
			<div class="pwd_input_box">
				<input type="password" name="pwd" class="pwd_input"  maxlength="20" placeholder="비밀번호">
			</div>
			<div class="btn_log">
				<input type="submit" value="LOGIN" class="login_btn" onclick="return loginCheck();">
			</div>
			<div class="login_option">
				<a href="ticket.do?command=index" class="go_main">메인으로</a>
				<div class="login_option_detail">
					<a href="#" class="check_idpw">아이디/비밀번호 찾기 &nbsp;|&nbsp; </a>
					<a href="#" class="go_join">회원가입</a>
				</div>
			</div>
		</div>
		</fieldset>
		<div>&nbsp;&nbsp;&nbsp;${param.message}</div>
		<div>&nbsp;&nbsp;&nbsp;${message}</div>
	</form>
	<hr/>
	<hr/>
	<div class="login_form_footer">
		<br/>
		<img src="../images/logo.png" class="login_form_footer_logo" style="width:60px; opacity:0.5;"/>
		&nbsp; Copyright (C)
		<b>티켓온</b>
		. All rights reserved.
	</div>
</div>


</body>
</html>
<%@ include file="../footer.jsp" %>