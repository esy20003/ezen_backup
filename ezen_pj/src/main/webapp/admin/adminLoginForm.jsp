<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>admin Login</title>
<!-- <link rel="stylesheet" href="css/bootstrap.min.css" /> -->
<link rel="stylesheet" href="../css/admin.css"/>
<!-- <script src="script/bootstrap.min.js"></script> -->
<script src="../script/admin.js"></script>
</head>

<body>

<div id="wrap">
	<header>
		<div id="logo"><a href="ticket.do?command=index"><img src="images/logo.png"/></a></div>
	</header>		<div class="clear"></div>
	<article>
		<div id="loginform">
			<form name="frm" method="post" action="ticket.do">
				<input type="hidden" name="command" value="adminLogin"/>
				<table>
					<tr><td>아 이 디</td><td><input type="text" name="workId" size="10"/></td></tr>
					<tr><td>비밀번호</td><td><input type="password" name="workPwd" size="10"/></td></tr>
					<tr align="center">
						<td colspan="2">
							<input class="btn" type="submit" value="로그인" onclick="return workerCheck();"/>
							<br/><br/><h4 style="color:red">${ msg }</h4></td></tr>
				</table>
			</form>
		</div>
	</article>
</div>

</body>

</html>