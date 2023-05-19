<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>


<section name="applyBody">
	<div 
</section>



<body style="">
	<a name="t"></a>
	<div id="wrap" oncontextmenu="return false" ondragstart="return false"
		onselectstart="return false">
		<!-- 컨텐츠 -->
		<div id="container">
			<!-- 빠른예매 -->
			<div id="ticket" class="ticket ko">

				<!-- 타이틀 -->
				<div class="navi">
					<div class="newsletter">
						<p style="display: none;">
							<a href="#">Click here</a> if you want to receive newsletter
							about English subtitle movies
						</p>
					</div>
					<span class="right"> <a class="button button-english"
						href="#" onmousedown="javascript:logClick('옵션/ENGLISH');"
						onclick="switchLanguage(); return false;"><span>ENGLISH</span></a>
						<a class="button button-schedule" href="#"
						onmousedown="javascript:logClick('옵션/상영시간표');"
						onclick="openSchedulePopup();return false;" title="새창열기"><span>상영시간표</span></a>
						<a class="button button-reservation-restart" href="#"
						onmousedown="javascript:logClick('옵션/예매다시하기');"
						onclick="ticketRestart(); return false;"><span>예매 다시하기</span></a>

					</span>

				</div>
				<!-- //타이틀 -->
				<!-- 메인컨텐츠 -->
				<div class="steps">
					<!-- step1 -->
					<div class="step step1" style="height: 600px; display: block;">
						<!-- MOVIE 섹션 -->
						<div class="section section-movie">
							<!-- col-head -->
							<div class="col-head" id="skip_movie_list">
								<h3 class="sreader">영화</h3>
								<a href="#" class="skip_to_something"
									onclick="skipToSomething('skip_theater_list');return false;">영화선택
									건너뛰기</a>
							</div>
							<!-- col-body -->
							<div class="col-body" style="height: 565px;">
								<!-- 영화선택 -->
								<div class="movie-select">
									<div class="tabmenu">
										<span class="side on"></span> <a href="#"
											class="button menu1 selected">전체</a> <span class="side on"></span>
										<a href="#" class="button menu2">아트하우스<span class="arrow"></span></a>
										<div class="tabmenu-selectbox MOVIECOLLAGE"
											style="display: none;">
											<ul>
												<li><a href="#" onclick="return false;">전체</a></li>
												<li><a href="#" onclick="return false;">최신작</a></li>
												<li com_cd="03"><a href="#" onclick="return false;">시네마톡</a></li>
												<li com_cd="09"><a href="#" onclick="return false;">STAGE</a></li>
												<li com_cd="85"><a href="#" onclick="return false;">라이브러리톡</a></li>
												<li com_cd="HA"><a href="#" onclick="return false;">명씨네
														ART기획전</a></li>
												<li com_cd="WP"><a href="#" onclick="return false;">언택트톡</a></li>
											</ul>
										</div>
										<span class="side"></span> <a href="#" onclick="return false;"
											class="button menu3">특별관<span class="arrow"></span></a>
										<div class="tabmenu-selectbox SPECIALTHEATER"
											style="display: none;">
											<ul>
												<li><a href="#" onclick="return false;">전체</a></li>
												<li><a href="#" onclick="return false;">IMAX</a></li>
												<li><a href="#" onclick="return false;">4DX</a></li>
												<li><a href="#" onclick="return false;">SCREENX</a></li>
												<li><a href="#" onclick="return false;">PRIVATE BOX</a></li>
												<li><a href="#" onclick="return false;">SUITE
														CINEMA</a></li>
												<li><a href="#" onclick="return false;">CINE de
														CHEF</a></li>
												<li><a href="#" onclick="return false;">TEMPUR
														CINEMA</a></li>
												<li><a href="#" onclick="return false;">GOLD CLASS</a></li>
												<li><a href="#" onclick="return false;">CINE&amp;FORET</a></li>
												<li><a href="#" onclick="return false;">CINE&amp;LIVINGROOM</a></li>
												<li><a href="#" onclick="return false;">CINE KIDS</a></li>
												<li><a href="#" onclick="return false;">DOLBY ATMOS</a></li>
												<li><a href="#" onclick="return false;">PREMIUM</a></li>
												<li><a href="#" onclick="return false;">STARIUM</a></li>
												<li><a href="#" onclick="return false;">SPHERX</a></li>
												<li><a href="#" onclick="return false;">BRAND</a></li>
											</ul>
										</div>
										<span class="side"></span>
									</div>
									<div class="sortmenu">
										<a href="#" onclick="sortMovieByRank();return false;"
											id="movieSortRankBtn" class="button btn-rank selected">예매율순</a>
										<a href="#" onclick="sortMovieByName();return false;"
											id="movieSortNameBtn" class="button btn-abc">가나다순</a>

									</div>
									<div class="movie-list nano has-scrollbar has-scrollbar-y"
										id="movie_list">
										<ul class="content scroll-y"
											onscroll="movieSectionScrollEvent();" tabindex="-1"
											style="right: -17px;">
											<li class="" data-index="0" movie_cd_group="20032571"
												movie_idx="86996"><a href="#" onclick="return false;"
												title="분노의질주-라이드오어다이" alt="분노의질주-라이드오어다이"><i
													class="cgvIcon etc age15">15</i><span class="text">분노의질주-라이드오어다이</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="1" movie_cd_group="20032729"
												movie_idx="87045"><a href="#" onclick="return false;"
												title="범죄도시3" alt="범죄도시3"><i class="cgvIcon etc age15">15</i><span
													class="text">범죄도시3</span><span class="sreader"></span></a></li>
											<li class="" data-index="2" movie_cd_group="20032164"
												movie_idx="86883"><a href="#" onclick="return false;"
												title="가디언즈오브갤럭시-Volume3" alt="가디언즈오브갤럭시-Volume3"><i
													class="cgvIcon etc age12">12</i><span class="text">가디언즈오브갤럭시-Volume3</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="3" movie_cd_group="20031612"
												movie_idx="86720"><a href="#" onclick="return false;"
												title="더퍼스트슬램덩크" alt="더퍼스트슬램덩크"><i
													class="cgvIcon etc age12">12</i><span class="text">더퍼스트슬램덩크</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="4" movie_cd_group="20031675"
												movie_idx="86720"><a href="#" onclick="return false;"
												title="더퍼스트슬램덩크" alt="더퍼스트슬램덩크"><i
													class="cgvIcon etc age12">12</i><span class="text">더퍼스트슬램덩크</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="5" movie_cd_group="20032612"
												movie_idx="87003"><a href="#" onclick="return false;"
												title="메리마이데드바디" alt="메리마이데드바디"><i
													class="cgvIcon etc age12">12</i><span class="text">메리마이데드바디</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="6" movie_cd_group="20032095"
												movie_idx="86849"><a href="#" onclick="return false;"
												title="인어공주" alt="인어공주"><i class="cgvIcon etc ageAll">ALL</i><span
													class="text">인어공주</span><span class="sreader"></span></a></li>
											<li class="" data-index="7" movie_cd_group="20032722"
												movie_idx="87038"><a href="#" onclick="return false;"
												title="SUGAAgustDTOURD-DAYinJAPANLIVEVIEWING"
												alt="SUGAAgustDTOURD-DAYinJAPANLIVEVIEWING"><i
													class="cgvIcon etc age12">12</i><span class="text">SUGAAgustDTOURD-DAYinJAPANLIVEVIEWING</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="8" movie_cd_group="20032709"
												movie_idx="87035"><a href="#" onclick="return false;"
												title="남은인생10년" alt="남은인생10년"><i
													class="cgvIcon etc age12">12</i><span class="text">남은인생10년</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="9" movie_cd_group="20030889"
												movie_idx="86341"><a href="#" onclick="return false;"
												title="슈퍼마리오브라더스" alt="슈퍼마리오브라더스"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">슈퍼마리오브라더스</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="10" movie_cd_group="20032498"
												movie_idx="86959"><a href="#" onclick="return false;"
												title="슬픔의삼각형" alt="슬픔의삼각형"><i class="cgvIcon etc age15">15</i><span
													class="text">슬픔의삼각형</span><span class="sreader"></span></a></li>
											<li class="" data-index="11" movie_cd_group="20032570"
												movie_idx="86995"><a href="#" onclick="return false;"
												title="극장판짱구는못말려-동물소환닌자배꼽수비대" alt="극장판짱구는못말려-동물소환닌자배꼽수비대"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">극장판짱구는못말려-동물소환닌자배꼽수비대</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="12" movie_cd_group="20031945"
												movie_idx="86815"><a href="#" onclick="return false;"
												title="스즈메의문단속" alt="스즈메의문단속"><i
													class="cgvIcon etc age12">12</i><span class="text">스즈메의문단속</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="13" movie_cd_group="20032420"
												movie_idx="86943"><a href="#" onclick="return false;"
												title="TOMORROWXTOGETHERWORLDTOUR「ACTSWEETMIRAGE」INLA-LIVEVIEWING"
												alt="TOMORROWXTOGETHERWORLDTOUR「ACTSWEETMIRAGE」INLA-LIVEVIEWING"><i
													class="cgvIcon etc age12">12</i><span class="text">TOMORROWXTOGETHERWORLDTOUR「ACTSWEETMIRAGE」INLA-LIVEVIEWING</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="14" movie_cd_group="20031991"
												movie_idx="86825"><a href="#" onclick="return false;"
												title="아기공룡둘리-얼음별대모험리마스터링" alt="아기공룡둘리-얼음별대모험리마스터링"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">아기공룡둘리-얼음별대모험리마스터링</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="15" movie_cd_group="20032279"
												movie_idx="86912"><a href="#" onclick="return false;"
												title="롱디" alt="롱디"><i class="cgvIcon etc age12">12</i><span
													class="text">롱디</span><span class="sreader"></span></a></li>
											<li class="" data-index="16" movie_cd_group="20032723"
												movie_idx="87039"><a href="#" onclick="return false;"
												title="메이플스토리2023SUMMERSHOWCASENEWAGE"
												alt="메이플스토리2023SUMMERSHOWCASENEWAGE"><i
													class="cgvIcon etc age15">15</i><span class="text">메이플스토리2023SUMMERSHOWCASENEWAGE</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="17" movie_cd_group="20032611"
												movie_idx="87002"><a href="#" onclick="return false;"
												title="문재인입니다" alt="문재인입니다"><i class="cgvIcon etc age12">12</i><span
													class="text">문재인입니다</span><span class="sreader"></span></a></li>
											<li class="" data-index="18" movie_cd_group="20032702"
												movie_idx="87032"><a href="#" onclick="return false;"
												title="너의이름은." alt="너의이름은."><i class="cgvIcon etc age12">12</i><span
													class="text">너의이름은.</span><span class="sreader"></span></a></li>
											<li class="" data-index="19" movie_cd_group="20032459"
												movie_idx="86949"><a href="#" onclick="return false;"
												title="2001스페이스오디세이" alt="2001스페이스오디세이"><i
													class="cgvIcon etc age12">12</i><span class="text">2001스페이스오디세이</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="20" movie_cd_group="20032701"
												movie_idx="87031"><a href="#" onclick="return false;"
												title="드리핀스페셜무비:에덴" alt="드리핀스페셜무비:에덴"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">드리핀스페셜무비:에덴</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="21" movie_cd_group="20032274"
												movie_idx="86909"><a href="#" onclick="return false;"
												title="존윅4" alt="존윅4"><i class="cgvIcon etc age18">18</i><span
													class="text">존윅4</span><span class="sreader"></span></a></li>
											<li class="" data-index="22" movie_cd_group="20032350"
												movie_idx="86925"><a href="#" onclick="return false;"
												title="옥수역귀신" alt="옥수역귀신"><i class="cgvIcon etc age15">15</i><span
													class="text">옥수역귀신</span><span class="sreader"></span></a></li>
											<li class="" data-index="23" movie_cd_group="20032568"
												movie_idx="86993"><a href="#" onclick="return false;"
												title="토리와로키타" alt="토리와로키타"><i class="cgvIcon etc age15">15</i><span
													class="text">토리와로키타</span><span class="sreader"></span></a></li>
											<li class="" data-index="24" movie_cd_group="20032275"
												movie_idx="86910"><a href="#" onclick="return false;"
												title="드림" alt="드림"><i class="cgvIcon etc age12">12</i><span
													class="text">드림</span><span class="sreader"></span></a></li>
											<li class="" data-index="25" movie_cd_group="20032634"
												movie_idx="87009"><a href="#" onclick="return false;"
												title="핑크퐁과아기상어의생일파티대소동" alt="핑크퐁과아기상어의생일파티대소동"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">핑크퐁과아기상어의생일파티대소동</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="26" movie_cd_group="20032696"
												movie_idx="87030"><a href="#" onclick="return false;"
												title="(라이브뷰잉)SANKYOpresentsWalkureFINALLIVETOUR2023～LastMission～LIVEVIEWING"
												alt="(라이브뷰잉)SANKYOpresentsWalkureFINALLIVETOUR2023～LastMission～LIVEVIEWING"><i
													class="cgvIcon etc age15">15</i><span class="text">(라이브뷰잉)SANKYOpresentsWalkureFINALLIVETOUR2023～LastMission～LIVEVIEWING</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="27" movie_cd_group="20031907"
												movie_idx="86806"><a href="#" onclick="return false;"
												title="클로즈" alt="클로즈"><i class="cgvIcon etc age12">12</i><span
													class="text">클로즈</span><span class="sreader"></span></a></li>
											<li class="" data-index="28" movie_cd_group="20032566"
												movie_idx="86991"><a href="#" onclick="return false;"
												title="극장판포켓몬스터DP-아르세우스초극의시공으로"
												alt="극장판포켓몬스터DP-아르세우스초극의시공으로"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">극장판포켓몬스터DP-아르세우스초극의시공으로</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="29" movie_cd_group="20032565"
												movie_idx="86990"><a href="#" onclick="return false;"
												title="말이야바른말이지" alt="말이야바른말이지"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">말이야바른말이지</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="30" movie_cd_group="20032641"
												movie_idx="87012"><a href="#" onclick="return false;"
												title="뮤지컬더데빌2021" alt="뮤지컬더데빌2021"><i
													class="cgvIcon etc age15">15</i><span class="text">뮤지컬더데빌2021</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="31" movie_cd_group="20027035"
												movie_idx="84726"><a href="#" onclick="return false;"
												title="더데빌" alt="더데빌"><i class="cgvIcon etc age15">15</i><span
													class="text">더데빌</span><span class="sreader"></span></a></li>
											<li class="" data-index="32" movie_cd_group="20032640"
												movie_idx="87011"><a href="#" onclick="return false;"
												title="뮤지컬더데빌2018" alt="뮤지컬더데빌2018"><i
													class="cgvIcon etc age15">15</i><span class="text">뮤지컬더데빌2018</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="33" movie_cd_group="20026000"
												movie_idx="84341"><a href="#" onclick="return false;"
												title="아르코라이브뮤지컬호프" alt="아르코라이브뮤지컬호프"><i
													class="cgvIcon etc age12">12</i><span class="text">아르코라이브뮤지컬호프</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="34" movie_cd_group="20032351"
												movie_idx="86926"><a href="#" onclick="return false;"
												title="킬링로맨스" alt="킬링로맨스"><i class="cgvIcon etc age15">15</i><span
													class="text">킬링로맨스</span><span class="sreader"></span></a></li>
											<li class="" data-index="35" movie_cd_group="20032613"
												movie_idx="87004"><a href="#" onclick="return false;"
												title="거신-바람의아이" alt="거신-바람의아이"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">거신-바람의아이</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="36" movie_cd_group="20021195"
												movie_idx="82495"><a href="#" onclick="return false;"
												title="신비아파트극장판하늘도깨비대요르문간드" alt="신비아파트극장판하늘도깨비대요르문간드"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">신비아파트극장판하늘도깨비대요르문간드</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="37" movie_cd_group="20028861"
												movie_idx="85628"><a href="#" onclick="return false;"
												title="극장판안녕자두야:제주도의비밀" alt="극장판안녕자두야:제주도의비밀"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">극장판안녕자두야:제주도의비밀</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="38" movie_cd_group="20032476"
												movie_idx="86950"><a href="#" onclick="return false;"
												title="칠중주-홍콩이야기" alt="칠중주-홍콩이야기"><i
													class="cgvIcon etc age12">12</i><span class="text">칠중주-홍콩이야기</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="39" movie_cd_group="20032653"
												movie_idx="87017"><a href="#" onclick="return false;"
												title="카일리블루스" alt="카일리블루스"><i class="cgvIcon etc age12">12</i><span
													class="text">카일리블루스</span><span class="sreader"></span></a></li>
											<li class="" data-index="40" movie_cd_group="20032610"
												movie_idx="87001"><a href="#" onclick="return false;"
												title="그래도내가하지않았어" alt="그래도내가하지않았어"><i
													class="cgvIcon etc age12">12</i><span class="text">그래도내가하지않았어</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="41" movie_cd_group="20021046"
												movie_idx="82466"><a href="#" onclick="return false;"
												title="모리스" alt="모리스"><i class="cgvIcon etc age15">15</i><span
													class="text">모리스</span><span class="sreader"></span></a></li>
											<li class="" data-index="42" movie_cd_group="20032560"
												movie_idx="86985"><a href="#" onclick="return false;"
												title="뮤지컬공연실황,알쏭달쏭캐치!티니핑<신비한상자를열어라!>"
													alt="뮤지컬공연실황,알쏭달쏭캐치!티니핑<신비한상자를열어라!>"><i
														class="cgvIcon etc ageAll">ALL</i>
													<span class="text">뮤지컬공연실황,알쏭달쏭캐치!티니핑&lt;신비한상자를열어라!&gt;</span>
													<span class="sreader"></span>
											</a></li>
											<li class="" data-index="43" movie_cd_group="20032651"
												movie_idx="87015"><a href="#" onclick="return false;"
												title="극장판리틀슈퍼맨샘샘" alt="극장판리틀슈퍼맨샘샘"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">극장판리틀슈퍼맨샘샘</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="44" movie_cd_group="20032638"
												movie_idx="87010"><a href="#" onclick="return false;"
												title="뮤지컬호프-김지현에바호프" alt="뮤지컬호프-김지현에바호프"><i
													class="cgvIcon etc age12">12</i><span class="text">뮤지컬호프-김지현에바호프</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="45" movie_cd_group="20032567"
												movie_idx="86992"><a href="#" onclick="return false;"
												title="스프린터" alt="스프린터"><i class="cgvIcon etc age12">12</i><span
													class="text">스프린터</span><span class="sreader"></span></a></li>
											<li class="" data-index="46" movie_cd_group="20032630"
												movie_idx="87008"><a href="#" onclick="return false;"
												title="[아트&amp;다이닝]Impressionism인상적인세상에매료되다"
												alt="[아트&amp;다이닝]Impressionism인상적인세상에매료되다"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">[아트&amp;다이닝]Impressionism인상적인세상에매료되다</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="47" movie_cd_group="20032716"
												movie_idx="87037"><a href="#" onclick="return false;"
												title="[인사이터XCGV]공간기획과브랜딩" alt="[인사이터XCGV]공간기획과브랜딩"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">[인사이터XCGV]공간기획과브랜딩</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="48" movie_cd_group="20032654"
												movie_idx="87018"><a href="#" onclick="return false;"
												title="[콘서트&amp;다이닝]프리다의식탁" alt="[콘서트&amp;다이닝]프리다의식탁"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">[콘서트&amp;다이닝]프리다의식탁</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="49" movie_cd_group="20032128"
												movie_idx="86876"><a href="#" onclick="return false;"
												title="리바운드" alt="리바운드"><i class="cgvIcon etc age12">12</i><span
													class="text">리바운드</span><span class="sreader"></span></a></li>
											<li class="" data-index="50" movie_cd_group="20032394"
												movie_idx="86939"><a href="#" onclick="return false;"
												title="빈필하모닉정기연주회-크리스티안틸레만" alt="빈필하모닉정기연주회-크리스티안틸레만"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">빈필하모닉정기연주회-크리스티안틸레만</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="51" movie_cd_group="20032657"
												movie_idx="87021"><a href="#" onclick="return false;"
												title="[사이다경제]경기가어려울때은행에저축하지말고애플에저축하라"
												alt="[사이다경제]경기가어려울때은행에저축하지말고애플에저축하라"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">[사이다경제]경기가어려울때은행에저축하지말고애플에저축하라</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="52" movie_cd_group="20032656"
												movie_idx="87020"><a href="#" onclick="return false;"
												title="[사이다경제]행복한결혼생활우선집구할때내보증금먼저지켜볼까"
												alt="[사이다경제]행복한결혼생활우선집구할때내보증금먼저지켜볼까"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">[사이다경제]행복한결혼생활우선집구할때내보증금먼저지켜볼까</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="53" movie_cd_group="20030673"
												movie_idx="86281"><a href="#" onclick="return false;"
												title="로보카폴리안전교실교통편" alt="로보카폴리안전교실교통편"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">로보카폴리안전교실교통편</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="54" movie_cd_group="20023449"
												movie_idx="83277"><a href="#" onclick="return false;"
												title="전망좋은방" alt="전망좋은방"><i class="cgvIcon etc age15">15</i><span
													class="text">전망좋은방</span><span class="sreader"></span></a></li>
											<li class="" data-index="55" movie_cd_group="20020141"
												movie_idx="82063"><a href="#" onclick="return false;"
												title="지구최후의밤" alt="지구최후의밤"><i class="cgvIcon etc age12">12</i><span
													class="text">지구최후의밤</span><span class="sreader"></span></a></li>
											<li class="" data-index="56" movie_cd_group="20032344"
												movie_idx="86921"><a href="#" onclick="return false;"
												title="치치핑핑의쿵쿵따탐험대" alt="치치핑핑의쿵쿵따탐험대"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">치치핑핑의쿵쿵따탐험대</span><span
													class="sreader"></span></a></li>
											<li class="" data-index="57" movie_cd_group="20023759"
												movie_idx="83368"><a href="#" onclick="return false;"
												title="하워즈엔드" alt="하워즈엔드"><i class="cgvIcon etc age12">12</i><span
													class="text">하워즈엔드</span><span class="sreader"></span></a></li>
											<li class="" data-index="58" movie_cd_group="20032768"
												movie_idx="87058"><a href="#" onclick="return false;"
												title="[사이다경제]1분투자로1천만원아낀다!<부동산절세무작정따라하기>저자특강"
												alt="[사이다경제]1분투자로1천만원아낀다!<부동산절세무작정따라하기>저자특강"><i
													class="cgvIcon etc ageAll">ALL</i><span class="text">[사이다경제]1분투자로1천만원아낀다!&lt;부동산절세무작정따라하기&gt;저자특강</span><span
													class="sreader"></span></a></li>
										</ul>
										<div class="pane pane-y"
											style="display: block; opacity: 1; visibility: visible;">
											<div class="slider slider-y" style="height: 50px; top: 0px;"></div>
										</div>
										<div class="pane pane-x"
											style="display: none; opacity: 1; visibility: visible;">
											<div class="slider slider-x" style="width: 50px;"></div>
										</div>
									</div>
									<div class="selectbox-movie-type" style="display: none;">
										<a href="#" onclick="closeSelectboxMovieType();return false;"
											class="btn-close">영화속성 레이어 닫기</a>
										<ul>
											<li id="sbmt_all" class="GROUP1 ALL"><a data-type="ALL"
												href="#"
												onclick="SelectboxMovieTypeClickListener(event);return false;">전체</a></li>
											<li id="sbmt_digital" class="GROUP1 DIGITAL proplist"><a
												data-type="DIGITAL" href="#"
												onclick="SelectboxMovieTypeClickListener(event);return false;">2D</a></li>
											<li id="sbmt_imax" class="GROUP1 IMAX proplist"><a
												data-type="IMAX" href="#"
												onclick="SelectboxMovieTypeClickListener(event);return false;">IMAX</a></li>
											<li id="sbmt_4dx" class="GROUP1 4DX proplist"><a
												data-type="4DX" href="#"
												onclick="SelectboxMovieTypeClickListener(event);return false;">4DX</a></li>
											<li id="sbmt_soundx" class="GROUP1 SOUNDX proplist"><a
												data-type="SOUNDX" href="#"
												onclick="SelectboxMovieTypeClickListener(event);return false;">SOUNDX</a></li>
											<li id="sbmt_screenx" class="GROUP1 SCREENX proplist"><a
												data-type="SCREENX" href="#"
												onclick="SelectboxMovieTypeClickListener(event);return false;">SCREENX</a></li>
											<li id="sbmt_3d" class="GROUP1 3D proplist"><a
												data-type="3D" href="#"
												onclick="SelectboxMovieTypeClickListener(event);return false;">3D</a></li>
											<li id="sbmt_dubbing" class="GROUP2 DUBBING proplist"><a
												data-type="DUBBING" href="#"
												onclick="SelectboxMovieTypeClickListener(event);return false;">더빙</a></li>
											<li id="sbmt_subtitle" class="GROUP2 SUBTITLES proplist"><a
												data-type="SUBTITLES" href="#"
												onclick="SelectboxMovieTypeClickListener(event);return false;">자막</a></li>
											<li id="sbmt_lovemom" class="GROUP3 LOVEMOM proplist"><a
												data-type="LOVEMOM" href="#"
												onclick="SelectboxMovieTypeClickListener(event);return false;">러브맘</a></li>
											<li id="sbmt_liveTalk" class="GROUP3 LIVETALK proplist"><a
												data-type="LIVETALK" href="#"
												onclick="SelectboxMovieTypeClickListener(event);return false;">스타라이브톡</a></li>
											<li id="sbmt_wheelchairAccess"
												class="GROUP3 WHEELCHAIRACCESS proplist"><a
												data-type="WHEELCHAIRACCESS" href="#"
												onclick="SelectboxMovieTypeClickListener(event);return false;">배리어프리</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- THEATER 섹션 -->
						<div class="section section-theater">
							<!-- col-head -->
							<div class="col-head" id="skip_theater_list">
								<h3 class="sreader">극장</h3>
								<a href="#" class="skip_to_something"
									onclick="skipToSomething('skip_date_list');return false;">극장선택
									건너뛰기</a>
							</div>
							<!-- col-body -->
							<div class="col-body" style="height: 565px;">
								<!-- 자주가는 CGV -->
								<!--
								<div class="favorite_cgv" id="favorite_cgv">
									<p class="tit"></p>
									<p class="setting" style="display:none;"><a href="#" onclick="favoriteCGVSettingClickListener();return false;" class="btn_setting">설정 &gt;</a></p>
									<ul class="theaters"></ul>
									<div class="nolist">자주가는 CGV를<br>등록해주세요</div>
								</div>
							-->
								<!-- 극장선택 -->
								<div class="theater-select" style="height: 554px;">
									<div class="tabmenu">
										<span class="side on"></span> <a href="#"
											onclick="return false;" class="button menu1 selected">전체</a>
										<span class="side on"></span> <a href="#"
											onclick="return false;" class="button menu2">아트하우스</a> <span
											class="side"></span> <a href="#" onclick="return false;"
											class="button menu3">특별관</a> <span class="side"></span>
									</div>
									<div class="theater-list" style="height: 513px;">
										<div class="theater-area-list" id="theater_area_list">
											<ul>
												<li class="hidden" style="display: list-item;"><a
													href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">추천 CGV</span><span class="count">(0)</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;"></ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li class="selected"><a href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">서울</span><span class="count">(31)</span></a>
												<div
														class="area_theater_list nano has-scrollbar has-scrollbar-y">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;">
															<li class="" data-index="0" areaindex="1"
																theater_cd="0056" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">강남<span
																	class="sreader"></span></a></li>
															<li class="" data-index="2" areaindex="1"
																theater_cd="0001" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="강변역 테크노마트">강변<span class="sreader"></span></a></li>
															<li class="" data-index="4" areaindex="1"
																theater_cd="0229" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">건대입구<span
																	class="sreader"></span></a></li>
															<li class="" data-index="23" areaindex="1"
																theater_cd="0010" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">구로<span
																	class="sreader"></span></a></li>
															<li class="" data-index="54" areaindex="1"
																theater_cd="0063" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">대학로<span
																	class="sreader"></span></a></li>
															<li class="" data-index="55" areaindex="1"
																theater_cd="0252" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">동대문<span
																	class="sreader"></span></a></li>
															<li class="" data-index="63" areaindex="1"
																theater_cd="0230" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">등촌<span
																	class="sreader"></span></a></li>
															<li class="" data-index="65" areaindex="1"
																theater_cd="0009" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="눈스퀘어 8층">명동<span class="sreader"></span></a></li>
															<li class="" data-index="66" areaindex="1"
																theater_cd="0105" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="명동역 7,8번 출구">명동역 씨네라이브러리<span class="sreader"></span></a></li>
															<li class="" data-index="69" areaindex="1"
																theater_cd="0057" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">미아<span
																	class="sreader"></span></a></li>
															<li class="" data-index="70" areaindex="1"
																theater_cd="0288" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">방학<span
																	class="sreader"></span></a></li>
															<li class="" data-index="80" areaindex="1"
																theater_cd="0030" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">불광<span
																	class="sreader"></span></a></li>
															<li class="" data-index="82" areaindex="1"
																theater_cd="0046" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">상봉<span
																	class="sreader"></span></a></li>
															<li class="" data-index="90" areaindex="1"
																theater_cd="0300" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">성신여대입구<span
																	class="sreader"></span></a></li>
															<li class="" data-index="95" areaindex="1"
																theater_cd="0088" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">송파<span
																	class="sreader"></span></a></li>
															<li class="" data-index="96" areaindex="1"
																theater_cd="0276" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">수유<span
																	class="sreader"></span></a></li>
															<li class="" data-index="101" areaindex="1"
																theater_cd="0150" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">신촌아트레온<span
																	class="sreader"></span></a></li>
															<li class="" data-index="103" areaindex="1"
																theater_cd="P001" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">씨네드쉐프
																	압구정<span class="sreader"></span>
															</a></li>
															<li class="" data-index="104" areaindex="1"
																theater_cd="P013" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">씨네드쉐프
																	용산아이파크몰<span class="sreader"></span>
															</a></li>
															<li class="" data-index="110" areaindex="1"
																theater_cd="0040" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">압구정<span
																	class="sreader"></span></a></li>
															<li class="" data-index="115" areaindex="1"
																theater_cd="0112" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">여의도<span
																	class="sreader"></span></a></li>
															<li class="" data-index="117" areaindex="1"
																theater_cd="0292" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">연남<span
																	class="sreader"></span></a></li>
															<li class="" data-index="119" areaindex="1"
																theater_cd="0059" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">영등포<span
																	class="sreader"></span></a></li>
															<li class="" data-index="123" areaindex="1"
																theater_cd="0074" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">왕십리<span
																	class="sreader"></span></a></li>
															<li class="" data-index="124" areaindex="1"
																theater_cd="0013" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">용산아이파크몰<span
																	class="sreader"></span></a></li>
															<li class="" data-index="156" areaindex="1"
																theater_cd="0131" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="홈플러스 중계점 8층">중계<span class="sreader"></span></a></li>
															<li class="" data-index="165" areaindex="1"
																theater_cd="0199" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">천호<span
																	class="sreader"></span></a></li>
															<li class="" data-index="166" areaindex="1"
																theater_cd="0107" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">청담씨네시티<span
																	class="sreader"></span></a></li>
															<li class="" data-index="184" areaindex="1"
																theater_cd="0223" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">피카디리1958<span
																	class="sreader"></span></a></li>
															<li class="" data-index="185" areaindex="1"
																theater_cd="0164" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="건영백화점 B1층">하계<span class="sreader"></span></a></li>
															<li class="" data-index="189" areaindex="1"
																theater_cd="0191" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">홍대<span
																	class="sreader"></span></a></li>
														</ul>
														<div class="pane pane-y"
															style="display: block; opacity: 1; visibility: visible;">
															<div class="slider slider-y"
																style="height: 50px; top: 0px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li><a href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">경기</span><span class="count">(57)</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;">
															<li class="" data-index="5" areaindex="2"
																theater_cd="0260" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">경기광주<span
																	class="sreader"></span></a></li>
															<li class="" data-index="9" areaindex="2"
																theater_cd="0270" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">고양백석<span
																	class="sreader"></span></a></li>
															<li class="" data-index="10" areaindex="2"
																theater_cd="0255" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">고양행신<span
																	class="sreader"></span></a></li>
															<li class="" data-index="11" areaindex="2"
																theater_cd="0257" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">광교<span
																	class="sreader"></span></a></li>
															<li class="" data-index="12" areaindex="2"
																theater_cd="0266" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">광교상현<span
																	class="sreader"></span></a></li>
															<li class="" data-index="13" areaindex="2"
																theater_cd="0348" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">광명역<span
																	class="sreader"></span></a></li>
															<li class="" data-index="24" areaindex="2"
																theater_cd="0232" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">구리<span
																	class="sreader"></span></a></li>
															<li class="" data-index="27" areaindex="2"
																theater_cd="0344" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">기흥<span
																	class="sreader"></span></a></li>
															<li class="" data-index="29" areaindex="2"
																theater_cd="0278" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">김포<span
																	class="sreader"></span></a></li>
															<li class="" data-index="30" areaindex="2"
																theater_cd="0188" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">김포운양<span
																	class="sreader"></span></a></li>
															<li class="" data-index="31" areaindex="2"
																theater_cd="0298" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">김포한강<span
																	class="sreader"></span></a></li>
															<li class="" data-index="36" areaindex="2"
																theater_cd="0329" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">남양주화도<span
																	class="sreader"></span></a></li>
															<li class="" data-index="38" areaindex="2"
																theater_cd="0351" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">다산<span
																	class="sreader"></span></a></li>
															<li class="" data-index="57" areaindex="2"
																theater_cd="0124" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">동백<span
																	class="sreader"></span></a></li>
															<li class="" data-index="58" areaindex="2"
																theater_cd="0041" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="인계동 씨네파크 7층">동수원<span class="sreader"></span></a></li>
															<li class="" data-index="59" areaindex="2"
																theater_cd="0106" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="메타폴리스 A블럭">동탄<span class="sreader"></span></a></li>
															<li class="" data-index="60" areaindex="2"
																theater_cd="0359" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">동탄그랑파사쥬<span
																	class="sreader"></span></a></li>
															<li class="" data-index="61" areaindex="2"
																theater_cd="0265" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">동탄역<span
																	class="sreader"></span></a></li>
															<li class="" data-index="62" areaindex="2"
																theater_cd="0233" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">동탄호수공원<span
																	class="sreader"></span></a></li>
															<li class="" data-index="71" areaindex="2"
																theater_cd="0226" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">배곧<span
																	class="sreader"></span></a></li>
															<li class="" data-index="72" areaindex="2"
																theater_cd="0155" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="범계역 뉴코아아울렛">범계<span class="sreader"></span></a></li>
															<li class="" data-index="74" areaindex="2"
																theater_cd="0015" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="현대백화점 5층">부천<span class="sreader"></span></a></li>
															<li class="" data-index="75" areaindex="2"
																theater_cd="0194" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="부천역 3번출구에 있습니다.">부천역<span class="sreader"></span></a></li>
															<li class="" data-index="76" areaindex="2"
																theater_cd="0287" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">부천옥길<span
																	class="sreader"></span></a></li>
															<li class="" data-index="78" areaindex="2"
																theater_cd="0049" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">북수원<span
																	class="sreader"></span></a></li>
															<li class="" data-index="81" areaindex="2"
																theater_cd="0242" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">산본<span
																	class="sreader"></span></a></li>
															<li class="" data-index="88" areaindex="2"
																theater_cd="0196" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">서현<span
																	class="sreader"></span></a></li>
															<li class="" data-index="89" areaindex="2"
																theater_cd="0304" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">성남모란<span
																	class="sreader"></span></a></li>
															<li class="" data-index="93" areaindex="2"
																theater_cd="0143" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">소풍<span
																	class="sreader"></span></a></li>
															<li class="" data-index="99" areaindex="2"
																theater_cd="0274" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">스타필드시티위례<span
																	class="sreader"></span></a></li>
															<li class="" data-index="100" areaindex="2"
																theater_cd="0073" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">시흥<span
																	class="sreader"></span></a></li>
															<li class="" data-index="108" areaindex="2"
																theater_cd="0211" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">안산<span
																	class="sreader"></span></a></li>
															<li class="" data-index="109" areaindex="2"
																theater_cd="0279" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">안성<span
																	class="sreader"></span></a></li>
															<li class="" data-index="111" areaindex="2"
																theater_cd="0003" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">야탑<span
																	class="sreader"></span></a></li>
															<li class="" data-index="113" areaindex="2"
																theater_cd="0262" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">양주옥정<span
																	class="sreader"></span></a></li>
															<li class="" data-index="116" areaindex="2"
																theater_cd="0338" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">역곡<span
																	class="sreader"></span></a></li>
															<li class="" data-index="120" areaindex="2"
																theater_cd="0004" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">오리<span
																	class="sreader"></span></a></li>
															<li class="" data-index="121" areaindex="2"
																theater_cd="0305" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">오산<span
																	class="sreader"></span></a></li>
															<li class="" data-index="122" areaindex="2"
																theater_cd="0307" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">오산중앙<span
																	class="sreader"></span></a></li>
															<li class="" data-index="125" areaindex="2"
																theater_cd="0271" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">용인<span
																	class="sreader"></span></a></li>
															<li class="" data-index="133" areaindex="2"
																theater_cd="0113" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="신세계 백화점 10층">의정부<span class="sreader"></span></a></li>
															<li class="" data-index="134" areaindex="2"
																theater_cd="0187" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="센트럴타워 15층">의정부태흥<span class="sreader"></span></a></li>
															<li class="" data-index="135" areaindex="2"
																theater_cd="0205" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">이천<span
																	class="sreader"></span></a></li>
															<li class="" data-index="145" areaindex="2"
																theater_cd="0054" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">일산<span
																	class="sreader"></span></a></li>
															<li class="" data-index="150" areaindex="2"
																theater_cd="0320" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">정왕<span
																	class="sreader"></span></a></li>
															<li class="" data-index="176" areaindex="2"
																theater_cd="0148" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">파주문산<span
																	class="sreader"></span></a></li>
															<li class="" data-index="177" areaindex="2"
																theater_cd="0310" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">파주야당<span
																	class="sreader"></span></a></li>
															<li class="" data-index="178" areaindex="2"
																theater_cd="0181" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">판교<span
																	class="sreader"></span></a></li>
															<li class="" data-index="179" areaindex="2"
																theater_cd="0195" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">평촌<span
																	class="sreader"></span></a></li>
															<li class="" data-index="180" areaindex="2"
																theater_cd="0052" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">평택<span
																	class="sreader"></span></a></li>
															<li class="" data-index="181" areaindex="2"
																theater_cd="0334" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">평택고덕<span
																	class="sreader"></span></a></li>
															<li class="" data-index="182" areaindex="2"
																theater_cd="0214" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">평택소사<span
																	class="sreader"></span></a></li>
															<li class="" data-index="183" areaindex="2"
																theater_cd="0309" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">포천<span
																	class="sreader"></span></a></li>
															<li class="" data-index="186" areaindex="2"
																theater_cd="0326" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">하남미사<span
																	class="sreader"></span></a></li>
															<li class="" data-index="192" areaindex="2"
																theater_cd="0301" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">화성봉담<span
																	class="sreader"></span></a></li>
															<li class="" data-index="193" areaindex="2"
																theater_cd="0145" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">화정<span
																	class="sreader"></span></a></li>
															<li class="" data-index="195" areaindex="2"
																theater_cd="0365" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">Drive
																	In 용인 크랙사이<span class="sreader"></span>
															</a></li>
														</ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li><a href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">인천</span><span class="count">(13)</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;">
															<li class="" data-index="7" areaindex="3"
																theater_cd="0043" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">계양<span
																	class="sreader"></span></a></li>
															<li class="" data-index="77" areaindex="3"
																theater_cd="0021" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="청천동 아이즈빌 아울렛">부평<span class="sreader"></span></a></li>
															<li class="" data-index="94" areaindex="3"
																theater_cd="0325" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">송도타임스페이스<span
																	class="sreader"></span></a></li>
															<li class="" data-index="118" areaindex="3"
																theater_cd="0247" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">연수역<span
																	class="sreader"></span></a></li>
															<li class="" data-index="138" areaindex="3"
																theater_cd="0002" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="구월동 홈플러스">인천<span class="sreader"></span></a></li>
															<li class="" data-index="139" areaindex="3"
																theater_cd="0296" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">인천가정<span
																	class="sreader"></span></a></li>
															<li class="" data-index="140" areaindex="3"
																theater_cd="0346" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">인천논현<span
																	class="sreader"></span></a></li>
															<li class="" data-index="141" areaindex="3"
																theater_cd="0340" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">인천도화<span
																	class="sreader"></span></a></li>
															<li class="" data-index="142" areaindex="3"
																theater_cd="0352" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">인천시민공원<span
																	class="sreader"></span></a></li>
															<li class="" data-index="143" areaindex="3"
																theater_cd="0258" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">인천연수<span
																	class="sreader"></span></a></li>
															<li class="" data-index="144" areaindex="3"
																theater_cd="0269" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">인천학익<span
																	class="sreader"></span></a></li>
															<li class="" data-index="155" areaindex="3"
																theater_cd="0308" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">주안역<span
																	class="sreader"></span></a></li>
															<li class="" data-index="167" areaindex="3"
																theater_cd="0235" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">청라<span
																	class="sreader"></span></a></li>
														</ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li><a href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">강원</span><span class="count">(6)</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;">
															<li class="" data-index="1" areaindex="4"
																theater_cd="0139" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">강릉<span
																	class="sreader"></span></a></li>
															<li class="" data-index="26" areaindex="4"
																theater_cd="0355" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">기린<span
																	class="sreader"></span></a></li>
															<li class="" data-index="130" areaindex="4"
																theater_cd="0144" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">원주<span
																	class="sreader"></span></a></li>
															<li class="" data-index="131" areaindex="4"
																theater_cd="0354" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">원통<span
																	class="sreader"></span></a></li>
															<li class="" data-index="137" areaindex="4"
																theater_cd="0281" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">인제<span
																	class="sreader"></span></a></li>
															<li class="" data-index="173" areaindex="4"
																theater_cd="0070" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">춘천<span
																	class="sreader"></span></a></li>
														</ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li><a href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">대전/충청</span><span class="count">(24)</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;">
															<li class="" data-index="37" areaindex="5"
																theater_cd="0261" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">논산<span
																	class="sreader"></span></a></li>
															<li class="" data-index="39" areaindex="5"
																theater_cd="0207" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">당진<span
																	class="sreader"></span></a></li>
															<li class="" data-index="49" areaindex="5"
																theater_cd="0007" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">대전<span
																	class="sreader"></span></a></li>
															<li class="" data-index="50" areaindex="5"
																theater_cd="0286" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">대전가수원<span
																	class="sreader"></span></a></li>
															<li class="" data-index="51" areaindex="5"
																theater_cd="0154" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">대전가오<span
																	class="sreader"></span></a></li>
															<li class="" data-index="52" areaindex="5"
																theater_cd="0202" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">대전탄방<span
																	class="sreader"></span></a></li>
															<li class="" data-index="53" areaindex="5"
																theater_cd="0127" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">대전터미널<span
																	class="sreader"></span></a></li>
															<li class="" data-index="86" areaindex="5"
																theater_cd="0091" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">서산<span
																	class="sreader"></span></a></li>
															<li class="" data-index="91" areaindex="5"
																theater_cd="0219" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">세종<span
																	class="sreader"></span></a></li>
															<li class="" data-index="105" areaindex="5"
																theater_cd="0356" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">아산<span
																	class="sreader"></span></a></li>
															<li class="" data-index="132" areaindex="5"
																theater_cd="0206" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">유성노은<span
																	class="sreader"></span></a></li>
															<li class="" data-index="154" areaindex="5"
																theater_cd="0331" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">제천<span
																	class="sreader"></span></a></li>
															<li class="" data-index="161" areaindex="5"
																theater_cd="0044" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="천안역 1번 출구">천안<span class="sreader"></span></a></li>
															<li class="" data-index="162" areaindex="5"
																theater_cd="0332" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">천안시청<span
																	class="sreader"></span></a></li>
															<li class="" data-index="163" areaindex="5"
																theater_cd="0293" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">천안터미널<span
																	class="sreader"></span></a></li>
															<li class="" data-index="164" areaindex="5"
																theater_cd="0110" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="불당동 펜타포트(천안아산역)">천안펜타포트<span class="sreader"></span></a></li>
															<li class="" data-index="168" areaindex="5"
																theater_cd="0297" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">청주성안길<span
																	class="sreader"></span></a></li>
															<li class="" data-index="169" areaindex="5"
																theater_cd="0282" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">청주율량<span
																	class="sreader"></span></a></li>
															<li class="" data-index="170" areaindex="5"
																theater_cd="0142" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">청주지웰시티<span
																	class="sreader"></span></a></li>
															<li class="" data-index="171" areaindex="5"
																theater_cd="0319" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">청주터미널<span
																	class="sreader"></span></a></li>
															<li class="" data-index="172" areaindex="5"
																theater_cd="0228" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">청주(서문)<span
																	class="sreader"></span></a></li>
															<li class="" data-index="174" areaindex="5"
																theater_cd="0284" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">충북혁신<span
																	class="sreader"></span></a></li>
															<li class="" data-index="175" areaindex="5"
																theater_cd="0328" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">충주교현<span
																	class="sreader"></span></a></li>
															<li class="" data-index="190" areaindex="5"
																theater_cd="0217" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">홍성<span
																	class="sreader"></span></a></li>
														</ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li><a href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">대구</span><span class="count">(8)</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;">
															<li class="" data-index="40" areaindex="6"
																theater_cd="0345" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">대구<span
																	class="sreader"></span></a></li>
															<li class="" data-index="41" areaindex="6"
																theater_cd="0157" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">대구수성<span
																	class="sreader"></span></a></li>
															<li class="" data-index="42" areaindex="6"
																theater_cd="0108" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">대구스타디움<span
																	class="sreader"></span></a></li>
															<li class="" data-index="43" areaindex="6"
																theater_cd="0185" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="중앙로역 2번 출구">대구아카데미<span class="sreader"></span></a></li>
															<li class="" data-index="44" areaindex="6"
																theater_cd="0343" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">대구연경<span
																	class="sreader"></span></a></li>
															<li class="" data-index="45" areaindex="6"
																theater_cd="0216" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">대구월성<span
																	class="sreader"></span></a></li>
															<li class="" data-index="46" areaindex="6"
																theater_cd="0147" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="동성로광장 진입로">대구한일<span class="sreader"></span></a></li>
															<li class="" data-index="47" areaindex="6"
																theater_cd="0109" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="현대백화점 지하 2층">대구현대<span class="sreader"></span></a></li>
														</ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li><a href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">부산/울산</span><span class="count">(18)</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;">
															<li class="" data-index="48" areaindex="7"
																theater_cd="0061" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">대연<span
																	class="sreader"></span></a></li>
															<li class="" data-index="56" areaindex="7"
																theater_cd="0042" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">동래<span
																	class="sreader"></span></a></li>
															<li class="" data-index="73" areaindex="7"
																theater_cd="0337" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">부산명지<span
																	class="sreader"></span></a></li>
															<li class="" data-index="83" areaindex="7"
																theater_cd="0005" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">서면<span
																	class="sreader"></span></a></li>
															<li class="" data-index="84" areaindex="7"
																theater_cd="0285" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">서면삼정타워<span
																	class="sreader"></span></a></li>
															<li class="" data-index="85" areaindex="7"
																theater_cd="0303" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">서면상상마당<span
																	class="sreader"></span></a></li>
															<li class="" data-index="92" areaindex="7"
																theater_cd="0089" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">센텀시티<span
																	class="sreader"></span></a></li>
															<li class="" data-index="102" areaindex="7"
																theater_cd="P004" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">씨네드쉐프
																	센텀시티<span class="sreader"></span>
															</a></li>
															<li class="" data-index="106" areaindex="7"
																theater_cd="0160" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">아시아드<span
																	class="sreader"></span></a></li>
															<li class="" data-index="126" areaindex="7"
																theater_cd="0335" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">울산동구<span
																	class="sreader"></span></a></li>
															<li class="" data-index="127" areaindex="7"
																theater_cd="0128" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="삼산동">울산삼산<span class="sreader"></span></a></li>
															<li class="" data-index="128" areaindex="7"
																theater_cd="0264" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">울산신천<span
																	class="sreader"></span></a></li>
															<li class="" data-index="129" areaindex="7"
																theater_cd="0246" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">울산진장<span
																	class="sreader"></span></a></li>
															<li class="" data-index="149" areaindex="7"
																theater_cd="0306" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">정관<span
																	class="sreader"></span></a></li>
															<li class="" data-index="187" areaindex="7"
																theater_cd="0245" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">하단아트몰링<span
																	class="sreader"></span></a></li>
															<li class="" data-index="188" areaindex="7"
																theater_cd="0318" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">해운대<span
																	class="sreader"></span></a></li>
															<li class="" data-index="191" areaindex="7"
																theater_cd="0159" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">화명<span
																	class="sreader"></span></a></li>
															<li class="" data-index="194" areaindex="7"
																theater_cd="0367" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">Drive
																	In 영도<span class="sreader"></span>
															</a></li>
														</ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li><a href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">경상</span><span class="count">(16)</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;">
															<li class="" data-index="3" areaindex="8"
																theater_cd="0263" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">거제<span
																	class="sreader"></span></a></li>
															<li class="" data-index="6" areaindex="8"
																theater_cd="0330" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">경산<span
																	class="sreader"></span></a></li>
															<li class="" data-index="8" areaindex="8"
																theater_cd="0323" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">고성<span
																	class="sreader"></span></a></li>
															<li class="" data-index="25" areaindex="8"
																theater_cd="0053" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">구미<span
																	class="sreader"></span></a></li>
															<li class="" data-index="28" areaindex="8"
																theater_cd="0240" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">김천율곡<span
																	class="sreader"></span></a></li>
															<li class="" data-index="32" areaindex="8"
																theater_cd="0028" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">김해<span
																	class="sreader"></span></a></li>
															<li class="" data-index="33" areaindex="8"
																theater_cd="0311" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">김해율하<span
																	class="sreader"></span></a></li>
															<li class="" data-index="34" areaindex="8"
																theater_cd="0239" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">김해장유<span
																	class="sreader"></span></a></li>
															<li class="" data-index="64" areaindex="8"
																theater_cd="0033" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">마산<span
																	class="sreader"></span></a></li>
															<li class="" data-index="79" areaindex="8"
																theater_cd="0097" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;"
																title="포항시 북구 덕산동">북포항<span class="sreader"></span></a></li>
															<li class="" data-index="107" areaindex="8"
																theater_cd="0272" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">안동<span
																	class="sreader"></span></a></li>
															<li class="" data-index="112" areaindex="8"
																theater_cd="0234" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">양산삼호<span
																	class="sreader"></span></a></li>
															<li class="" data-index="157" areaindex="8"
																theater_cd="0324" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">진주혁신<span
																	class="sreader"></span></a></li>
															<li class="" data-index="158" areaindex="8"
																theater_cd="0023" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">창원<span
																	class="sreader"></span></a></li>
															<li class="" data-index="159" areaindex="8"
																theater_cd="0079" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">창원더시티<span
																	class="sreader"></span></a></li>
															<li class="" data-index="160" areaindex="8"
																theater_cd="0283" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">창원상남<span
																	class="sreader"></span></a></li>
														</ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li><a href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">광주/전라/제주</span><span class="count">(23)</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;">
															<li class="" data-index="14" areaindex="9"
																theater_cd="0220" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">광양<span
																	class="sreader"></span></a></li>
															<li class="" data-index="15" areaindex="9"
																theater_cd="0221" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">광양
																	엘에프스퀘어<span class="sreader"></span>
															</a></li>
															<li class="" data-index="16" areaindex="9"
																theater_cd="0295" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">광주금남로<span
																	class="sreader"></span></a></li>
															<li class="" data-index="17" areaindex="9"
																theater_cd="0193" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">광주상무<span
																	class="sreader"></span></a></li>
															<li class="" data-index="18" areaindex="9"
																theater_cd="0210" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">광주용봉<span
																	class="sreader"></span></a></li>
															<li class="" data-index="19" areaindex="9"
																theater_cd="0218" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">광주첨단<span
																	class="sreader"></span></a></li>
															<li class="" data-index="20" areaindex="9"
																theater_cd="0244" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">광주충장로<span
																	class="sreader"></span></a></li>
															<li class="" data-index="21" areaindex="9"
																theater_cd="0090" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">광주터미널<span
																	class="sreader"></span></a></li>
															<li class="" data-index="22" areaindex="9"
																theater_cd="0215" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">광주하남<span
																	class="sreader"></span></a></li>
															<li class="" data-index="35" areaindex="9"
																theater_cd="0237" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">나주<span
																	class="sreader"></span></a></li>
															<li class="" data-index="67" areaindex="9"
																theater_cd="0289" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">목포<span
																	class="sreader"></span></a></li>
															<li class="" data-index="68" areaindex="9"
																theater_cd="0280" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">목포평화광장<span
																	class="sreader"></span></a></li>
															<li class="" data-index="87" areaindex="9"
																theater_cd="0225" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">서전주<span
																	class="sreader"></span></a></li>
															<li class="" data-index="97" areaindex="9"
																theater_cd="0114" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">순천<span
																	class="sreader"></span></a></li>
															<li class="" data-index="98" areaindex="9"
																theater_cd="0268" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">순천신대<span
																	class="sreader"></span></a></li>
															<li class="" data-index="114" areaindex="9"
																theater_cd="0315" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">여수웅천<span
																	class="sreader"></span></a></li>
															<li class="" data-index="136" areaindex="9"
																theater_cd="0020" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">익산<span
																	class="sreader"></span></a></li>
															<li class="" data-index="146" areaindex="9"
																theater_cd="0213" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">전주고사<span
																	class="sreader"></span></a></li>
															<li class="" data-index="147" areaindex="9"
																theater_cd="0336" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">전주에코시티<span
																	class="sreader"></span></a></li>
															<li class="" data-index="148" areaindex="9"
																theater_cd="0179" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">전주효자<span
																	class="sreader"></span></a></li>
															<li class="" data-index="151" areaindex="9"
																theater_cd="0186" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">정읍<span
																	class="sreader"></span></a></li>
															<li class="" data-index="152" areaindex="9"
																theater_cd="0302" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">제주<span
																	class="sreader"></span></a></li>
															<li class="" data-index="153" areaindex="9"
																theater_cd="0259" rating_cd="undefined"
																style="display: list-item;"><a href="#"
																onclick="theaterListClickListener(event);return false;">제주노형<span
																	class="sreader"></span></a></li>
														</ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li class="hidden" style="display: list-item;"><a
													href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">&nbsp;</span><span class="count">&nbsp;</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;"></ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li class="hidden" style="display: list-item;"><a
													href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">&nbsp;</span><span class="count">&nbsp;</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;"></ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li class="hidden" style="display: list-item;"><a
													href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">&nbsp;</span><span class="count">&nbsp;</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;"></ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li class="hidden" style="display: list-item;"><a
													href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">&nbsp;</span><span class="count">&nbsp;</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;"></ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li class="hidden" style="display: list-item;"><a
													href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">&nbsp;</span><span class="count">&nbsp;</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;"></ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
												<li class="hidden" style="display: list-item;"><a
													href="#"
													onclick="theaterAreaClickListener(event);return false;"><span
														class="name">&nbsp;</span><span class="count">&nbsp;</span></a>
												<div class="area_theater_list nano has-scrollbar">
														<ul class="content scroll-y" tabindex="-1"
															style="right: -17px;"></ul>
														<div class="pane pane-y"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-y" style="height: 50px;"></div>
														</div>
														<div class="pane pane-x"
															style="display: none; opacity: 1; visibility: visible;">
															<div class="slider slider-x" style="width: 50px;"></div>
														</div>
													</div></li>
											</ul>
										</div>
										<div class="theater-cgv-list nano has-scrollbar"
											id="theater_cgv_list">
											<ul class="content scroll-y" tabindex="-1"
												style="right: -17px;"></ul>
											<div class="pane pane-y"
												style="display: none; opacity: 1; visibility: visible;">
												<div class="slider slider-y" style="height: 50px;"></div>
											</div>
											<div class="pane pane-x"
												style="display: none; opacity: 1; visibility: visible;">
												<div class="slider slider-x" style="width: 50px;"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- DATE 섹션 -->
						<div class="section section-date">
							<div class="col-head" id="skip_date_list">
								<h3 class="sreader">날짜</h3>
								<a href="#" onclick="return false;" class="skip_to_something">날짜
									건너뛰기</a>
							</div>
							<div class="col-body" style="height: 565px;">
								<!-- 날짜선택 -->
								<div class="date-list nano has-scrollbar has-scrollbar-y"
									id="date_list">
									<ul class="content scroll-y" tabindex="-1"
										style="right: -17px;">
										<div>
											<li class="month dimmed"><div>
													<span class="year">2023</span><span class="month">5</span>
													<div></div>
												</div></li>
											<li data-index="0" date="20230519" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">금</span><span
													class="day">19</span><span class="sreader"></span></a></li>
											<li data-index="1" date="20230520" class="day day-sat"><a
												href="#" onclick="return false;"><span class="dayweek">토</span><span
													class="day">20</span><span class="sreader"></span></a></li>
											<li data-index="2" date="20230521" class="day day-sun"><a
												href="#" onclick="return false;"><span class="dayweek">일</span><span
													class="day">21</span><span class="sreader"></span></a></li>
											<li data-index="3" date="20230522" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">월</span><span
													class="day">22</span><span class="sreader"></span></a></li>
											<li data-index="4" date="20230523" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">화</span><span
													class="day">23</span><span class="sreader"></span></a></li>
											<li data-index="5" date="20230524" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">수</span><span
													class="day">24</span><span class="sreader"></span></a></li>
											<li data-index="6" date="20230525" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">목</span><span
													class="day">25</span><span class="sreader"></span></a></li>
											<li data-index="7" date="20230526" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">금</span><span
													class="day">26</span><span class="sreader"></span></a></li>
											<li data-index="8" date="20230527" class="day day-sat"><a
												href="#" onclick="return false;"><span class="dayweek">토</span><span
													class="day">27</span><span class="sreader"></span></a></li>
											<li data-index="9" date="20230528" class="day day-sun"><a
												href="#" onclick="return false;"><span class="dayweek">일</span><span
													class="day">28</span><span class="sreader"></span></a></li>
											<li data-index="10" date="20230529" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">월</span><span
													class="day">29</span><span class="sreader"></span></a></li>
											<li data-index="11" date="20230530" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">화</span><span
													class="day">30</span><span class="sreader"></span></a></li>
											<li data-index="12" date="20230531" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">수</span><span
													class="day">31</span><span class="sreader"></span></a></li>
											<li class="month dimmed"><div>
													<span class="year">2023</span><span class="month">6</span>
													<div></div>
												</div></li>
											<li data-index="13" date="20230601" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">목</span><span
													class="day">1</span><span class="sreader"></span></a></li>
											<li data-index="14" date="20230602" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">금</span><span
													class="day">2</span><span class="sreader"></span></a></li>
											<li data-index="15" date="20230603" class="day day-sat"><a
												href="#" onclick="return false;"><span class="dayweek">토</span><span
													class="day">3</span><span class="sreader"></span></a></li>
											<li data-index="16" date="20230604" class="day day-sun"><a
												href="#" onclick="return false;"><span class="dayweek">일</span><span
													class="day">4</span><span class="sreader"></span></a></li>
											<li data-index="17" date="20230605" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">월</span><span
													class="day">5</span><span class="sreader"></span></a></li>
											<li data-index="18" date="20230606" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">화</span><span
													class="day">6</span><span class="sreader"></span></a></li>
											<li data-index="19" date="20230610" class="day day-sat"><a
												href="#" onclick="return false;"><span class="dayweek">토</span><span
													class="day">10</span><span class="sreader"></span></a></li>
											<li data-index="20" date="20230627" class="day"><a
												href="#" onclick="return false;"><span class="dayweek">화</span><span
													class="day">27</span><span class="sreader"></span></a></li>
										</div>
									</ul>
									<div class="pane pane-y"
										style="display: block; opacity: 1; visibility: visible;">
										<div class="slider slider-y" style="height: 50px; top: 0px;"></div>
									</div>
									<div class="pane pane-x"
										style="display: none; opacity: 1; visibility: visible;">
										<div class="slider slider-x" style="width: 50px;"></div>
									</div>
								</div>
							</div>
						</div>
						<!-- TIME 섹션 -->
						<div class="section section-time">
							<div class="col-head" id="skip_time_list">
								<h3 class="sreader">시간</h3>
								<a href="#" class="skip_to_something"
									onclick="skipToSomething('tnb_step_btn_right');return false;">시간선택
									건너뛰기</a>
							</div>
							<div class="col-body" style="height: 565px;">
								<!-- 시간선택 -->
								<div class="time-option">
									<span class="morning">모닝</span><span class="night">심야</span>
								</div>
								<div class="placeholder">영화, 극장, 날짜를 선택해주세요.</div>
							</div>
						</div>
					</div>
					<!-- //step1 -->
					<!-- step2 -->
					<div class="step step2" style="display: none;">
						<!-- SEAT 섹션 -->
						<div class="section section-seat">
							<div class="col-head" id="skip_seat_list">
								<h3 class="sreader">
									인원 / 좌석 <span class="sreader">인원/좌석선택은 레이어로 서비스 되기 때문에
										가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
								</h3>
								<a href="#" class="skip_to_something"
									onclick="skipToSomething('tnb_step_btn_right');return false;">인원/좌석선택
									건너뛰기</a>
							</div>
							<div class="col-body">
								<div class="person_screen">
									<!-- NUMBEROFPEOPLE 섹션 -->
									<div class="section section-numberofpeople">
										<div class="col-body">

											<!-- 인접좌석 -->
											<!-- <div class="adjacent_seat_wrap">
											<div class="adjacent_seat" id="adjacent_seat">
												<span class="title">좌석 붙임 설정</span>
												<div class="block_wrap">
													<span class="seat_block block1"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(1, this);" disabled><span class="box"></span><span class="sreader">1석 좌석붙임</span></label></span>
													<span class="seat_block block2"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(2, this);" disabled><span class="box"></span><span class="box"></span><span class="sreader">2석 좌석붙임</span></label></span>
													<span class="seat_block block3"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(3, this);" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">3석 좌석붙임</span></label></span>
													<span class="seat_block block4"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(4, this);" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">4석 좌석붙임</span></label></span>
												</div>
											</div>
										</div> -->

											<div id="nopContainer" class="numberofpeople-select"
												style="min-width: 426px;">
												<!-- 2021.05.25 - 좌석 거리두기 -->
												<!-- 최대 선택 가능 인원 표기 -->
												<div id="maximum_people"
													style="padding-bottom: 5px; text-align: right; font-size: 11px !important; color: red;"></div>
												<div class="group millitary" id="nop_group_millitary">
													<span class="title">군인</span>
													<ul>
														<li data-count="0" class="selected"><a href="#"
															onclick="return false;"><span class="sreader mod">군인</span>0<span
																class="sreader">명</span></a></li>
														<li data-count="1"><a href="#"
															onclick="return false;"><span class="sreader mod">군인</span>1<span
																class="sreader">명</span></a></li>
														<li data-count="2"><a href="#"
															onclick="return false;"><span class="sreader mod">군인</span>2<span
																class="sreader">명</span></a></li>
														<li data-count="3"><a href="#"
															onclick="return false;"><span class="sreader mod">군인</span>3<span
																class="sreader">명</span></a></li>
														<li data-count="4"><a href="#"
															onclick="return false;"><span class="sreader mod">군인</span>4<span
																class="sreader">명</span></a></li>
													</ul>
												</div>
												<div class="group adult" id="nop_group_adult">
													<span class="title">일반</span>
													<ul>
														<li data-count="0" class="selected"><a href="#"
															onclick="return false;"><span class="sreader mod">일반</span>0<span
																class="sreader">명</span></a></li>
														<li data-count="1"><a href="#"
															onclick="return false;"><span class="sreader mod">일반</span>1<span
																class="sreader">명</span></a></li>
														<li data-count="2"><a href="#"
															onclick="return false;"><span class="sreader mod">일반</span>2<span
																class="sreader">명</span></a></li>
														<li data-count="3"><a href="#"
															onclick="return false;"><span class="sreader mod">일반</span>3<span
																class="sreader">명</span></a></li>
														<li data-count="4"><a href="#"
															onclick="return false;"><span class="sreader mod">일반</span>4<span
																class="sreader">명</span></a></li>
														<li data-count="5"><a href="#"
															onclick="return false;"><span class="sreader mod">일반</span>5<span
																class="sreader">명</span></a></li>
														<li data-count="6"><a href="#"
															onclick="return false;"><span class="sreader mod">일반</span>6<span
																class="sreader">명</span></a></li>
														<li data-count="7"><a href="#"
															onclick="return false;"><span class="sreader mod">일반</span>7<span
																class="sreader">명</span></a></li>
														<li data-count="8"><a href="#"
															onclick="return false;"><span class="sreader mod">일반</span>8<span
																class="sreader">명</span></a></li>
													</ul>
												</div>
												<div class="group youth" id="nop_group_youth">
													<span class="title">청소년</span>
													<ul>
														<li data-count="0" class="selected"><a href="#"
															onclick="return false;"><span class="sreader mod">청소년</span>0<span
																class="sreader">명</span></a></li>
														<li data-count="1"><a href="#"
															onclick="return false;"><span class="sreader mod">청소년</span>1<span
																class="sreader">명</span></a></li>
														<li data-count="2"><a href="#"
															onclick="return false;"><span class="sreader mod">청소년</span>2<span
																class="sreader">명</span></a></li>
														<li data-count="3"><a href="#"
															onclick="return false;"><span class="sreader mod">청소년</span>3<span
																class="sreader">명</span></a></li>
														<li data-count="4"><a href="#"
															onclick="return false;"><span class="sreader mod">청소년</span>4<span
																class="sreader">명</span></a></li>
														<li data-count="5"><a href="#"
															onclick="return false;"><span class="sreader mod">청소년</span>5<span
																class="sreader">명</span></a></li>
														<li data-count="6"><a href="#"
															onclick="return false;"><span class="sreader mod">청소년</span>6<span
																class="sreader">명</span></a></li>
														<li data-count="7"><a href="#"
															onclick="return false;"><span class="sreader mod">청소년</span>7<span
																class="sreader">명</span></a></li>
														<li data-count="8"><a href="#"
															onclick="return false;"><span class="sreader mod">청소년</span>8<span
																class="sreader">명</span></a></li>
													</ul>
												</div>
												<div class="group child" id="nop_group_child">
													<span class="title">어린이</span>
													<ul>
														<li data-count="0" class="selected"><a href="#"
															onclick="return false;"><span class="sreader mod">어린이</span>0<span
																class="sreader">명</span></a></li>
														<li data-count="1"><a href="#"
															onclick="return false;"><span class="sreader mod">어린이</span>1<span
																class="sreader">명</span></a></li>
														<li data-count="2"><a href="#"
															onclick="return false;"><span class="sreader mod">어린이</span>2<span
																class="sreader">명</span></a></li>
														<li data-count="3"><a href="#"
															onclick="return false;"><span class="sreader mod">어린이</span>3<span
																class="sreader">명</span></a></li>
														<li data-count="4"><a href="#"
															onclick="return false;"><span class="sreader mod">어린이</span>4<span
																class="sreader">명</span></a></li>
														<li data-count="5"><a href="#"
															onclick="return false;"><span class="sreader mod">어린이</span>5<span
																class="sreader">명</span></a></li>
														<li data-count="6"><a href="#"
															onclick="return false;"><span class="sreader mod">어린이</span>6<span
																class="sreader">명</span></a></li>
														<li data-count="7"><a href="#"
															onclick="return false;"><span class="sreader mod">어린이</span>7<span
																class="sreader">명</span></a></li>
														<li data-count="8"><a href="#"
															onclick="return false;"><span class="sreader mod">어린이</span>8<span
																class="sreader">명</span></a></li>
													</ul>
												</div>
												<div class="group senior" id="nop_group_senior">
													<span class="title">경로</span>
													<ul>
														<li data-count="0" class="selected"><a href="#"
															onclick="return false;"><span class="sreader mod">경로</span>0<span
																class="sreader">명</span></a></li>
														<li data-count="1"><a href="#"
															onclick="return false;"><span class="sreader mod">경로</span>1<span
																class="sreader">명</span></a></li>
														<li data-count="2"><a href="#"
															onclick="return false;"><span class="sreader mod">경로</span>2<span
																class="sreader">명</span></a></li>
														<li data-count="3"><a href="#"
															onclick="return false;"><span class="sreader mod">경로</span>3<span
																class="sreader">명</span></a></li>
														<li data-count="4"><a href="#"
															onclick="return false;"><span class="sreader mod">경로</span>4<span
																class="sreader">명</span></a></li>
														<li data-count="5"><a href="#"
															onclick="return false;"><span class="sreader mod">경로</span>5<span
																class="sreader">명</span></a></li>
														<li data-count="6"><a href="#"
															onclick="return false;"><span class="sreader mod">경로</span>6<span
																class="sreader">명</span></a></li>
														<li data-count="7"><a href="#"
															onclick="return false;"><span class="sreader mod">경로</span>7<span
																class="sreader">명</span></a></li>
														<li data-count="8"><a href="#"
															onclick="return false;"><span class="sreader mod">경로</span>8<span
																class="sreader">명</span></a></li>
													</ul>
												</div>
												<div class="group special hide" id="nop_group_special">
													<span class="title">우대</span>
													<ul>
														<li data-count="0" class="selected"><a href="#"
															onclick="return false;"><span class="sreader mod">우대</span>0<span
																class="sreader">명</span></a></li>
														<li data-count="1"><a href="#"
															onclick="return false;"><span class="sreader mod">우대</span>1<span
																class="sreader">명</span></a></li>
														<li data-count="2"><a href="#"
															onclick="return false;"><span class="sreader mod">우대</span>2<span
																class="sreader">명</span></a></li>
														<li data-count="3"><a href="#"
															onclick="return false;"><span class="sreader mod">우대</span>3<span
																class="sreader">명</span></a></li>
														<li data-count="4"><a href="#"
															onclick="return false;"><span class="sreader mod">우대</span>4<span
																class="sreader">명</span></a></li>
														<li data-count="5"><a href="#"
															onclick="return false;"><span class="sreader mod">우대</span>5<span
																class="sreader">명</span></a></li>
														<li data-count="6"><a href="#"
															onclick="return false;"><span class="sreader mod">우대</span>6<span
																class="sreader">명</span></a></li>
														<li data-count="7"><a href="#"
															onclick="return false;"><span class="sreader mod">우대</span>7<span
																class="sreader">명</span></a></li>
														<li data-count="8"><a href="#"
															onclick="return false;"><span class="sreader mod">우대</span>8<span
																class="sreader">명</span></a></li>
													</ul>
												</div>

											</div>
										</div>
									</div>
									<!-- NUMBEROFPEOPLE 섹션 -->
									<div class="section section-screen-select">
										<!-- UI 변경으로 삭제 
									<div class="title">선택하신 상영관<span>/</span>시간</div>
									-->
										<!-- UI 변경
									<div class="screen-time">
										<span class="screen"><b></b></span>
										<span class="seats seat_all"></span>
										<span class="time"></span>
										<span class="seats seat_remain"></span>
									</div>
									-->
										<div id="user-select-info">
											<p class="theater-info">
												<span class="site">CGV 천왕성</span> <span class="screen">11층
													8관 [Business]</span> <span class="seatNum">남은좌석 <b
													class="restNum">100</b>/<b class="totalNum">900</b></span>
											</p>
											<p class="playYMD-info">
												<b>2017.04.10</b><b class="exe">(월)</b><b>00:00 - 00:00</b>
											</p>
										</div>
									</div>
									<a class="change_time_btn" href="#"
										onmousedown="if(event.stopPropagation){event.stopPropagation();}return false;"
										onclick="ticketStep2TimeSelectPopupShow();return false;"><span>상영시간
											변경하기</span></a>
								</div>
								<!-- THEATER -->
								<div class="theater_minimap">
									<div class="theater nano has-scrollbar" id="seat_minimap_nano">
										<div class="content" tabindex="-1"
											style="right: -17px; bottom: -17px;">
											<div class="screen" title="SCREEN">
												<span class="text"></span>
											</div>
											<div class="seats" id="seats_list"></div>
										</div>
										<div class="pane pane-y"
											style="display: none; opacity: 1; visibility: visible;">
											<div class="slider slider-y" style="height: 50px;"></div>
										</div>
										<div class="pane pane-x"
											style="display: none; opacity: 1; visibility: visible;">
											<div class="slider slider-x" style="width: 50px;"></div>
										</div>
									</div>
									<div class="minimap opened" id="minimap">
										<div class="mini_header"
											onclick="ftSeatMinimapToggle();event.preventDefault();">
											Minimap<span></span>
										</div>
										<div class="mini_container">
											<div class="mini_screen">SCREEN</div>
											<div class="mini_seats"></div>
											<div class="mini_exits"></div>
										</div>
										<div class="mini_region">
											<span></span>
										</div>
									</div>
									<div class="legend">
										<div class="buttons">
											<a class="btn-zoom" id="seat_zoom_btn" href="#"
												onclick="ts2SeatZoomClickListener();return false;">크게보기</a>
										</div>
										<div class="seat-icon-desc">
											<span class="icon selected"><span class="icon"></span>선택</span>
											<span class="icon reserved"><span class="icon"></span>예매완료</span>
											<span class="icon notavail"><span class="icon"></span>선택불가</span>
											<!-- 2021.05.25 - 좌석 거리두기 -->
											<!-- 거리두기 좌석 범례 표기 -->
											<span class="icon distanced"><span class="icon"></span>거리두기
												좌석</span>
										</div>
										<div class="seat-type"></div>
									</div>
									<div class="mouse_block"></div>
								</div>
							</div>
						</div>
						<a class="btn-refresh" href="#"> <span>다시하기</span>
						</a>
						<!-- 시간표 변경 -->
						<div class="section_time_popup" id="section_time_popup">
							<div class="canvas">
								<div class="sprite">
									<div class="time-option">
										<span class="morning">모닝</span><span class="night">심야</span>
									</div>
									<div class="time-list nano has-scrollbar" id="time_popup_list">
										<div class="content scroll-y" tabindex="-1"
											style="right: -17px;"></div>
										<div class="pane pane-y"
											style="display: none; opacity: 1; visibility: visible;">
											<div class="slider slider-y" style="height: 50px;"></div>
										</div>
										<div class="pane pane-x"
											style="display: none; opacity: 1; visibility: visible;">
											<div class="slider slider-x" style="width: 50px;"></div>
										</div>
									</div>
								</div>
								<div class="buttons">
									<a href="#" onclick="return false;" class="btn_ok"><span>확인</span></a>
									<a href="#" onclick="return false;" class="btn_cancel"><span>취소</span></a>
									<a href="#" onclick="return false;" class="sreader"
										onfocus="ticketStep2TimeSelectPopupHide();">시간표 변경 팝업 닫기</a>
								</div>
							</div>
							<div class="corner"></div>
						</div>
						<!-- 시간표 변경 -->
					</div>
					<!-- //step2 -->
					<!-- step3 -->
					<div class="step step3" style="display: none;"></div>
					<!-- //step3 -->
					<!-- step4 -->
					<div class="step step4" style="display: none;"></div>
					<!-- //step4 -->
					<noscript>
						<div class="noscript">
							<span>현재 사용중인 환경에서는 스크립트 동작이 활성화되지 않아 예매 서비스를 이용하실 수 없습니다.<br />예매
								서비스를 이용하기 위해서는 <a href='http://www.enable-javascript.com/ko/'
								rel='nofollow'>스크립트 동작을 활성화</a> 해주세요.
							</span>
						</div>
					</noscript>
				</div>
				<!-- 팝업 -->
				<div class="popups">
					<!-- Popup - 로그인 -->
					<div class="ft_layer_popup popup_login ko" style="display: none;">
						<!--<div class="hd">
        <div class="title_area">
            
            <h4>CGV회원 로그인</h4>
			
			<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
        </div>
        <a href="#" onclick="return false;" class="layer_close">닫기</a>
    </div>
    <div class="bd">
        <div class="login_form">
            <div class="input_wrap id">
                <label for="txtUserId" class="blind">아이디</label>
                <input name="txtUserId" id="txtUserId" maxlength="25" type="text">
            </div>
            <div class="input_wrap password">
                <label for="txtPassword" class="blind">비밀번호</label>
                <input name="txtPassword" id="txtPassword" maxlength="25" type="password">
            </div>
            <button type="button" title="로그인" class="btn_login"><span>로그인</span></button>       
        </div>
        <div class="linkbar">
        	
            <a href="#" onclick="return false;" class="join_member">회원가입</a>
            <a href="#" onclick="return false;" class="join_guest">비회원 예매</a>
            <a href="#" onclick="return false;" class="id_find">아이디찾기</a>
            <a href="#" onclick="return false;" class="pw_find">비밀번호찾기</a>    
			
        </div>
    </div>-->
					</div>
					<!-- //Popup -->

					<!-- Popup - 얼럿 -->
					<div class="ft_layer_popup popup_alert original ko" style="">
						<div class="hd">
							<div class="title_area">
								<h4 class="alert_title">얼럿타이틀</h4>
								<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를
									해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
							</div>
							<a href="#" onclick="return false;" class="layer_close">닫기</a>
						</div>
						<!-- //hd -->
						<div class="bd">
							<p class="alert_msg" style="width: 475px;">얼럿메세지</p>
						</div>
						<!-- //bd -->
						<div class="ft">
							<a title="확인" href="#" onclick="return false;" class="btn btn_ok"><span>확인</span></a>
							<a title="취소" href="#" onclick="return false;"
								class="btn btn_white btn_close"><span>취소</span></a>
						</div>
						<!-- //ft -->
					</div>
					<!-- //Popup -->

					<!-- 2021.06.22 - 홈페이지 관람 안내 문구 팝업 창 -->
					<div class="ft_layer_popup popup_alert w450 base ko"
						style="top: 50%; position: absolute;">
						<div class="hd">
							<div class="title_area">
								<h4 class="alert_title">얼럿타이틀</h4>
								<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를
									해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
							</div>
							<a href="#" onclick="return false;" class="layer_close">닫기</a>
						</div>
						<div class="bd">
							<p class="alert_msg">얼럿메세지</p>
						</div>
						<div class="ft">
							<a title="확인" href="#" onclick="return false;" class="btn btn_ok">
								<span>확인</span>
							</a> <a title="취소" href="#" onclick="return false;"
								class="btn btn_white btn_close"> <span>취소</span>
							</a>
						</div>
					</div>

					<!-- 2022.12.27 - 영화등급 이미지 및 문구 수정 -->
					<div
						class="ft_layer_popup popup_alert popup_previewGradeInfo base ko"
						style="top: 255px; position: absolute;">
						<div class="hd">
							<div class="title_area">
								<h4 class="alert_title">관람등급 안내</h4>
								<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를
									해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
							</div>
							<a href="#" onclick="return false" class="layer_close">닫기</a>
						</div>
						<div class="bd">
							<div class="previewGradeInfo_contents">관람등급 안내문구</div>
						</div>
						<div class="ft">
							<a title="확인" href="#" onclick="return false"
								class="btn btn_ok btn_red"> <span>동의하고 예매하기</span>
							</a>
						</div>
					</div>

					<!-- Popup - guide -->
					<div class="ft_layer_popup popup_guide ko" style="display: none;">
						<div class="guide_hd">
							<h4>
								<span class="blind">CGV 예매가이드</span>
							</h4>
							<p>
								<span class="blind">새롭게 바뀐 CGV 예매 서비스를 직접 확인해보세요!</span>
							</p>
						</div>
						<!-- //hd -->
						<div class="guide_bd">
							<div class="tab_menu clfix">
								<ul>
									<li class="a first"><a href="#none"
										onclick="return false;" class="on"
										title="STEP 1 영화, 극장, 날짜, 시간 선택"><span><var>
													<span class="blind_txt tab1">STEP 1 영화, 극장, 날짜, 시간
														선택</span>
												</var></span></a></li>
									<li class="b"><a href="#none" onclick="return false;"
										title="STEP 2 인원, 좌석선택"><span><var>
													<span class="blind_txt tab2">STEP 2 인원, 좌석선택</span>
												</var></span></a></li>
									<li class="c"><a href="#none" onclick="return false;"
										title="STEP 3 결제하기"><span><var>
													<span class="blind_txt tab3">STEP 3 결제하기</span>
												</var></span></a></li>
								</ul>
							</div>
							<div class="content">
								<div class="guide_step01">
									<p class="notice">
										<span class="blind">원하시는 영화, 극장, 날짜, 시간 정보를 선택해주세요!</span>
									</p>
									<div class="guide_btn">
										<p>
											<span class="question blind_txt">물음표</span><span class="info">를
												오버시 해당 설명을 볼 수 있습니다.</span>
										</p>
										<ul>
											<li class="btn01"><a href="#" onclick="return false;"
												class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>
												<p class="infoBx">
													<span class="top"></span> <span class="middle">전체
														화면구성이 세로형으로 변경되어 더 빠르고 쉽게 정보 선택이 가능해졌어요!</span> <span
														class="bottom"></span>
												</p></li>
											<li class="btn02"><a href="#" onclick="return false;"
												class="btnVisInfo blind_txt">물음표-영화분류안내</a>
												<p class="infoBx">
													<span class="top"></span> <span class="middle">무비꼴라쥬,
														특별관 영화를 빠르고 편리하게 분류하여 확인할 수 있어요!</span> <span class="bottom"></span>
												</p></li>
											<!--
                        <li class="btn03">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-선택할 수 없는 영화안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">선택 불가능한 정보는 장애인 차별금지법에 따라 패턴 디자인을 적용하여 모든 사용자가 쉽게 구분할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        -->
											<li class="btn04"><a href="#" onclick="return false;"
												class="btnVisInfo blind_txt">물음표-자주가는 CGV안내</a>
												<p class="infoBx">
													<span class="top"></span> <span class="middle">자주 가는
														극장 설정 기능을 통해 보다 빠른 극장 선택이 가능해졌어요!</span> <span class="bottom"></span>
												</p></li>
											<li class="btn05"><a href="#" onclick="return false;"
												class="btnVisInfo blind_txt">물음표-영문 빠른예매</a>
												<p class="infoBx">
													<span class="top"></span> <span class="middle">영문 버전
														빠른예매를 통해 다국적 사용자들도 쉽게 예매 서비스를 이용할 수 있어요!</span> <span
														class="bottom"></span>
												</p></li>
											<li class="btn06"><a href="#" onclick="return false;"
												class="btnVisInfo blind_txt">물음표-조조/심야구분안내</a>
												<p class="infoBx">
													<span class="top"></span> <span class="middle">조조/심야
														영화 시간에 대해 쉽게 확인할 수 있어요!</span> <span class="bottom"></span>
												</p></li>
											<li class="btn07"><a href="#" onclick="return false;"
												class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>
												<p class="infoBx">
													<span class="top"></span> <span class="middle">선택한
														예매 정보 및 나의 예매 진행 단계를 한 눈에 파악할 수 있어요!</span> <span class="bottom"></span>
												</p></li>
										</ul>
									</div>
								</div>
								<!--//guide_step01-->
								<div class="guide_step02">
									<p class="notice">
										<span class="blind">예매 인원수에 맞게 원하시는 자리 를 선택해주세요!</span>
									</p>
									<div class="guide_btn">
										<p>
											<span class="question blind_txt">물음표</span><span class="info">를
												오버시 해당 설명을 볼 수 있습니다.</span>
										</p>
										<ul>
											<li class="btn01"><a href="#" onclick="return false;"
												title="" class="btnVisInfo blind_txt">물음표-상영관/시간 확인 및
													변경안내</a>
												<p class="infoBx">
													<span class="top"></span> <span class="middle">선택한
														상영관/시간 확인 및 변경 기능이 보다 쉽고 눈에 띄게 변경되었어요!</span> <span
														class="bottom"></span>
												</p></li>
											<li class="btn02"><a href="#" onclick="return false;"
												title="" class="btnVisInfo blind_txt">물음표-다양한 좌석도 보기안내</a>
												<p class="infoBx">
													<span class="top"></span> <span class="middle">좌석도
														크게 보기 기능으로 시력이 좋지 않으신 분들도 쉽게 예매가 가능해졌어요!</span> <span
														class="bottom"></span>
												</p></li>
										</ul>
									</div>
								</div>
								<!--//guide_step02-->
								<div class="guide_step03">
									<p class="notice">
										<span class="blind">원하시는 할인 및 결제수단을 이용하여 예매를 완료해주세요!</span>
									</p>
									<div class="guide_btn">
										<p>
											<span class="question blind_txt">물음표</span><span class="info">를
												오버시 해당 설명을 볼 수 있습니다.</span>
										</p>
										<ul>
											<li class="btn01"><a href="#" onclick="return false;"
												title="" class="btnVisInfo blind_txt">물음표-할인 및 결제수단안내</a>
												<p class="infoBx">
													<span class="top"></span> <span class="middle">전체
														화면구성이 할인수단과 결제수단 영역으로 나뉘어 한 눈에 보기 편리해졌어요!</span> <span
														class="bottom"></span>
												</p></li>
											<li class="btn02"><a href="#" onclick="return false;"
												title="" class="btnVisInfo blind_txt">물음표-CGV영화관람권,할인쿠폰,
													CJ ONE포인트 안내</a>
												<p class="infoBx">
													<span class="top"></span> <span class="middle">주요
														할인수단인 CGV영화관람권, CGV할인쿠폰, CJ ONE 포인트의 바로 조회 기능을 통해 보다 빠른
														예매가 가능해졌어요!</span> <span class="bottom"></span>
												</p></li>
											<li class="btn03"><a href="#" onclick="return false;"
												title="" class="btnVisInfo blind_txt">물음표-할인수단별 선택안내</a>
												<p class="infoBx">
													<span class="top"></span> <span class="middle">다양한
														CGV의 할인수단을 보기 쉽게 그룹화하여 원하는 할인수단만 선택해 이용하실 수 있어요!</span> <span
														class="bottom"></span>
												</p></li>
											<li class="btn04"><a href="#" onclick="return false;"
												title="" class="btnVisInfo blind_txt">물음표-결제정보안내</a>
												<p class="infoBx">
													<span class="top"></span> <span class="middle">내가
														적용한 할인 및 결제수단 내역을 한 눈에 쉽게 확인 가능해요!</span> <span class="bottom"></span>
												</p></li>
											<li class="btn05"><a href="#" onclick="return false;"
												title="" class="btnVisInfo blind_txt">물음표-최신할인정보안내</a>
												<p class="infoBx">
													<span class="top"></span> <span class="middle">다양한
														CGV결제수단의 최신 할인 정보를 쉽게 모아 볼 수 있어요!</span> <span class="bottom"></span>
												</p></li>
										</ul>
									</div>
								</div>
								<!--//guide_step03-->
							</div>
						</div>
						<!-- //bd -->
						<div class="ft">
							<a title="닫기" href="#" onclick="return false;"
								class="btn btn_white btn_close"><span>닫기</span></a> <a
								title="닫기" href="#" onclick="return false;" class="layer_close">닫기</a>
						</div>
						<!-- //ft -->
					</div>
					<!-- //Popup -->

				</div>
				<!-- //팝업 -->
			</div>
			<!-- //빠른예매 -->
		</div>
		<!-- //컨텐츠 -->

		<div id="ticket_tnb" class="tnb_container ">
			<div class="tnb step1">
				<!-- btn-left -->
				<a class="btn-left" href="#"
					onclick="OnTnbLeftClick(); return false;" title="영화선택">이전단계로 이동</a>
				<div class="info movie">
					<span class="movie_poster"><img src="" alt="영화 포스터"
						style="display: none;"></span>
					<div class="row movie_title colspan2" style="display: none;">
						<span class="data letter-spacing-min ellipsis-line2"><a
							href="#" target="_blank"
							onmousedown="javascript:logClick('SUMMARY/영화상세보기');">영화정보
								상세보기</a></span>
					</div>
					<div class="row movie_type" style="display: none;">
						<span class="data ellipsis-line1"></span>
					</div>
					<div class="row movie_rating" style="display: none;">
						<span class="data" title=""></span>
					</div>
					<div class="placeholder" title="영화선택"></div>
				</div>
				<div class="info theater">
					<div class="row name" style="display: none;">
						<span class="header">극장</span> <span
							class="data letter-spacing-min ellipsis-line1"><a href="#"
							target="_blank"
							onmousedown="javascript:logClick('SUMMARY/극장상세보기');"><span
								class="sreader">극장정보 상세보기</span></a></span>
					</div>
					<div class="row date" style="display: none;">
						<span class="header">일시</span> <span class="data"></span>
					</div>
					<div class="row screen" style="display: none;">
						<span class="header">상영관</span> <span class="data"></span>
					</div>
					<div class="row number" style="display: none;">
						<span class="header">인원</span> <span class="data"></span>
					</div>
					<div class="placeholder" title="극장선택"></div>
				</div>
				<div class="info seat">
					<div class="row seat_name">
						<span class="header">좌석명</span> <span class="data">일반석</span>
					</div>
					<div class="row seat_no colspan3">
						<span class="header">좌석번호</span> <span class="data ellipsis-line3"></span>
					</div>
					<div class="placeholder" title="좌석선택"></div>
				</div>
				<div class="info payment-ticket">
					<div class="row payment-millitary">
						<span class="header">군인</span> <span class="data"><span
							class="price"></span>원 x <span class="quantity"></span></span>
					</div>
					<div class="row payment-adult">
						<span class="header">일반</span> <span class="data"><span
							class="price"></span>원 x <span class="quantity"></span></span>
					</div>
					<div class="row payment-youth">
						<span class="header">청소년</span> <span class="data"><span
							class="price"></span>원 x <span class="quantity"></span></span>
					</div>
					<div class="row payment-child">
						<span class="header">어린이</span> <span class="data"><span
							class="price"></span>원 x <span class="quantity"></span></span>
					</div>
					<div class="row payment-senior">
						<span class="header">경로</span> <span class="data"><span
							class="price"></span>원 x <span class="quantity"></span></span>
					</div>
					<div class="row payment-special">
						<span class="header">우대</span> <span class="data"><span
							class="price"></span>원 x <span class="quantity"></span></span>
					</div>
					<div class="row payment-final">
						<span class="header">총금액</span> <span class="data"><span
							class="price">0</span><span class="won">원</span></span>
					</div>
				</div>
				<div class="info path">
					<div class="row colspan4">
						<span class="path-step2" title="좌석선택">&nbsp;</span> <span
							class="path-step3" title="결제">&nbsp;</span>
					</div>
				</div>
				<!-- btn-right -->
				<div class="tnb_step_btn_right_before"
					id="tnb_step_btn_right_before"></div>
				<a class="btn-right" id="tnb_step_btn_right" href="#"
					onclick="OnTnbRightClick(); return false;" title="좌석선택">다음단계로
					이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
			</div>
		</div>

		<!-- bottom banner -->
		<div class="banner" id="ticket_bottom_banner"
			style="padding-top: 0px;">
			<a target="_blank" title="새창"
				href="http://ad.cgv.co.kr/click/CGV/CGV_201401/RIA@B_ticketing?ads_id=49120&amp;creative_id=70652&amp;click_id=91109&amp;content_series=&amp;event="
				style="background-color: rgb(255, 255, 255);"><span style="">硫由?留???곕
					諛?</span><img
				src="https://adimg.cgv.co.kr/images/202305/MarryMyDeadBody/996x140.jpg"
				alt="硫由?留???곕 諛?" onload="ticketNeedResize();"
				style="width: 996px; height: 140px"></a>
		</div>

		<!-- wing banner -->
		<div id="ticket_banner" class="ticket_banner">
			<div>
				<div class="AdvertiseCon" id="RIA_Skin_Ticketing_L"
					style="width: 160px; height: 300px; background: none; position: absolute; top: 75px; left: -164px; overflow: hidden;">
					<a
						href="http://ad.cgv.co.kr/click/CGV/CGV_201608/RIA@RIA_Skin_Ticketing?ads_id=28597&amp;creative_id=69859&amp;click_id=90280&amp;content_series=&amp;event="
						target="_blank" style="top: 0px;"><img
						src="https://adimg.cgv.co.kr/images/202302/house/CGV_BUGS_160x300.png"
						width="160" height="300" border="0" alt="광고-CGV 기프트 카드"
						style="width: 160px; height: 300px;"></a>
				</div>
				<div class="AdvertiseCon" id="RIA_Skin_Ticketing_R"
					style="width: 160px; height: 300px; background: none; position: absolute; top: 75px; left: 1000px; overflow: hidden;">
					<a
						href="http://ad.cgv.co.kr/click/CGV/CGV_201608/RIA@RIA_Skin_Ticketing?ads_id=28597&amp;creative_id=69859&amp;click_id=90280&amp;content_series=&amp;event="
						target="_blank" style="top: 0px;"><img
						src="https://adimg.cgv.co.kr/images/202302/house/CGV_BUGS_160x300.png"
						width="160" height="300" border="0" alt="광고-CGV 기프트 카드"
						style="width: 160px; height: 300px;"></a>
				</div>
			</div>
		</div>

	</div>



	<div class="blackscreen" style="display: none;" id="blackscreen"></div>
	<!-- loading -->
	<div class="loading" id="ticket_loading" style="display: none;">
		<div class="dimm"></div>
		<p class="loadWrap">
			<img
				src="http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/ajax-loader-w.gif"
				alt="로딩 애니메이션">
		</p>
	</div>
	<!-- iframe -->
	<iframe id="proxy_iframe" src="http://www.cgv.co.kr/Ticket/Proxy.html"
		scrolling="no" frameborder="0" width="0" height="0"
		style="display: none;" title="데이터 연동 숨김 프레임"></iframe>
	<iframe src="/CGV2011/RIA/RR999.aspx" name="rsvDataframe"
		id="rsvDataframe" scrolling="no" frameborder="0" width="0" height="0"
		style="display: none;" title="데이터 연동 프레임"></iframe>
	<!-- javascript 상위프레임에 있는 스크립트를 사용-->
	<!--<script type="text/javascript" src="http://img.cgv.co.kr/common/js/insightIS.js"></script>-->

</body>





<%@ include file="../../footer.jsp"%>