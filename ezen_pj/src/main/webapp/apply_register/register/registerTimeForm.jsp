<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>

<style>
body {font-family: Arial, sans-serif; background-color: #f2f2f2; padding: 20px;}

.container {max-width: 800px; margin: 0 auto;}

h2 {margin-bottom: 20px;}

.table {width: 100%; border-collapse: collapse; margin-bottom: 20px;}

.table thead th {background-color: #333; color: #fff; padding: 10px; text-align: center;}

.table tbody td {padding: 10px; border-bottom: 1px solid #ddd;}

</style>

<div class="container">
    <h2>대리인 등록 현황</h2>

    <table class="table">
        <thead>
            <tr>
                <th>날짜</th>
                <th>시작시간</th>
                <th>종료시간</th>
            </tr>
        </thead>
        <tbody>
        		<c:forEach items="${ register }" var="regi">
                <tr>
                    <td>${regi.registerdate}</td>
                    <td>${regi.starttime}</td>
                    <td>${regi.endtime}</td>
                </tr>
                </c:forEach>
        </tbody>
    </table>
</div>

<%@ include file="../../footer.jsp" %>