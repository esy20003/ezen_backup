<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>

<form method="post" name="registerForm" style="margin: 0 auto;">
	<!-- <input type="hidden" name="command" value="registerTimeForm"> -->

	<section name="registerBody" id="bodyBox_register">
		<div class="registerBox" name="registerBoxform">
			<table class="registerDate" name="registerDate">
				<tr class="tableHead">
					<th><h1>날짜와 시간</h1></th>
				</tr>
				<td class="datetime">
					<div class="datetimeBox">
						<%@ include file="datepicker.jsp"%>
					</div>
				</td>
			</table>
		</div>
	</section>
</form>
<%@ include file="../../footer.jsp"%>
