<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="css/mypage.css?ver=1" />

<div id="mypage_box">
      <h2>내 정보</h2>
      <form method="post" name="mypageForm" id="mypageFrm">
         <table id="mypage">
         	<tr>
         		<th>아이디</th><th>이름</th><th>닉네임</th><th>성별</th><th>이메일</th><th>전화번호</th><th>생년월일</th>
         	</tr>
         	<tr>
         		<td>${ loginUser.id }</td><td>${ loginUser.name }</td><td>${ loginUser.nickname }</td>
         			<c:choose>
         				<c:when test="${ loginUser.gender == 0 }">
         					<td>선택 안함</td>
         				</c:when>
         				<c:when test="${ loginUser.gender == 1 }">
         					<td>남</td>
         				</c:when>
         				<c:otherwise>
         					<td>여</td>
         				</c:otherwise>
         			</c:choose>
         		<td>${ loginUser.email }</td>
         		<td>${ loginUser.phone }</td>
         		<td><fmt:parseDate var="parseBirthDate" value="${loginUser.birth}" pattern="yyyy-MM-dd"/>
					<fmt:formatDate var="birthDay" value="${parseBirthDate}" pattern="yyyy-MM-dd"/>
		 			${birthDay}</td>
         </table>
         <table id="mypage_sub">
         	<tr>
         		<th>우편 번호</th><th>주소</th><th>상세주소</th><th>등급</th><!-- <th>티켓팅 성공횟수</th> --><th>가입 일자</th>
         	</tr>
         	<tr>
         		<td>${ loginUser.zip_num }</td>
         		<td>${ loginUser.address1 }</td>
         		<td>${ loginUser.address2 }</td>
         		<td>
         			<c:choose>
         				<c:when test="${ loginUser.grade == 0 }">
         					일반
         				</c:when>
         				<c:when test="${ loginUser.grade == 1 }">
         					브론즈
         				</c:when>
         				<c:when test="${ loginUser.grade == 2 }">
         					실버
         				</c:when>
         				<c:when test="${ loginUser.grade == 3 }">
         					골드
         				</c:when>
         				<c:when test="${ loginUser.grade == 4 }">
         					플레티넘
         				</c:when>
         				<c:otherwise>
         					다이아몬드
         				</c:otherwise>
         			</c:choose>
         		</td>
         		<%-- <td>${ loginUser.success }</td> --%>
         		<td><fmt:formatDate value="${ loginUser.indate }" type="date"/></td>
         	</tr>
         </table>
         
         
         
         
         	
         	
         	
         	
         	
         	
         	<!-- 현재 시각 정보(오늘날짜, 현재시각 저장) -->
         	<%-- ${ date } <!-- 오늘날짜 -->
         	${ time }<!-- 현재시간 --> --%>
         	
         	<!-- register 정보(register날짜, 끝날 시각, 시작 시각 저장 -->
         	<%-- ${ mrDate } <!-- register날짜 -->
         	${ mrEndTime }<!-- register 마지막 시간 -->
         	${ mrStartTime }<!-- register 시작 시간 --> --%>
         	
         	
         	<%-- <c:choose>
         		
         		대리인 정보 지나지 않았을 때
         		<c:when test="${ !(mrDate < date || (mrDate == date && mrEndTime < time) ) }">
         			<h2>나의 대리할 내역</h2>
         			<table id="notyetRegister">
         				<tr>
         					<th>번호</th><th>닉네임</th><th>대리날짜</th><th>시작시각</th><th>마감시각</th>
         				</tr>
         				<c:forEach items="${ member }" end="0" var="memberNickname">
         					<tr>
         						<td>${ myRegisterVO.rtseq }</td><td>${ memberNickname }</td><td>${ mrDate }</td>
         						<td>${ mrStartTime }</td><td>${ mrEndTime }</td>
         					</tr>
         				</c:forEach>
         			</table>
         		</c:when>
         		
         		대리인 날짜 지났을 때
         		<c:otherwise>
         			<h2>나의 대리한 내역</h2>
         			<table id="lastRegister">
         				<tr>
         					<th>번호</th><th>닉네임</th><th>대리날짜</th><th>시작시각</th><th>마감시각</th>
         				</tr>
         				<c:forEach items="${ member }" end="0" var="memberNickname">
         				<tr>
         					<td>${ myRegisterVO.rtseq }</td><td>${ memberNickname }</td><td>${ mrDate }</td>
         					<td>${ mrStartTime }</td><td>${ mrEndTime }</td>
         				</tr>
         				</c:forEach>
         			</table>
         		</c:otherwise>
         	</c:choose>
          --%>
         
        <%--  <fmt:parseDate var="registerDate" value="${ myRegister.registerdate }" pattern="yyyy-MM-dd"/>
         <fmt:formatDate var="mrDate" value="${ registerDate }" pattern="yyyy-MM-dd"/> --%>
        <%--  <c:if test="${ myRegister != null }"> --%>
         	
         	
	         <%-- <c:forEach items="${ myRegister }" var="myregisterVO">
	         	<table id="mrtable">
	         		<tr>
	         			<th>
	         	</table>
	         </c:forEach> --%>
         <%-- </c:if> --%>
         <div class="clear"></div>
         <div id="buttons">
         	<input type="button" id="registertable_button" value="나의 대리내역" onclick="location.href='ticket.do?command=myRegister'"/>
            <input type="button" id="updateForm_button" value="정보 수정" onclick="location.href='ticket.do?command=editForm'"/>
            <input type="reset" id="cancel_button" value="홈으로" onclick="location.href='ticket.do?command=index'"/>
         </div>
      </form>
   </div>

<%@ include file="../footer.jsp" %>