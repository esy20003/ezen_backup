<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkSuccess.jsp</title>
</head>
<body>

<script type="text/javascript">
	if( window.name=='update' ){
		window.opener.location.href = "ticket.do?command=UpdateQnaForm&qseq=${param.qseq}";
	}else if( window.name=='delete'){
		var bool = confirm("정말로 삭제할까요?");
		if( bool )
			window.opener.location.href = "ticket.do?command=DeleteQna&qseq=${param.qseq}";
	}
	self.close();
</script>

</body>
</html>