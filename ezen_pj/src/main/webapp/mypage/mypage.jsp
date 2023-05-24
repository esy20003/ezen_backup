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
         		<th>우편 번호</th><th>주소</th><th>상세주소</th><th>등급</th><th>티켓팅 성공횟수</th><th>가입 일자</th>
         	</tr>
         	<tr>
         		<td>${ loginUser.zip_num }</td>
         		<td>${ loginUser.address1 }</td>
         		<td>${ loginUser.address2 }</td>
         		<td>${ loginUser.grade }</td>
         		<td>${ loginUser.success }</td>
         		<td><fmt:formatDate value="${ loginUser.indate }" type="date"/></td>
         	</tr>
         </table>
         <div class="clear"></div>
         <div id="buttons">
            <input type="button" id="update_button" value="정보 수정" onclick="location.href='ticket.do?command=editForm'"/>
            <input type="reset" id="cancel_button" value="홈으로" onclick="location.href='ticket.do?command=index'"/>
         </div>
      </form>
   </div>

<%@ include file="../footer.jsp" %>