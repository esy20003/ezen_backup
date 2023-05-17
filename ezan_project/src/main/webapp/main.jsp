<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<link rel="shortcut icon" href="/img/favicon2.png">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>티켓온</title>
<meta name="description" content="국내 최고의 대리티켓팅, 티켓팅 성공을 위한 최고의 파트너">
<meta name="keywords" content="대리티켓팅,티켓팅,트렌드샵,트렌드샵입찰,뮤지컬,뮤지컬티켓팅,뮤지컬대리티켓팅,입찰대행,예약대행,트렌드샵입찰대행">
<meta property="og:type" content="website"> 
<meta property="og:title" content="티켓온">
<meta property="og:description" content="국내 최고의 대리티켓팅, 티켓팅 성공을 위한 최고의 파트너">
<meta property="og:image" content="http://xn--zk5b36n08c.com/img/logo.png">
<meta property="og:url" content="http://xn--zk5b36n08c.com">
<title>티켓온</title>
<link rel="stylesheet" href="http://www.xn--zk5b36n08c.com/css/um_pc_shop.css?ver=161020">
<link rel="stylesheet" href="http://www.xn--zk5b36n08c.com/css/slick.css?ver=161020">
<link rel="stylesheet" href="http://www.xn--zk5b36n08c.com/css/slick-theme.css?ver=161020">
<link rel="stylesheet" href="http://www.xn--zk5b36n08c.com/css/swiper.css?ver=161020">
<link rel="stylesheet" href="http://www.xn--zk5b36n08c.com/css/jquery.mCustomScrollbar.css">
<!--[if lte IE 8]>
<script src="http://www.xn--zk5b36n08c.com/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "http://www.xn--zk5b36n08c.com";
var g5_bbs_url   = "http://www.xn--zk5b36n08c.com/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
</script>
<script src="http://www.xn--zk5b36n08c.com/js/jquery-1.8.3.min.js"></script>
<script src="http://www.xn--zk5b36n08c.com/js/jquery.shop.menu.js?ver=161020"></script>
<script src="http://www.xn--zk5b36n08c.com/js/common.js?ver=161020"></script>
<script src="http://www.xn--zk5b36n08c.com/js/wrest.js?ver=161020"></script>
<script src="http://www.xn--zk5b36n08c.com/js/iscroll.js"></script>
<script src="http://www.xn--zk5b36n08c.com/js/slick.min.js"></script>
<script src="http://www.xn--zk5b36n08c.com/js/jquery.mCustomScrollbar.js"></script>
<script src="http://www.xn--zk5b36n08c.com/js/swiper.min.js"></script>

<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-5623609289667823",
    enable_page_level_ads: true
  });
</script>

<!-- ideakey 20190529 m -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-140943177-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-140943177-1');
</script>
</head>
<body>
<div id="wrap">


<!-- 팝업레이어 시작 { -->
<div id="hd_pop">
    <h2>팝업레이어 알림</h2>

<span class="sound_only">팝업레이어 알림이 없습니다.</span></div>

<script>
$(function() {
    $(".hd_pops_reject").click(function() {
        var id = $(this).attr('class').split(' ');
        var ck_name = id[1];
        var exp_time = parseInt(id[2]);
        $("#"+id[1]).css("display", "none");
        set_cookie(ck_name, 1, exp_time, g5_cookie_domain);
    });
    $('.hd_pops_close').click(function() {
        var idb = $(this).attr('class').split(' ');
        $('#'+idb[1]).css('display','none');
    });
    $("#hd").css("z-index", 1000);
});
</script>
<!-- } 팝업레이어 끝 -->
<div class="us_globalmenu center_wrap">
	<div class="width-fix">
				<a href="http://www.xn--zk5b36n08c.com/bbs/login.php?url=%2F"><b>로그인</b></a>
		<a href="http://www.xn--zk5b36n08c.com/bbs/register.php">회원가입</a>
				<a href="http://www.xn--zk5b36n08c.com/shop/cart.php">장바구니</a>
		<!--<a href="http://www.xn--zk5b36n08c.com/shop/mypage.php">마이페이지</a>
		<a href="http://www.xn--zk5b36n08c.com/shop/wishlist.php">위시리스트</a>-->
		<a href="http://www.xn--zk5b36n08c.com/shop/orderinquiry.php">주문내역조회</a>
		<a href="http://www.xn--zk5b36n08c.com/bbs/board.php?bo_table=qna">1:1 문의하기</a>
	</div>
</div>

<div class="us_header center_wrap">
	<div class="width-fix">
		<em><a href="http://www.xn--zk5b36n08c.com/shop/" id="us_footer_logo"><img src="../img/logo.png" alt="처음으로"></a></em>
		<span>
			<ul>
				<li onClick="location.href='/shop/list.php?ca_id=10'">대리티켓팅</li>
				<var><img src="/img/menu_dot.png" /></var>
				<li onClick="location.href='/shop/list.php?ca_id=20'">선착순예약</li>
				<var><img src="/img/menu_dot.png" /></var>
				<li onClick="location.href='/bbs/board.php?bo_table=success'">성공내역</li>
				<var><img src="/img/menu_dot.png" /></var>
				<li onClick="location.href='/bbs/board.php?bo_table=review'">후기</li>
			</ul>
			<form name="frmsearch1" action="http://www.xn--zk5b36n08c.com/shop/search.php" onsubmit="return search_submit(this);">

			<label for="sch_str" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
			<input type="text" name="q" value="" id="sch_str" required; placeholder="공연명을 검색해주세요.">
			<input type="submit" value="검색" id="sch_submit" class="hide">

			</form>
			<script>
			function search_submit(f) {
				if (f.q.value.length < 2) {
					alert("검색어는 두글자 이상 입력하십시오.");
					f.q.select();
					f.q.focus();
					return false;
				}

				return true;
			}
			</script>
		</span>
	</div>
</div> <!-- us_header -->




<div class="us_body width-fix">


<div class="main_img">
	<div class="filter">
		<div class="center_wrap">
			<h1 onClick="location.href='/shop/list.php?ca_id=10'" title="선착순예약 바로가기"><img src="/img/title1.png" /></h1>
			<div id="main_slide">
				<ul>
										<li class="" onClick="location.href='/shop/item.php?it_id=1682571617'" >
						<h1><img src="/data/item/1682571617/67iM66Oo64W4.png" /></h1>
						<h2>브루노 마스 선예매 잔여 티켓판매</h2>
						<h3>
																											</h3>
						<h4>신청하기</h4></h4>
					</li>
										<li class="" onClick="location.href='/shop/item.php?it_id=1682323251'" >
						<h1><img src="/data/item/1682323251/7IqI6rCA.png" /></h1>
						<h2>SUGA | Agust D TOUR ‘D-DAY’ in SEOUL</h2>
						<h3>
							<p>스탠딩 랜덤 : 500000원</p>							<p>1층 랜덤 : 400000원</p>							<p>전구역 랜덤 : 200000원</p>						</h3>
						<h4>신청하기</h4></h4>
					</li>
										<li class="" onClick="location.href='/shop/item.php?it_id=1673505738'" >
						<h1><img src="/data/item/1673505738/7Jik7Y6Y65287J2Y7Jyg66C5.png" /></h1>
						<h2>뮤지컬 〈오페라의 유령〉</h2>
						<h3>
							<p>대행 수수료 : 120000원</p>																				</h3>
						<h4>신청하기</h4></h4>
					</li>
										<li class="end" >
						<h1><img src="/data/item/1683383394/7YOc7Jew.png" /></h1>
						<h2>TAEYEON CONCERT - The ODD Of LOVE</h2>
						<h3>
							<p>선예매 : 180000원</p>																				</h3>
						<h4 class="end">종료</h4></h4>
					</li>
										<li class="end" >
						<h1><img src="/data/item/1682472582/nct.png" /></h1>
						<h2>NCT DREAM TOUR ‘THE DREAM SHOW2 : In YOUR DREAM’</h2>
						<h3>
							<p>선예매 : 300000원</p>																				</h3>
						<h4 class="end">종료</h4></h4>
					</li>
										<li class="end" >
						<h1><img src="/data/item/1682324355/642U67O07J207KaI.png" /></h1>
						<h2>THE BOYZ 2ND WORLD TOUR : ZENERATION</h2>
						<h3>
							<p>선예매 : 300000원</p>																				</h3>
						<h4 class="end">종료</h4></h4>
					</li>
										<li class="end" >
						<h1><img src="/data/item/1682307611/7IOk7J2064uI.png" /></h1>
						<h2>2023 SHINee FANMEETING</h2>
						<h3>
							<p>선예매 : 180000원</p>																				</h3>
						<h4 class="end">종료</h4></h4>
					</li>
										<li class="end" >
						<h1><img src="/data/item/1682044434/67iM66Oo64W466eI7Iqk.png" /></h1>
						<h2>브루노 마스 내한공연</h2>
						<h3>
							<p>일반예매 : 150000원</p>																				</h3>
						<h4 class="end">종료</h4></h4>
					</li>
										<li class="end" >
						<h1><img src="/data/item/1681704969/dd.png" /></h1>
						<h2>2023 성시경의 축가 콘서트</h2>
						<h3>
							<p>일반예매 : 120000원</p>																				</h3>
						<h4 class="end">종료</h4></h4>
					</li>
										<li class="end" >
						<h1><img src="/data/item/1681088694/67Cx7ZiE.png" /></h1>
						<h2>2023 BAEKHYUN HAPPY BIRTHDAY [B Happy]</h2>
						<h3>
							<p>팬클럽 예매 : 250000원</p>																				</h3>
						<h4 class="end">종료</h4></h4>
					</li>
									</ul>
			</div>
		</div>
	</div>
</div>

<script>
$("#main_slide").mCustomScrollbar({
   //가로
   horizontalScroll:true,
   //테마
   theme:"my-theme",
   //마우스휠 속도
   mouseWheelPixels: 100000,

   advanced:{autoExpandHorizontalScroll:true}
});
</script>

<div class="cs_center center_wrap">
	<h1><img src="/img/cs_title.png" /></h1>
	<h2><img src="/img/process2.png" /></h2>
	<h3><img src="/img/dash_line.png" /></h3>
	<h4>
		<code onClick="location.href='/bbs/board.php?bo_table=qna'"><img src="/img/banner.jpg" /></code>
		<var><img src="/img/csc.jpg" /></var>
	</h4>
</div>

<div class="main_list">
	<div class="center_wrap">
		<h1 onClick="location.href='/shop/list.php?ca_id=20'" title="티켓판매 바로가기">
			<img src="/img/title3.png" />
			<span>티켓온에서는 모든 선착순 예약을 도와드리고 있습니다.</span>
		</h1>
		<ul>
						<li>
				<h1 onClick="location.href='/shop/item.php?it_id=1581575724'"><img src="/data/item/1581575724/1.jpg" /></h1>
				<h2 onClick="location.href='/shop/item.php?it_id=1581575724'">
					<span>기타 선착순 예약</span>
					<em>
						<strong class="blue">선착순예약 </strong> <strong class="red">￦0</strong>
					</em>
				</h2>
								<h6><span>종료되었습니다</span></h6>
							</li>
						<li>
				<h1 onClick="location.href='/shop/item.php?it_id=1581572394'"><img src="/data/item/1581572394/KakaoTalk_20200212_193555084.jpg" /></h1>
				<h2 onClick="location.href='/shop/item.php?it_id=1581572394'">
					<span>물품 온라인 선착순 대행 예약</span>
					<em>
						<strong class="blue">선착순예약 </strong> <strong class="red">￦0</strong>
					</em>
				</h2>
								<h6><span>종료되었습니다</span></h6>
							</li>
						<li>
				<h1 onClick="location.href='/shop/item.php?it_id=1581572338'"><img src="/data/item/1581572338/KakaoTalk_20200212_181929817.jpg" /></h1>
				<h2 onClick="location.href='/shop/item.php?it_id=1581572338'">
					<span>광고 입찰 대행 예약</span>
					<em>
						<strong class="blue">선착순예약 </strong> <strong class="red">￦0</strong>
					</em>
				</h2>
								<h6><span>종료되었습니다</span></h6>
							</li>
						<li>
				<h1 onClick="location.href='/shop/item.php?it_id=1581572204'"><img src="/data/item/1581572204/66y47ZmU7LK07Jyh7Iuc7ISk2.jpg" /></h1>
				<h2 onClick="location.href='/shop/item.php?it_id=1581572204'">
					<span>문화체육시설 선착순 예약</span>
					<em>
						<strong class="blue">선착순예약 </strong> <strong class="red">￦30,000</strong>
					</em>
				</h2>
								<h6><span>종료되었습니다</span></h6>
							</li>
					</ul>
	</div>

	<!--
	<div class="center_wrap">
		<h1>
			<img src="/img/title2.png" />
			<span>필요없는 티켓이 있다면 티켓온에게 문의주세요. 안전하게 매입합니다.</span>
		</h1>
		<ul>
			<li>
				<h1><img src="/img/main_list.jpg" /></h1>
				<h2>
					<span>박지훈 팬미팅</span>
					<em>
						<strong class="blue">티켓매입 </strong>평균가격 : <strong class="red">10,000</strong>
					</em>
				</h2>
			</li>
			<li>
				<h1><img src="/img/main_list.jpg" /></h1>
				<h2>
					<span>박지훈 팬미팅</span>
					<em>
						<strong class="blue">티켓매입 </strong>평균가격 : <strong class="red">10,000</strong>
					</em>
				</h2>
			</li>
			<li>
				<h1><img src="/img/main_list.jpg" /></h1>
				<h2>
					<span>박지훈 팬미팅</span>
					<em>
						<strong class="blue">티켓매입 </strong>평균가격 : <strong class="red">10,000</strong>
					</em>
				</h2>
			</li>
			<li>
				<h1><img src="/img/main_list.jpg" /></h1>
				<h2>
					<span>박지훈 팬미팅</span>
					<em>
						<strong class="blue">티켓매입 </strong>평균가격 : <strong class="red">10,000</strong>
					</em>
				</h2>
			</li>
		</ul>
	</div>
	-->
</div>



</div> <!-- us_body -->

<div class="us_footer">
    <div class="center_wrap">
        <h1><a href="http://www.xn--zk5b36n08c.com/shop/" id="us_footer_logo"><img src="/img/foot_logo.png" alt="처음으로"></a></h1>
        <h2>
            <span>티켓온</span><var>,</var>
			<span><b>TEL :</b> 010-6257-0799</span><BR />
            <!--<span>동탄대로677-12 효성ICT타워</span><var>,</var>
            <span><b>대표이사</b> 조창한</span><var>,</var>-->
			<span><b>사업자 등록번호 :</b> 744-38-00710</span><var>,</var>
            <span><b>통신판매업신고번호 :</b> 2019-용인기흥-0958</span><!--<var>,</var>
            <span><b>개인정보 보호책임자 :</b> 조창한</span>-->
            <em>Copyright TICKET<strong>ON</strong> 2019. All rights reserved.</em>
			<em></em>
			<!-- KB에스크로 이체 인증마크 적용 시작 -->
			<script>
			function onPopKBAuthMark()
			{
				window.open('','KB_AUTHMARK','height=604, width=648, status=yes, toolbar=no, menubar=no, location=no');
				document.KB_AUTHMARK_FORM.action='https://okbfex.kbstar.com/quics';
				document.KB_AUTHMARK_FORM.target='KB_AUTHMARK';
				document.KB_AUTHMARK_FORM.submit();
			}
			</script>
			<form name="KB_AUTHMARK_FORM" method="get">
			<input type="hidden" name="page" value="C021590"/>
			<input type="hidden" name="cc" value="b034066:b035526"/>
			<input type="hidden" name="mHValue" value='9cfbff4f0d211879829400af2ff3592c'/>
			</form>
			<a href="#" onclick="javascript:onPopKBAuthMark();return false;">
			<img src="http://img1.kbstar.com/img/escrow/escrowcmark.gif" border="0"/>
			</a>
			<!-- KB에스크로이체 인증마크 적용 종료 -->
        </h2>
    </div>
</div>

</div> <!-- wrap -->




<script src="http://www.xn--zk5b36n08c.com/js/sns.js"></script>
<!-- } 하단 끝 -->



<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->

</body>
</html>
