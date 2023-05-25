	<div class="contentNameBox bodyBox">
					<c:forEach items="${contentList}" var="contentVO">
						<ul>
							<li onclick="select_contentByTitle()">
							${contentVO.title}
								<input type="hidden" value="${contentVO.cseq}" name="cseq">
								<input type="hidden" value="${category}" name="category">
								<input type="hidden" value="${contentVO.locationNum}" name="locationNum">
							</li>
						</ul>
					</c:forEach>
				</div>
				<div class="dateBox bodyBox">
						<c:forEach items="${contentDateList}" var="contentDL">
							<ul>
								<li onclick="select_contentByDate()">
									<fmt:formatDate value="${contentDL.contentDate}" pattern="yyyy-MM-dd" />
									<input type="hidden" value="to_date(${contentDL.contentDate}, 'yyyy-mm-dd')" id="date">
								</li>
							</ul>
						</c:forEach>
						
				</div>
				<div class="timeBox bodyBox">
					<c:forEach items="${contentTimeList}" var="contentTil">
								<ul>
									<li  onclick="select_contentByDate()">
										<input type="hidden" value="${contentTil.contentTime}" id="time">
										${contentTiL.contentTime}
									</li>
								</ul>
					</c:forEach>
				</div>
				<div class="detailBox bodyBox">
					<!-- 선택한 공연 정보(포스터, 제목, 위치, 아티스트) -->
					<div class="contentDetail">
					<c:forEach items="${contentTableList}" var="contentTL">
						<div class="poster">
							<img src="${contentTL.image}">
						</div>
						<div class="detail">
							<div class="title">${contentTL.title}</div>
							<div class="artist">아티스트 : ${contentTL.artist}</div>
					<c:forEach items="${contentLocationList}" var="contentLL">
							<div class="location">장소 : ${contentLL.locationName}</div>
					</c:forEach>
						</div>
					</c:forEach>
					</div>
				</div>
				<div class="seatingChartBox bodyBox">
					<!-- 좌석 선택-좌석도 위에 보여주고 밑에 좌석 선택 -->
					<div class="seatingChartDetailBox">
						<c:forEach  items="${contentLocationList}" var="contentLL">
						<div class="seatingChartImg">
						<!-- 좌석도도 content_loc_seat_view에서 가져와야함 -->
							<img alt="" src="${contentLL.areaImage}">
						</div>
						</c:forEach>
					</div>
					<div class="AreaBox">
						<c:forEach  items="${contentAreaList}" var="contentAL">
								<ul>
									<li  onclick="select_area()">
										<input type="hidden" value="${contentAL.area}" id="area">
										${contentAL.area}&nbsp;&nbsp;&nbsp;${contentAL.area}원
										</li>
								</ul>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>		
	</section>