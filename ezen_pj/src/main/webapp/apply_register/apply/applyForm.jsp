<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ include file="../../header.jsp" %>



<section name="applyBody" id="bodyBox_apply">
	<div class="applyBox" name="applyBoxForm">
	

			<div class="applyTitleBox">
				<ul class="applyTitle">
					<li><a href="#" onclick="return false">공연 종류</a></li>
					<li><a href="#" onclick="return false">공연</a></li>
					<li><a href="#" onclick="return false">날짜</a></li>
					<li><a href="#" onclick="return false">시간</a></li>
					<li><a href="#" onclick="return false">상세 정보</a></li>
					<li><a href="#" onclick="return false">좌석 구역</a></li>
				</ul>
			</div>
			<div class="applyBodyBox">
				<div class="categoryBox bodyBox">
					<ul>
						<li><a href="#" onclick="return false">전체</a></li>
						<li><a href="#" onclick="return false">콘서트</a></li>
						<li><a href="#" onclick="return false">뮤지컬</a></li>
						<li><a href="#" onclick="return false">스포츠</a></li>
						<li><a href="#" onclick="return false">페스티벌</a></li>
						<li><a href="#" onclick="return false">전시/행사</a></li>
					</ul>
				</div>
				<div class="contentNameBox bodyBox">
						<ul>
							<li><a href="#" onclick="return false">contentVO.title</a></li>
							<li><a href="#" onclick="return false">contentVO.title</a></li>
						</ul>
					<c:forEach items="${contentList }" var="contentVO">
					</c:forEach>
				</div>
				<div class="dateBox bodyBox">
							<ul>
								<li><a href="#" onclick="return false">contentVO.tdate</a></li>
								<li><a href="#" onclick="return false">contentVO.tdate</a></li>
							</ul>
						<c:forEach items="${contentList}" var="contentVO">
						</c:forEach>
				</div>
				<div class="timeBox bodyBox">
								<ul>
									<li><a href="#" onclick="return false">contentVO.?</a></li>
									<li><a href="#" onclick="return false">contentVO.?</a></li>
									<li><a href="#" onclick="return false">contentVO.?</a></li>
									<!-- 날짜를 선택하고 그 날짜에 맞는 시간을 선택하고 싶은데 어떻게 해야할까 -->
								</ul>
					<c:forEach items="${contentList}" var="contentVO">
					</c:forEach>
				</div>
				<div class="detailBox bodyBox">
					<!-- 선택한 공연 정보(포스터, 제목, 위치, 아티스트) -->
					<div class="contentDetail">
						<div class="poster">
							<img src="">
						</div>
						<div class="detail">
							<span class="title">contentList.title</span>
							<span class="location">{contentList.location}</span>
							<span class="artist">{contentList.artist}</span>
						</div>
					</div>
				</div>
				<div class="seatingChartBox bodyBox">
					<!-- 좌석 선택-좌석도 위에 보여주고 밑에 좌석 선택 -->
					<div class="seatingChartDetailBox">
						<div class="seatingChartImg">
							<img alt="" src="">
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