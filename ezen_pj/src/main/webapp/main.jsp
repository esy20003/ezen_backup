<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="header.jsp" %>


<div id="bestContent">
      <div class="title">
         <h1>Best Content</h1>
      </div>
      <div id="bestcontentback">
         <div class="imgview1">
            <div class="imgview2" >
               <div id="imgview3">
               	  <c:forEach items="${ bestContent }" begin="0" end="3" var="bestContentVO">
                  <div class="imgview4">
                     <div id="img1">
                        <a href="ticket.do?command=detailcontent">
                           <img src="${ bestContentVO.image }"/>
                        </a>
                     </div>
                     <div id="title1">
                        <h3>'${ bestContentVO.title }'</h3>
                     </div>
                     <div id="apply">
                        <a href="ticket.do?command=detail">
                           <h3>신청하기</h3>
                        </a>
                     </div>
                  </div>
                  </c:forEach>
                  <div class="imgview4">
                     <div id="img1">
                        <img src="images/list2.png"/>
                     </div>
                     <div id="title1">
                        <h3>'세종문화회관 S씨어터'</h3>
                     </div>
                  </div>
                  <div class="imgview4">
                     <div id="img1">
                        <img src="images/list1.png"/>
                     </div>
                     <div id="title1">
                        <h3>'세종문화회관 S씨어터'</h3>
                     </div>
                  </div>
                  <div class="imgview4">
                     <div id="img1">
                        <img src="images/list2.png"/>
                     </div>
                     <div id="title1">
                        <h3>'세종문화회관 S씨어터'</h3>
                     </div>
                  </div>
               </div>
            </div>
               <div id="remote1">
                  <ul>
                     <li id="btn2">▶</li>
                  </ul>
                 </div>
                 <div id="remote2">
                    <ul>
                       <li id="btn1">◀</li>
                    </ul>
                 </div>
         </div>
         
         </div>
         
    </div>

<div id="concert">
   <div class="title">
         <h1>Concert</h1>
   </div>
   <div class="panel">
      <%-- <c:forEach items="${ concert }" var="contentVO"> --%>
         <div id="item">
            <a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
               <img src="images/list1.png"/>
            </a>
            <h1>뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
            <h2>
             신청하기 <%-- ${ contentVO.location } --%></h2>
         </div>
         <div id="item">
            <a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
               <img src="images/list1.png"/>
            </a>
            <h1>뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
            <h2>
             신청하기 <%-- ${ contentVO.location } --%></h2>
         </div>
         <div id="item">
            <a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
               <img src="images/list1.png"/>
            </a>
            <h1>뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
            <h2>
             신청하기 <%-- ${ contentVO.location } --%></h2>
         </div>
         <div id="item">
            <a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
               <img src="images/list1.png"/>
            </a>
            <h1>뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
            <h2>
             신청하기 <%-- ${ contentVO.location } --%></h2>
         </div>
      <%-- </c:forEach> --%>
   </div>
</div>

<div id="musical">
   <div class="title">
         <h1>Musical</h1>
   </div>
   <div class="panel">
      <%-- <c:forEach items="${ musical }" var="contentVO"> --%>
         <div id="item">
            <a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
               <img src="images/list1.png"/>
            </a>
            <h1>뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
            <h2>
             신청하기 <%-- ${ contentVO.location } --%></h2>
         </div>
         <div id="item">
            <a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
               <img src="images/list1.png"/>
            </a>
            <h1>뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
            <h2>
             신청하기 <%-- ${ contentVO.location } --%></h2>
         </div>
         <div id="item">
            <a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
               <img src="images/list1.png"/>
            </a>
            <h1>뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
            <h2>
             신청하기 <%-- ${ contentVO.location } --%></h2>
         </div>
         <div id="item">
            <a href="ticket.do?command=contentDetail&cseq=${ contentVO.cseq }">
               <img src="images/list1.png"/>
            </a>
            <h1>뮤지컬 <더 테일 에이프릴 풀스><%-- ${ contentVO.title } --%></h1>
            <h2>
             신청하기 <%-- ${ contentVO.location } --%></h2>
         </div>
      <%-- </c:forEach> --%>
   </div>
</div>

<div id="success">
   <div class="title">
         <h1>성&nbsp;공&nbsp;내&nbsp;역</h1>
   </div>
   <div class="successlist1">
         <div class="successlistrealview">
            <div class="successlistview">
               <div class="successitem">
	               <div class="successlisttitle">
	                  <h2>김호중 콘서트 티켓팅 성공했습니다.</h2>
	               </div>
	               <div class="successlistid">
	                  <h2>이상훈</h2>
	               </div>
	           </div>
	           <div class="successitem">
	               <div class="successlisttitle">
	                  <h2>나는 행복합니다.</h2>
	               </div>
	               <div class="successlistid">
	                  <h2>김한화</h2>
	               </div>
               </div>
               <div class="successitem">
	               <div class="successlisttitle">
	                  <h2>삼성 대 두산 경기 티켓팅 성공했습니다.</h2>
	               </div>
	               <div class="successlistid">
	                  <h2>김지은</h2>
	               </div>
               </div>
               <div class="successitem">
	               <div class="successlisttitle">
	                  <h2>부산아이가</h2>
	               </div>
	               <div class="successlistid">
	                  <h2>조재준</h2>
	               </div>
               </div>
            </div>
            
         </div>
         <div id="btn3">
            	<ul>
            		<li id="successleft">◁</li>
            		<li id="successright">▷</li>
            	</ul>
         </div>
   </div>
   
</div>


<%@ include file="footer.jsp" %>