<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ include file="../../header.jsp" %>



<section name="applyBody" id="bodyBox_apply">
	<div class="applyBox" name="applyBoxForm">
	

			<div class="applyTitleBox">
				<ul class="applyTitle">
					<li>공연 종류</li>
					<li>공연</li>
					<li>날짜</li>
					<li>시간</li>
					<li>상세 정보</li>
					<li>좌석 구역</li>
				</ul>
			</div>
			<div class="applyBodyBox">
				<div class="categoryBox bodyBox">
					<ul>
						<li><a href="#" onclick="select_category(0)">전체</a></li>
						<li><a href="#" onclick="select_category(1)">콘서트</a></li>
						<li><a href="#" onclick="select_category(2)">뮤지컬</a></li>
						<li><a href="#" onclick="select_category(3)">스포츠</a></li>
						<li><a href="#" onclick="select_category(4)">페스티벌</a></li>
						<li><a href="#" onclick="select_category(5)">전시/행사</a></li>
					</ul>
				</div>
				<div class="contentNameBox bodyBox">
					<c:forEach items="${contentList}" var="contentVO">
						<ul>
							<li><a href="#" onclick="return false">${contentVO.title}</a></li>
						</ul>
					</c:forEach>
				</div>
				<div class="dateBox bodyBox">
						<c:forEach items="${contentList}" var="contentVO">
							<ul>
							<!-- 이거는 content_time_view를 불러야함 -->
								<li><a href="#" onclick="return false">${contentVO.date}</a></li>
							</ul>
						</c:forEach>
				</div>
				<div class="timeBox bodyBox">
					<c:forEach items="${contentList}" var="contentVO">
							<!-- 이거는 content_time_view를 불러야함 -->
								<ul>
									<li><a href="#" onclick="return false">contentVO.?</a></li>
								</ul>
					</c:forEach>
				</div>
				<div class="detailBox bodyBox">
					<!-- 선택한 공연 정보(포스터, 제목, 위치, 아티스트) -->
					<div class="contentDetail">
						<div class="poster">
							<img src="${contentList.image}">
						</div>
						<div class="detail">
							<span class="title">${contentList.title}</span>
							<span class="location">${contentList.location}</span>
							<span class="artist">${contentList.artist}</span>
						</div>
					</div>
				</div>
				<div class="seatingChartBox bodyBox">
					<!-- 좌석 선택-좌석도 위에 보여주고 밑에 좌석 선택 -->
					<div class="seatingChartDetailBox">
						<div class="seatingChartImg">
						<!-- 좌석도도 content_loc_seat_view에서 가져와야함 -->
							<img alt="" src="${contentVO.areaImage}">
						</div>
						<c:forEach  items="${contentList}" var="contentVO">
							<div class="seatingChartAreaBox">
								<ul>
									<li><a href="#" onclick="return false">{contentVO.area}</a></li>
								</ul>
							</div>
						</c:forEach>
					</div>
				</div>

				

	</div>
</section>
	
	


<%@ include file="../../footer.jsp" %>