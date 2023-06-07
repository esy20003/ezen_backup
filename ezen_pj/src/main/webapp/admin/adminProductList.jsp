<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="/admin/sub_menu.jsp"%>

<article class="pro_box">
	<h1>상품리스트</h1>

	<form name="frm" method="post">
		<table>
			<tr>
				<td width="642">
					상품명 :
					<input type="text" name="key" value="${ key }">
					<input class="btn" type="button" name="btn_search" value="검색" onclick="go_search('adminProductList')">
					<input class="btn" type="button" name="btn_total" value="전체보기" onclick="go_total('adminProductList')">
					<input class="btn" type="button" name="btn_write" value="상품등록" onclick="go_wrt()">
				</td>
			</tr>
		</table>
	</form>

	<table id="productList">
		<tr>
			<th>번호</th>
			<th>타이틀</th>
			<th>미정</th>
			<th>아티스트</th>
			<th>이미지</th>
			<th>상세보기</th>
			<th>카테고리</th>
			<th>관람등급</th>
			<th>베스트</th>
			<th>TDATETIME</th>
		</tr>
		<c:forEach items="${ productList }" var="productVO">
			<tr>
				<td style="text-align: left; padding-left: 50px;">${ productVO.cseq }</td>
				<td>
					<a onclick="go_detail('${ productVO.cseq }')">${ productVO.title }</a>
				</td>
				<td ${ productVO.atrist }></td>
				<td ${ productVO.image }></td>
				<td><textarea rows="" cols="">${ productVO.content }</textarea></td>
				<td></td>
				<td></td>
			</tr>
		</c:forEach>
	</table>
	<br> <br>
	<jsp:include page="/admin/paging/page.jsp">
		<jsp:param name="command" value="shop.do?command=adminProductList" />
	</jsp:include>
	<!-- jsp:param 으로 필요한 내용을 전달하고 완성된 페이지를 include 합니다 -->
</article>


<!-- 	<h3>도착을 했습니다~~~</h3> -->
<!-- 	<input type="button" value="1:1 문의하기" onclick="location.href='ticket.do?command=adminQnaList'"> -->
<%@ include file="footer.jsp" %>
