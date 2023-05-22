<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>

<article>

	<section name="registerBody" id="bodybox_register">
		<div class="registerBox" name="registerboxform">
			<table class="registerDate" name="registerDate">
				<tr class="tableHead">
					<th><h1>날짜와 시간</h1></th>
				</tr>
				<td class="date">
					<div class="dateBox">
						<%@ include file="calendar.jsp" %>
				</td>
			</table>
		</div>
	</section>

</article>


<%@ include file="../../footer.jsp"%>