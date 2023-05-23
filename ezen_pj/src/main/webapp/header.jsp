<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket Shop</title>

<link href="css/ticketing.css" rel="stylesheet">

<link rel="stylesheet" href="css/apply.css?ver=1" />
<link rel="stylesheet" href="css/login.css?ver=1" />
<link rel="stylesheet" href="css/qna.css?ver=1" />
<script src="script/jquery-3.7.0.min.js"></script>
<script src="script/main.js"></script>
<script src="script/member.js"></script>
<script src="apply_register/apply_register.js"></script>

<script type="text/javascript">
var imgNum = 0;
var dist = 0;

$(function(){
   $("#btn2").click(function(){
      if(imgNum == 2){
         imgNum = 0;
         dist = imgNum * -380;
         $("#imgview3").animate({left:dist}, 300);
      }else{
         imgNum ++;
         dist = imgNum * -380;
         $("#imgview3").animate({left:dist}, 300);
      }
   });
});

$(function(){
   $("#btn1").click(function(){
      if(imgNum == 0){
         imgNum = 2;
         dist = imgNum * -380;
         $("#imgview3").animate({left:dist}, 300);
      }else{
         imgNum--;
         dist = imgNum * -380;
         $("#imgview3").animate({left:dist}, 300);
      }
   })
});

$(function(){
	var successNum = 0;
	$('#successleft').click(function(){
		if(successNum == 0){
			successNum = 2;
			dist = successNum * -250;
			$('.successlistview').animate({left:dist}, 300);
		}else{
			successNum--;
			dist = successNum * -250;
			$('.successlistview').animate({left:dist}, 300);
		}
	});
});

$(function(){
	var successNum = 0;
	$('#successright').click(function(){
		if(successNum == 2){
			successNum = 0;
			dist = successNum * -250;
			$('.successlistview').animate({left:dist}, 300);
		}else{
			successNum++;
			dist = successNum * -250;
			$('.successlistview').animate({left:dist}, 300);
		}
	});
});

</script>

<style type="text/css">
#item h2{width: 258px; height: 20px; line-height:43px; font-size: 15px; font-weight: bold;}
#bestContent{height: 600px; border: 3px solid black; margin: 0 auto; width: 1200px;}
#bestContent .title{height:170px; text-align:center; margin:5px 5px 5px 5px; width: 1190px; font-size:300%; line-height:130px; font-weight:bold; background:#f3f3ff; color:red; border: 1px solid black;}
#bestContent #bestcontentback{width: 1192px;margin: 0 auto;height: 400px;background: #f7f0f0;border: 1px solid black;}
#bestContent #bestcontentback .imgview1{width: 1000px; height: 400px; background: #ffa0a0; margin: 0 auto;}
#bestContent #bestcontentback .imgview1 .imgview2{position:relative;width:760px;height: 400px;background: white; overflow:hidden; margin: 0 auto;}
#bestContent #bestcontentback .imgview1 .imgview2 #imgview3{position:absolute; width: 1520px; height:380px; top: 0; left:0;}
#bestContent #bestcontentback .imgview1 .imgview2 #imgview3 .imgview4{position:relative; width: 360px; height:360px; margin: 25px 10px 10px 10px; background:black; float:left;}
#bestContent #bestcontentback .imgview1 .imgview2 #imgview3 .imgview4 #img1{width:350px; height:250px; margin:5px 5px 5px 5px; background:white;}
#bestContent #bestcontentback .imgview1 .imgview2 #imgview3 .imgview4 #img1 img{width:350px; height:250px;}
#bestContent #bestcontentback .imgview1 .imgview2 #imgview3 .imgview4 #title1{width:350px; height:40px; margin:5px 5px 5px 5px; background:white;}
#bestContent #bestcontentback .imgview1 .imgview2 #imgview3 .imgview4 #title1 h3{line-height: 40px; text-align: center; width: 350px; font-size: 120%; font-weight: bold;}
#bestContent #bestcontentback .imgview1 .imgview2 #imgview3 .imgview4 #apply{width:350px; height:40px; margin: 5px 5px 5px 5px; background:white;}
#bestContent #bestcontentback .imgview1 .imgview2 #imgview3 .imgview4 #apply h3{line-height:40px; text-align:center; width:350px; font-size:120%; font-weight: bold;}
#bestContent #bestcontentback .imgview1 #remote1{position: relative;left: 915px;bottom: 207px;cursor: pointer; width:50px; height:50px;}
#bestContent #bestcontentback .imgview1 #remote1 ul{width:50px; height:50px;}
#bestContent #bestcontentback .imgview1 #remote1 ul li{text-align: center; font-size: 200%; line-height: 47px; color: black; background: white; width: 50px; border-radius: 50%; height: 50px;}
#bestContent #bestcontentback .imgview1 #remote2{position: relative; left: 35px; bottom: 270px; width:50px; height:50px; cursor:pointer;}
#bestContent #bestcontentback .imgview1 #remote2 ul{width:50px; height:50px;}
#bestContent #bestcontentback .imgview1 #remote2 ul li{text-align: center; font-size: 200%; line-height: 47px; color: black; background: white; width: 50px; border-radius: 50%; height: 50px;}
#concert{width: 1200px; height: 600px; border: 1px solid black; margin: 0 auto;}
#concert .title{height: 170px; text-align:center; margin: 5px 15px 5px 5px; width: 1190px; font-size:300%; line-height:190px; font-weight:bold; background:#f3f3ff; color:red;}
#concert .panel{height:390px;width: 1200px;margin: 0 auto;margin-left: 45px;}
#concert .panel #item{float: left; width: 250px; height: 390px;}
#concert .panel #item img{height:300px; width:250px;}
#concert .panel #item h1{width: 258px; height: 43px; line-height: 43px; text-align: center; font-size: 16px; font-weight: bold; color: #0014ff; background: #e4ffae;   margin: 0 auto;}
#concert .panel #item h2{width: 258px; height: 20px; line-height:43px; font-size: 15px; font-weight: bold;}
#musical{width: 1200px; height: 600px; border: 1px solid black; margin: 0 auto;}
#musical .title{height: 170px; text-align:center; margin: 5px 15px 5px 5px; width: 1190px; font-size:300%; line-height:190px; font-weight:bold; background:#f3f3ff; color:red;}
#musical .panel{height:390px;width: 1200px;margin: 0 auto;margin-left: 45px;}
#musical .panel #item{float: left; width: 250px; height: 390px;}
#musical .panel #item img{height:300px; width:250px;}
#musical .panel #item h1{width: 258px; height: 43px; line-height: 43px; text-align: center; font-size: 16px; font-weight: bold; color: #0014ff; background: #e4ffae;   margin: 0 auto;}
#musical .panel #item h2{width: 258px; height: 20px; line-height:43px; font-size: 15px; font-weight: bold;}
#success{width: 1200px; height: 400px; margin: 0 auto; border: 1px solid black;}
#success .title{height:150px; text-align:center; width: 1200px; font-size:300%; line-height:150px; font-weight:bold; background:#f3f3ff; color:blue;}
#success .successlist1{position:relative; height:200px; width:1180px;margin:24px 24px 9px 9px; border:1px solid black;}
#success .successlist1 .successlistrealview{overflow:hidden; position:relative; height:178px; width:498px; margin:10px 10px 100px 200px; border:1px solid black; left:150px;}
#success .successlist1 .successlistrealview .successlistview{position:absolute; height:178px; width:1000px;}
#success .successlist1 .successlistrealview .successlistview .successlisttitle{width:200px; height: 100px; border:1px solid black;}
#success .successlist1 .successlistrealview .successlistview .successlisttitle h2{font-family: none;
    color: black;
    padding-bottom: 0;
    border-bottom: none;
    background: white;
    text-align: center;
    width: 200px;
    font-size: 20px;
    font-weight: bold;
    height: 100px;
    line-height: 50px;}
#success .successlist1 .successlistrealview .successlistview .successitem{
    width: 200px;
    height: 160px;
    float: left;
    margin-left: 25px;
    margin-right: 25px;
    margin-top: 10px;
}
#success .successlist1 .successlistrealview .successlistview .successlistid{width:200px; height:40px; margin-top:15px;}
#success .successlist1 .successlistrealview .successlistview .successlistid h2{font-family: ""; color: black; padding-bottom: 0px; border: 1px solid black; background: none;
 width: 200px; height: 40px; line-height: 40px; font-weight: bold; text-align: center; font-size: 25px;}
#success .successlist1 #btn3 #successleft{position: absolute;font-size: 30px;font-weight: bold;text-align: center;border: 1px solid black;width: 50px;height: 50px;border-radius: 50%;line-height: 48px;float: left; cursor:pointer;}
#success .successlist1 #btn3 #successright{position: absolute; font-size: 30px;font-weight: bold;text-align: center;border: 1px solid black;width: 50px;height: 50px;border-radius: 50%;line-height: 48px;left:640px; cursor:pointer;}
 #success .successlist1 #btn3{position:absolute; top:80px; left:250px;}
</style>
</head>
<body>
   <div id="wrap">
      <header id="header">
         <div class="header_inner">
            <div class="top_menu">
               <ul>
                  <li><a href="ticket.do?command=qnaList">1:1 문의하기</a></li>
                  <li><a href="ticket.do?command=myPage">마이 페이지</a></li>
                  <li><a href="ticket.do?command=cartList">장바구니</a></li>
                  <c:choose>
                     <c:when test="${ empty loginUser }">
                        <li><a href="ticket.do?command=contract">회원가입</a></li>
                        <li><a href="ticket.do?command=loginForm">로그인</a></li>
                     </c:when>
                     <c:otherwise>
                        <li>${ loginUser.name }(${ loginUser.id })</li>
                        <li><a href="ticket.do?command=editForm">정보수정</a></li>
                        <li><a href="ticket.do?command=logout">로그아웃</a></li>
                     </c:otherwise>
                  </c:choose>
               </ul>
            </div>
            <div class="top_header_inner" >
               <div id="logo">
                  <a href="ticket.do?command=index"> <img src="images/logo.png" />
                  </a>
               </div>

               <nav id="category_menu">
                  <ul>
                     <li><a href="ticket.do?command=proxyTicketingForm">대리
                           티켓팅</a>
                        <ul class="depth2_menu">
                           <li><a href="ticket.do?command=musicalForm">콘서트</a></li>
                           <li><a href="ticket.do?command=concertForm">뮤지컬</a></li>
                           <li><a href="ticket.do?command=sportsForm">스포츠</a></li>
                           <li><a href="ticket.do?command=festivalForm">페스티벌</a></li>
                           <li><a href="ticket.do?command=exhibitionForm">전시/행사</a></li>
                        </ul></li>
                     <li><a
                        href="ticket.do?command=applyAndRegister">신청/등록</a></li>
                     <li><a href="ticket.do?command=successHistoryForm">성공내역</a></li>
                     <li><a href="ticket.do?command=epilogueForm">후기</a></li>
                  </ul>
               </nav>
               <div class="search_box">
                  <input class="input_search" type="text" name="key"
                     value="${ key }" placeholder="공연명을 검색해주세요" /> <input
                     type="button" class="btn" value="검색"
                     onClick="go_search('contentList'); " />
               </div>
            </div>
         </div>
      </header>