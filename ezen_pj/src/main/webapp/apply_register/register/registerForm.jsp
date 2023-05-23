<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>

<style>
.registerBox {border: 1px solid #ccc; padding: 20px; background-color: #f86343; border-radius: 5px; width:1200px;
text-align: center; margin: 0 auto;}
.registerDate {width: 100%; border-collapse: collapse; margin-top: 20px;}
.tableHead {background-color: #eee;}
.tableHead th { padding: 10px; text-align: center;}
.date {padding: 10px;}
.dateBox {border: 1px solid #ccc; padding: 10px; background-color: #fff; width: 1100px; margin:0 auto;}
</style>

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
