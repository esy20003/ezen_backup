<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Go Cart or Not</title>
</head>
<body>
<form name="frm" action="ticket.do" method="post" class="form">
<div>
	<div>${param.message}</div>
	<div>${message}</div>
	<input type="button" onclick="opener.location.href='ticket.do?command=cartList';self.close()" value="장바구니로 이동">
	<input type="button" onclick="opener.location.href='ticket.do?command=index';self.close()" value="메인으로">
	
</div>
</form>
</body>
</html>