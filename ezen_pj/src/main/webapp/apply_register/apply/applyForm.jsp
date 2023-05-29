<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>


<form name="frm" method="post" class="form">
<section name="applyBody" id="bodyBox_apply">
	<div class="applyBox" name="applyBoxForm">
	

			<div class="applyTitleBox">
			
				<ul class="applyTitle">
					<li>공연 종류</li>
					<li>공연</li>
					<li>상세 정보</li>
					<li>날짜</li>
					<li>시간</li>
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
						<ul>
					<c:forEach items="${contentList}" var="contentVO" varStatus="state">
							<li onclick="saveCseq('${state.count}')"><a href="ticket.do?command=applyContentSelect&cseq=${contentVO.cseq}&category=${category}&locationNum=${contentVO.locationNum}">
							${contentVO.title}</a>
								<input type="hidden" value="${contentVO.cseq}" name="cseq" id='${"cseq"+=state.count}'>
							</li>
					</c:forEach>
						</ul>
				</div>
				<div class="detailBox bodyBox">
					<!-- 선택한 공연 정보(포스터, 제목, 위치, 아티스트) -->
					<div class="contentDetail">
						<div class="poster">
					<c:forEach items="${contentTableList}" var="contentTL">
							<img src="${contentTL.image}" width="220px" height="294">
					</c:forEach>
						</div>
						<div class="detail">
					<c:forEach items="${contentTableList}" var="contentTL">
							<div class="header1">공연명</div><div class="box3">${contentTL.title}</div>
					</c:forEach>
					<c:forEach items="${contentTableList}" var="contentTL">
							<div class="header1">아티스트</div><div class="artist box3">${contentTL.artist}</div>
					</c:forEach>
					<c:forEach items="${contentLocationList}" var="contentLL">
							<div class="header1">공연 위치</div><div class="location box3">${contentLL.locationName}</div>
					</c:forEach>
						</div>
					</div>
				</div>
				<div class="dateBox bodyBox">
							<ul class="date">
						<c:forEach items="${contentDateList}" var="contentDL" varStatus="state" begin="1">
								<li onclick="saveDate('${state.count}')"><a href="ticket.do?command=applyContentSelect&cseq=${contentDL.cseq}&category=${category}&locationNum=${contentDL.locationNum}&contentDate=${contentDL.contentDate}">
								<input type="hidden" value="${contentDL.contentDate}" name="date" id='${"date"+=state.count}'>
								<fmt:formatDate value="${contentDL.contentDate}" pattern="yyyy-MM-dd" /></a>
								</li>
						</c:forEach>
							</ul>
				</div>
				<div class="timeBox bodyBox">
					<ul>
						<c:forEach items="${contentTimeList}" var="contentTil" varStatus="state">
							<li onclick="saveTime('${state.count}')"><a href="#" onclick="return false">${contentTil.contentTime}</a>
							<input type="hidden" value="${contentTil.contentTime}" name="time" id='${"time"+=state.count}'>
							</li>
						</c:forEach>
									
					</ul>
				</div>
				<div class="seatingChartBox bodyBox">
					<!-- 좌석 선택-좌석도 위에 보여주고 밑에 좌석 선택 -->
					<div class="seatingChartBoxSeparate">
						<div class="seatingChartDetailBox">
							<div class="seatingChartImg">
							<!-- 좌석도도 content_loc_seat_view에서 가져와야함 -->
					<c:forEach items="${contentLocationList}" var="contentLL">
								<img alt="좌석도" src="${contentLL.areaImage}" width="220" height="220">
					</c:forEach>
							</div>
						<div class="AreaBox">
									<ul>
							<c:forEach  items="${contentAreaList}" var="contentAL" varStatus="state">
										<li onclick="saveArea('${state.count}')">
										<div class="area1">${contentAL.area}</div><div class="price1">${contentAL.price}원</div>
										<input type="hidden" value="${contentAL.area}" name="area" id='${"area"+=state.count}'>
										</li>
							</c:forEach>
									</ul>
						</div>
						</div>
					</div>
					<div class="quantityBox">
						<div class="quantityTitle">수량</div>
						<div class="quantityArea">
							<input type="number" min="1" max="10" id="quantity" onchange="saveQuantity()">
						</div>
					</div>
				</div>
			</div>
		</div>		
	</section>
	<section class=buttonSection>
		<div class=buttonBox>
			<div class=buttonSmallBox>
				<input class="button1" type="button" value="뒤로">
			</div>
			<div class=groupBox>
					<div class=buttonSmallBox>
						<input class="button1" type="button" value="다시 선택">
					</div>
					<div class=buttonSmallBox>
						<input class="button1" type="button" value="장바구니">
					</div>
					<div class=buttonSmallBox>
						<input type="submit" class="button1 next" value="다음" onclick="return applyFormCheck()"/>
					</div>
			</div>
		</div>
	</section>
</form>	
	


<%@ include file="../../footer.jsp" %>