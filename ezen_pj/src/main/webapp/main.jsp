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

<div id="success" style="width: 1200px; height: 400px; margin: 0 auto; border: 1px solid black;">
	<div class="title" style="height:150px; text-align:center; width: 1200px; font-size:300%; line-height:150px;
			font-weight:bold; background:#f3f3ff; color:blue;">
			<h1>성&nbsp;공&nbsp;내&nbsp;역</h1>
	</div>
	<div class="successtable" style="height:230px; width:1200px;">
		
	</div>
	
</div>


<%@ include file="footer.jsp" %>



<%-- <h2>Best Item</h2>
<div id="bestProduct">
	<c:forEach items="${ bestList }" var="productVO">
		<div id="item"><!-- 상품 한 개, 한칸 -->
			<a href="shop.do?command=productDetail&pseq=${ productVO.pseq }">
				<img src="product_images/${ productVO.image }"/>
				<h3>${ productVO.name }
					- <fmt:formatNumber value="${ productVO.price2 }" type="currency"/></h3>
			</a>
		</div>
	</c:forEach>
</div> --%>