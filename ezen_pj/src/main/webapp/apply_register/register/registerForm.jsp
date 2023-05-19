<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>

<article>

<div class="step step1" style="height: 600px; display: block;">
					<!-- DATE 섹션 -->
					<div class="section section-date">
						<div class="col-head" id="skip_date_list">
							<h3 class="sreader">날짜</h3>
							<a href="#" onclick="return false;" class="skip_to_something">날짜 건너뛰기</a>
						</div>
						<div class="col-body" style="height: 565px;">
							<!-- 날짜선택 -->
							<div class="date-list nano has-scrollbar has-scrollbar-y" id="date_list">
								<ul class="content scroll-y" tabindex="-1" style="right: -15px;"><div><li class="month dimmed"><div><span class="year">2023</span><span class="month">5</span><div></div></div></li><li data-index="0" date="20230519" class="day"><a href="#" onclick="return false;"><span class="dayweek">금</span><span class="day">19</span><span class="sreader"></span></a></li><li data-index="1" date="20230520" class="day day-sat"><a href="#" onclick="return false;"><span class="dayweek">토</span><span class="day">20</span><span class="sreader"></span></a></li><li data-index="2" date="20230521" class="day day-sun"><a href="#" onclick="return false;"><span class="dayweek">일</span><span class="day">21</span><span class="sreader"></span></a></li><li data-index="3" date="20230522" class="day"><a href="#" onclick="return false;"><span class="dayweek">월</span><span class="day">22</span><span class="sreader"></span></a></li><li data-index="4" date="20230523" class="day"><a href="#" onclick="return false;"><span class="dayweek">화</span><span class="day">23</span><span class="sreader"></span></a></li><li data-index="5" date="20230524" class="day"><a href="#" onclick="return false;"><span class="dayweek">수</span><span class="day">24</span><span class="sreader"></span></a></li><li data-index="6" date="20230525" class="day"><a href="#" onclick="return false;"><span class="dayweek">목</span><span class="day">25</span><span class="sreader"></span></a></li><li data-index="7" date="20230526" class="day"><a href="#" onclick="return false;"><span class="dayweek">금</span><span class="day">26</span><span class="sreader"></span></a></li><li data-index="8" date="20230527" class="day day-sat"><a href="#" onclick="return false;"><span class="dayweek">토</span><span class="day">27</span><span class="sreader"></span></a></li><li data-index="9" date="20230528" class="day day-sun"><a href="#" onclick="return false;"><span class="dayweek">일</span><span class="day">28</span><span class="sreader"></span></a></li><li data-index="10" date="20230529" class="day"><a href="#" onclick="return false;"><span class="dayweek">월</span><span class="day">29</span><span class="sreader"></span></a></li><li data-index="11" date="20230530" class="day"><a href="#" onclick="return false;"><span class="dayweek">화</span><span class="day">30</span><span class="sreader"></span></a></li><li data-index="12" date="20230531" class="day dimmed"><a href="#" onclick="return false;"><span class="dayweek">수</span><span class="day">31</span><span class="sreader">선택불가</span></a></li><li class="month dimmed"><div><span class="year">2023</span><span class="month">6</span><div></div></div></li><li data-index="13" date="20230601" class="day dimmed"><a href="#" onclick="return false;"><span class="dayweek">목</span><span class="day">1</span><span class="sreader">선택불가</span></a></li><li data-index="14" date="20230602" class="day dimmed"><a href="#" onclick="return false;"><span class="dayweek">금</span><span class="day">2</span><span class="sreader">선택불가</span></a></li><li data-index="15" date="20230603" class="day day-sat dimmed"><a href="#" onclick="return false;"><span class="dayweek">토</span><span class="day">3</span><span class="sreader">선택불가</span></a></li><li data-index="16" date="20230604" class="day day-sun dimmed"><a href="#" onclick="return false;"><span class="dayweek">일</span><span class="day">4</span><span class="sreader">선택불가</span></a></li><li data-index="17" date="20230605" class="day dimmed"><a href="#" onclick="return false;"><span class="dayweek">월</span><span class="day">5</span><span class="sreader">선택불가</span></a></li><li data-index="18" date="20230606" class="day dimmed"><a href="#" onclick="return false;"><span class="dayweek">화</span><span class="day">6</span><span class="sreader">선택불가</span></a></li><li data-index="19" date="20230610" class="day day-sat dimmed"><a href="#" onclick="return false;"><span class="dayweek">토</span><span class="day">10</span><span class="sreader">선택불가</span></a></li><li data-index="20" date="20230627" class="day dimmed"><a href="#" onclick="return false;"><span class="dayweek">화</span><span class="day">27</span><span class="sreader">선택불가</span></a></li></div></ul>
							<div class="pane pane-y" style="display: block; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px; top: 0px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div>
						</div>
					</div>
					<!-- TIME 섹션 -->
					<div class="section section-time">
						<div class="col-head" id="skip_time_list">
							<h3 class="sreader">시간</h3>
							<a href="#" class="skip_to_something" onclick="skipToSomething('tnb_step_btn_right');return false;">시간선택 건너뛰기</a>
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

</article>


<%@ include file="../../footer.jsp"%>