<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<section	class="body_Choose" style="width: 720px;">
		<header class="">
			<button type="button"	class="Button_close">
				<i aria-hidden="true" class="Icon_close"></i>
				<span class="Typography_close">닫기</span>
			</button>
			<div class="titlearea_Choose" tabindex="-1">
				<h1	class="title_Choose">안녕하세요! 티켓을 원하시는 분은 신청을, 티켓팅에 도전하실 분은 일정 등록을 해주세요.</h1>
			</div>
		</header>
		<main>
			<div>
				<div class="mainArea_UserChoice">
					<button type="button"	class="Button_apply" onClick="go_apply()">
						<div class="box_apply">
							<div class="box_applyImg">
								<span
									class="Image_apply"><img	src=" "	class="" loading="lazy" alt="신청"></span>
							</div>
							<span class="Typography_apply" style="margin-top: 10px;">
							티켓팅 신청할게요
							</span>
						</div>
					</button>
					<button type="button"	class="Button_register" onClick="go_register()">
						<div class="box_register">
							<div class="box_registerImg">
								<span
									class="Image_register"><img	src=" "	class="" loading="lazy" alt="일정 등록"></span>
							</div>
							<span class="Typography_apply" style="margin-top: 10px;">
							티켓팅이 가능한 일정을 등록할게요
							</span>
						</div>
					</button>
				</div>
			</div>
		</main>
	</section>


<%@ include file="../footer.jsp" %>