<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>

<section name="registerBody" id="bodyBox_register">
  <div class="registerBox" name="registerBoxform">
    <table class="registerDate" name="registerDate">
      <tr class="tableHead">
        <th><h1>날짜와 시간</h1></th>
      </tr>
      <td class="date">
        <div class="dateBox">
          <%@ include file="calendar.jsp" %>
        </div>
      </td>
    </table>
  </div>
</section>

<%@ include file="../../footer.jsp"%>
