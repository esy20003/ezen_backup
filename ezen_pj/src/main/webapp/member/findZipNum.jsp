<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="script/member.js"></script>
</head>
<body>
	<div id="popup">
      <h1>우편번호검색</h1>
      <!-- 다른 동 재검색 -->
      <form action="ticket.do" name="form" method="post">
         <input type="hidden" name="command" value="findZipNum">
         동 이름 :
         <input name="dong" type="text">
         <input type="submit" value="찾기" class="submit">
      </form>

      <!-- 검색된 우편번호와 동이 표시되는 곳 -->
      <table id="zipcode">
         <tr>
            <th width="100">우편번호</th>
            <th>주소</th>
            <c:forEach items="${ addressList }" var="add">
               <tr>
                  <td><a href="#" onclick="result('${ add.zip_num}', '${ add.sido }', '${ add.gugun }', '${ add.dong }')">${ add.zip_num }</a></td>
                  <td><a href="#" onclick="result('${ add.zip_num}', '${ add.sido }', '${ add.gugun }', '${ add.dong }' , '${ add.bunji }')">${ add.sido }&nbsp;${ add.gugun }&nbsp;${ add.dong }&nbsp;${ add.bunji} </a></td>
               </tr>
            </c:forEach>
         </tr>
      </table>
   </div>
</body>
</html>