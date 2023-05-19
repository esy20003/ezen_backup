<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>

<div class="stickyWrap">
	<h3 class="blind">상품 예매하기</h3>
	<div class="sideMain">
		<div class="sideContainer containerTop sideToggleWrap">
			<div class="sideHeader">
				<a class="sideToggleBtn" data-toggle="sideToggleWrap" role="button"><h4
						class="sideTitle">관람일</h4>
					<div class="selectedData">
						<span class="blind">선택된 일자:</span><span class="date">2023.06.10
							(토)</span>
					</div></a>
			</div>
			<div class="sideContent toggleCalendar">
				<div class="sideCalendar">
					<div class="datepicker">
						<div class="datepicker-container datepicker-inline">
							<div class="datepicker-panel" data-view="days picker">
								<ul>
									<li data-view="month prev" class="disabled">‹</li>
									<li data-view="month current">2023. 06</li>
									<li data-view="month next" class="disabled">›</li>
								</ul>
								<ul data-view="week">
									<li>일</li>
									<li>월</li>
									<li>화</li>
									<li>수</li>
									<li>목</li>
									<li>금</li>
									<li>토</li>
								</ul>
								<ul data-view="days">
									<li class="muted">0</li>
									<li class="muted">0</li>
									<li class="muted">0</li>
									<li class="muted">0</li>
									<li class="disabled">1</li>
									<li class="disabled">2</li>
									<li class="disabled">3</li>
									<li class="disabled">4</li>
									<li class="disabled">5</li>
									<li class="disabled">6</li>
									<li class="disabled">7</li>
									<li class="disabled">8</li>
									<li class="disabled">9</li>
									<li class="picked">10</li>
									<li class="">11</li>
									<li class="disabled">12</li>
									<li class="disabled">13</li>
									<li class="disabled">14</li>
									<li class="disabled">15</li>
									<li class="disabled">16</li>
									<li class="disabled">17</li>
									<li class="disabled">18</li>
									<li class="disabled">19</li>
									<li class="disabled">20</li>
									<li class="disabled">21</li>
									<li class="disabled">22</li>
									<li class="disabled">23</li>
									<li class="disabled">24</li>
									<li class="disabled">25</li>
									<li class="disabled">26</li>
									<li class="disabled">27</li>
									<li class="disabled">28</li>
									<li class="disabled">29</li>
									<li class="disabled">30</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="sideContainer containerMiddle sideToggleWrap ">
			<div class="sideHeader">
				<a class="sideToggleBtn" data-toggle="sideToggleWrap" role="button"><h4
						class="sideTitle">회차</h4>
					<div class="selectedData">
						<span class="blind">선택된 회차:</span><span class="time">1회
							18:00</span>
					</div></a>
			</div>
			<div class="sideContent">
				<div class="sideTimeTable toggleTimeTable">
					<ul class="timeTableList">
						<li class="timeTableItem"><a
							class="timeTableLabel is-toggled" data-tabtoggle="timeTableList"
							role="button" data-seq="001" data-text="1회 18:00">1회 <span>18:00</span><span
								class=""></span></a></li>
					</ul>
				</div>
				<h4 class="sideTitle blind">잔여석</h4>
				<div class="sideSeatTable">
					<ul class="seatTableList">
						<p class="has-nodata">잔여석 안내 서비스를 제공하지 않습니다.</p>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="sideBtnWrap">
		<a class="sideBtn is-primary" href="#" data-check="false"><span>예매하기</span></a><a
			class="sideBtn is-foreign" href="#"><span><i>BOOKING</i><i
				class="slash">/</i><i>外國語</i></span></a><a
			href="https://nol.interpark.com/promotion/nol-promotion?mchtNo=INTERPARK_TICKET&amp;mchtDtlNo=09&amp;eventCode=NOIII"
			class="sideBtnLink is-nolpoint" target="_blank">NOL 카드로 예매하고 2만원
			할인받기</a><a
			href="http://www.playdb.co.kr/playdb/PlaydbDetail.asp?sReqPlayNo=188243"
			class="sideBtnLink is-playdb" target="_blank" rel="noopener">이
			공연이 더 궁금하다면<span class="logo-playdb"></span><span class="blind">PLAY
				DB</span>
		</a>
	</div>
</div>

<%@ include file="../../footer.jsp"%>