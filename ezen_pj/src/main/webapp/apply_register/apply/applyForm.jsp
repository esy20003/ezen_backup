<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>


<section name="applyBody" id="bodyBox_apply">
	<div class="applyBox" name="applyBoxForm">
	
		<table class="applyContent" name="applyContent">
			<tr class="tableHead"><th>공연 종류</th><th>공연명</th><th>날짜</th><th>시간</th><th>상세 정보</th><th>좌석 구역</th></tr>
			<tr>
				<td class="category">
		<!-- 공연 주제 -->
					<div>전체</div>
					<div>콘서트</div>
					<div>뮤지컬</div>
					<div>스포트</div>
					<div>페스티벌</div>
					<div>전시/행사</div>
				</td>
				<td class="contentList">
						<!-- 공연 선택 -->
					<div class="contentSelectBox">
						<span class="contentSelect">
							<c:forEach items="${contentList }" var="contentVO">
							<ul>
								<li><a href="#" onclick="return false">contentVO.titl</a></li>
							</ul>
							</c:forEach>
						</span>
					</div>
				</td>
				<td class="date">
						<!-- 날짜-->
					<div class="dateBox">
						<c:forEach items="${contentList}" var="contentVO">
							<ul>
								<li><a href="#" onclick="return false">contentVO.tdate</a></li>
							</ul>
						</c:forEach>
					</div>
				</td>
				<td class="time">
						<!-- 시간-->
					<div class="timeBox">
						<c:forEach items="${contentList}" var="contentVO">
							<ul>
								<li><a href="#" onclick="return false">contentVO.?</a></li>
								<!-- 날짜를 선택하고 그 날짜에 맞는 시간을 선택하고 싶은데 어떻게 해야할까 -->
							</ul>
						</c:forEach>
					</div>
				</td>
				<td class="detail">
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
				</td>
				<td class="seatingChart">
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
				</td>
				
			</tr>
				
		</table>
	</div>
</section>
	
	

<%@ include file="../../footer.jsp"%>
