<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="header.jsp" %>


<div id="bestContent" style="height: 600px; border: 3px solid pink; margin: 0 auto; width: 1200px;">
		<div class="title" style="height:190px; text-align:center; margin:5px 5px 5px 5px; width: 1190px; font-size:300%; line-height:190px;
			font-weight:bold; background:#f3f3ff; color:red;">
			<h1>Best Content</h1>
		</div>
		<div class="bestcontentback" style="width:1190px; margin: 0 auto; height: 400px; background: #f7f0f0;">
			<div class="view" style="height: 398px; width: 350px; border: 1px solid black; margin: 0 auto; overflow:hidden; border: 1px dashed #ffb3b3; position:relative;">
		        <%-- <c:forEach items="${ bestContent }" var="contentVO"> --%>
			        <div id="imgs" style="width: 700px; height: 300px; position:absolute; left:0; top:0;" >
			            <a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }"><img src="images/list1.png" style="width:350px; height:300px; float:left;"/>
			            <%-- <img src="images/${ contentVO.cseq } style="width:350px; height:300px;"/> --%></a>
			            <a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }"><img src="images/list2.png" style="width:350px; height:300px; float:left;"/>
			            <%-- <img src="images/${ contentVO.cseq } style="width:350px; height:300px;"/> --%></a>
			        </div>
			        <div class="title" style="width: 350px; height: 60px; line-height: 60px; font-size: 150%; font-weight: bold; text-align: center;
			        	color: #724a4a; background: #fbe4f6; border-bottom: 3px dashed blue; position:absolute; top:300px;">
		            	<h3><%-- ${ contentVO.title } --%>'세종문화회관 S씨어터'</h3>
		            </div>
				<%-- </c:forEach> --%>
		        <div id="remote" style="position:absolute; bottom:0;">
		            <ul>
		                <li id="btn" onClick="moveRight();" style="text-align: center; font-size: 150%; line-height: 35px; color: green;
		                	cursor: pointer; background: #d6f4ff; width:350px;">▶</li>
		            </ul>
	        </div>
	        <%-- </c:forEach> --%>
	    </div>
    </div>
</div>

<div id="musical" style= "width: 1200px; height: 600px; border: 1px solid black; margin: 0 auto;">
	<div class="title" style="height:190px; text-align:center; margin:5px 5px 5px 5px; width: 1190px; font-size:300%; line-height:190px;
			font-weight:bold; background:#f3f3ff; color:red;">
			<h1>Musical</h1>
	</div>
	<div class="panel" style="height:390px; width:1190px; margin : 0 auto;">
		<%-- <c:forEach items="${ musical }" var="contentVO"> --%>
			<div id="item" style="float: left; margin: 0 20px;">
				<a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
					<img src="images/list1.png" style="height:300px; width:250px;"/>
				</a>
				<h1 style="width: 248px; height: 43px; line-height: 43px; text-align: center; font-size: 16px; font-weight: bold; color: #0014ff;
    				background: #e4ffae;">뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
				<h2 style="width: 248px; height: 43px; line-height:43px; text-algin:center;">서경대학교 공연예술센터 스콘2관
					<%-- ${ contentVO.location } --%></h2>
			</div>
			<div id="item" style="float: left; margin: 0 20px;">
				<a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
					<img src="images/list1.png" style="height:300px; width:250px;"/>
				</a>
				<h1 style="width: 248px; height: 43px; line-height: 43px; text-align: center; font-size: 16px; font-weight: bold; color: #0014ff;
    				background: #e4ffae;">뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
				<h2 style="width: 248px; height: 43px; line-height:43px; text-algin:center;">서경대학교 공연예술센터 스콘2관
					<%-- ${ contentVO.location } --%></h2>
			</div>
			<div id="item" style="float: left; margin: 0 20px;">
				<a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
					<img src="images/list1.png" style="height:300px; width:250px;"/>
				</a>
				<h1 style="width: 248px; height: 43px; line-height: 43px; text-align: center; font-size: 16px; font-weight: bold; color: #0014ff;
    				background: #e4ffae;">뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
				<h2 style="width: 248px; height: 43px; line-height:43px; text-algin:center;">서경대학교 공연예술센터 스콘2관
					<%-- ${ contentVO.location } --%></h2>
			</div>
			<div id="item" style="float: left; margin: 0 20px;">
				<a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
					<img src="images/list1.png" style="height:300px; width:250px;"/>
				</a>
				<h1 style="width: 248px; height: 43px; line-height: 43px; text-align: center; font-size: 16px; font-weight: bold; color: #0014ff;
    				background: #e4ffae;">뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
				<h2 style="width: 248px; height: 43px; line-height:43px; text-algin:center;">서경대학교 공연예술센터 스콘2관
					<%-- ${ contentVO.location } --%></h2>
			</div>
		<%-- </c:forEach> --%>
	</div>
</div>

<div id="concert" style= "width: 1200px; height: 600px; border: 1px solid black; margin: 0 auto;">
	<div class="title" style="height:190px; text-align:center; margin:5px 5px 5px 5px; width: 1190px; font-size:300%; line-height:190px;
			font-weight:bold; background:#f3f3ff; color:red;">
			<h1>Concert</h1>
	</div>
	<div class="panel" style="height:390px; width:1190px; margin : 0 auto;">
		<%-- <c:forEach items="${ concert }" var="contentVO"> --%>
			<div id="item" style="float: left; margin: 0 20px;">
				<a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
					<img src="images/list1.png" style="height:300px; width:250px;"/>
				</a>
				<h1 style="width: 248px; height: 43px; line-height: 43px; text-align: center; font-size: 16px; font-weight: bold; color: #0014ff;
    				background: #e4ffae;">뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
				<h2 style="width: 248px; height: 43px; line-height:43px; text-algin:center;">서경대학교 공연예술센터 스콘2관
					<%-- ${ contentVO.location } --%></h2>
			</div>
			<div id="item" style="float: left; margin: 0 20px;">
				<a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
					<img src="images/list1.png" style="height:300px; width:250px;"/>
				</a>
				<h1 style="width: 248px; height: 43px; line-height: 43px; text-align: center; font-size: 16px; font-weight: bold; color: #0014ff;
    				background: #e4ffae;">뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
				<h2 style="width: 248px; height: 43px; line-height:43px; text-algin:center;">서경대학교 공연예술센터 스콘2관
					<%-- ${ contentVO.location } --%></h2>
			</div>
			<div id="item" style="float: left; margin: 0 20px;">
				<a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
					<img src="images/list1.png" style="height:300px; width:250px;"/>
				</a>
				<h1 style="width: 248px; height: 43px; line-height: 43px; text-align: center; font-size: 16px; font-weight: bold; color: #0014ff;
    				background: #e4ffae;">뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
				<h2 style="width: 248px; height: 43px; line-height:43px; text-algin:center;">서경대학교 공연예술센터 스콘2관
					<%-- ${ contentVO.location } --%></h2>
			</div>
			<div id="item" style="float: left; margin: 0 20px;">
				<a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
					<img src="images/list1.png" style="height:300px; width:250px;"/>
				</a>
				<h1 style="width: 248px; height: 43px; line-height: 43px; text-align: center; font-size: 16px; font-weight: bold; color: #0014ff;
    				background: #e4ffae;">뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
				<h2 style="width: 248px; height: 43px; line-height:43px; text-algin:center;">서경대학교 공연예술센터 스콘2관
					<%-- ${ contentVO.location } --%></h2>
			</div>
		<%-- </c:forEach> --%>
	</div>
</div>

<div id="success" style="width: 1200px; height: 400px; margin: 0 auto; border: 1px solid black;">
	<div class="title" style="height:150px; text-align:center; width: 1200px; font-size:300%; line-height:150px;
			font-weight:bold; background:#f3f3ff; color:blue;">
			<h1>성&nbsp;공&nbsp;내&nbsp;역</h1>
	</div>
	<div class="successtable" style="height:230px; width:1200px;">
		<form name="formm" method="post" style="position:relative; left:250px; top:50px;">
		<table id="cartList" style="text-align:center;">
			<tr><th style="border: 1px solid black; width: 60px; height: 30px; line-height: 30px; font-weight: bold;">번호</th>
				<th style="border: 1px solid black; width: 100px; height: 30px; line-height: 30px; font-weight: bold;">아이디</th>
				<th style="border: 1px solid black; width: 400px; height: 30px; line-height: 30px; font-weight: bold;">제목</th>
				<th style="border: 1px solid black; width: 150px; height: 30px; line-height: 30px; font-weight: bold;">날짜</th>
			</tr>
			<%-- <c:forEach items="${ successList }" var="successVO"> --%>
				<tr><td style="border: 1px solid black"> <%-- ${ successVO.sseq } --%>1</td>
					<td style="border: 1px solid black"><%-- ${ successVO.id } --%>이상준</td>
					<td style="border: 1px solid black;"><a href="ticket.do?command=successView&title=${ successVO.title }" style="color:blue;">
					<%-- ${ successVO.title } --%>김호중 콘서트 티켓팅 성공했습니다</a></td>
					<td style="border: 1px solid black"><%-- ${successVO.indate } --%>2023-05-19</td>
				</tr>
			<%-- </c:forEach> --%>
		</table>
		<div class="clear"></div>
		
	</form>
		
	</div>
	
</div>


<%@ include file="footer.jsp" %>



<%-- <article>
	<h2> 고객 게시판 </h2>
	<h3> 고객님의 질문에 대해서 운영자가 1:1 답변을 드립니다. </h3>
	<form name="formm" method="post">
		<table id="cartList">
			<tr><th>번호</th><th>제목</th><th>등록일</th><th>답변 여부</th></tr>
			<c:forEach items="${ qnaList }" var="qnaVO">
				<tr><td> ${ qnaVO.qseq }</td>
					<td><a href="shop.do?command=qnaView&qseq=${ qnaVO.qseq }">${qnaVO.subject }</a></td>
					<td><fmt:formatDate value="${ qnaVO.indate }" type="date"/></td>
					<td><c:choose>
						<c:when test="${ qnaVO.rep == 1 }"> no </c:when>
						<c:when test="${ qnaVO.rep == 2 }"> yes </c:when>
					</c:choose></td>
				</tr>
			</c:forEach>
		</table>
		<div class="clear"></div>
		<div id="paging" style="font-size:120%; font-weight:bold; margin-left:300px">
			<c:url var="action" value="shop.do?command=qnaList"/>
			<c:if test="${ paging.prev }">
				<a href="${ action }&page=${ paging.beginPage-1 }">◀</a>&nbsp;
			</c:if>
			<c:forEach begin="${ paging.beginPage }" end="${ paging.endPage }" var="index">
				<c:choose>
					<c:when test="${ paging.page==index }">
						[${ index }]
					</c:when>
					<c:otherwise>
						<a href="${ action }&page=${ index }">${ index }</a>&nbsp;
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${ paging.next }">
				<a href="${ action }&page=${ paging.endPage+1 }">▶</a>&nbsp;
			</c:if>
		</div>
		
		<div class="clear"></div><br/>
		
		<div id="buttons" style="float:right">
			<input type="button" value="질문하기" class="submit"
				onClick="location.href='shop.do?command=qnaWriteForm'"/>
			<input type="button" value="쇼핑 계속하기" class="cancel"
				onClick="location.href='shop.do?command=index'"/>
		</div>
		<div class="clear"></div><br/>
	</form>
</article> --%>