<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../header.jsp" %>
<div id="mypage_box">
      <h2>내 정보</h2>
      <form method="post" name="mypageForm">
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
         </table>
         <div class="clear"></div>
         <div id="buttons" class="update_btn_box">
            <input type="button" value="정보수정" class="submit btn_update_confirm" onclick="go_update();">
            <input type="reset" value="취소" class="cancel">
         </div>
      </form>
   </div>

<%@ include file="../footer.jsp" %>