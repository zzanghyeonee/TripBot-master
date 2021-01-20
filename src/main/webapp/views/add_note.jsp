<%@ page import="com.capstone.tripbot.web.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<%!
	User user;
%>
<head>
	<title>TripBot</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Travello template project">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="/views/styles2/bootstrap4/bootstrap.min.css">
	<link href="/views/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="/views/plugins/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/views/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="/views/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="/views/plugins/OwlCarousel2-2.2.1/animate.css">
	<link rel="stylesheet" type="text/css" href="/views/styles2/about.css">
	<link rel="stylesheet" type="text/css" href="/views/styles2/about_responsive.css">
	<link rel="stylesheet" type="text/css" href="/views/styles2/destinations.css">
	<link rel="stylesheet" type="text/css" href="/views/styles2/destinations_responsive.css">

</head>
<body>

<div class="super_container">

	<!-- Header -->
	<header class="header" id="header">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="header_content d-flex flex-row align-items-center justify-content-start">
						<div class="header_content_inner d-flex flex-row align-items-end justify-content-start">
							<div class="logo"><a href="/views/main.jsp">TripBot</a></div>

							<!-- hidden -->
							<nav class="main_nav">
								<ul class="d-flex flex-row align-items-start justify-content-start">
									<li><a href="/views/main.jsp">메인 화면</a></li>
									<li><a href="/course_list">게시판</a></li>
									<li><a href="/theme_list.do">테마</a></li>
									<%
										user = (User) session.getAttribute("user");
										if (user == null || user.equals("")) {
									%>
									<li><a href="/views/sign_in.jsp" onclick="alert('로그인이 필요한 서비스입니다.');">챗봇</a></li>
									<li><a href="/views/sign_in.jsp" onclick="alert('로그인이 필요한 서비스입니다.');">여행일지</a></li>
									<li><a href="/views/sign_in.jsp" onclick="alert('로그인이 필요한 서비스입니다.');">마이 페이지</a></li>
									<%}else{%>
									<%--챗봇 링크 달기--%>
									<li><a href="/chat_list.do">챗봇</a></li>
									<li class="active"><a href="/course_note">여행일지</a></li>
									<li><a href="/views/my_page.jsp">마이 페이지</a></li>
									<%}%>
								</ul>
							</nav>
							<!-- //hidden -->

							<!-- log in,  display: none; 제거해야함-->
							<%
								if (user == null || user.equals("")) {
							%>
							<div class="hamburger ml-auto">
								<a href="/views/sign_in.jsp">
									<div><button class="newsletter_button">로그인</button></div>
								</a>
							</div>
							<div class="hamburger">
								<!-- register-->
								<a href="/views/sign_up.jsp">
									<div><button class="newsletter_button">회원가입</button></div>
								</a>
							</div>
							<%
							} else {
							%>
							<div class="hamburger ml-auto">
								<a style="font-size: small">
									<%=user.getName()%>님 안녕하세요
								</a>
							</div>
							<div class="hamburger">
								<a>
									<a href="/logout">
										<button type="button" class="newsletter_button">로그아웃</button>
									</a>
								</a>
							</div>
							<%
								}
							%>


						</div>
					</div>
				</div>
			</div>
			<!-- Header2, bootstrap.css에 row2 속성 추가함-->
			<div class="row2">
				<hr>
				<div class="hamburger my-auto">
					<i class="fa fa-bars" aria-hidden="true"></i>
				</div>
				<br>
			</div>
			<!-- //Header2 -->
		</div>
		<div class="header_social d-flex flex-row align-items-center justify-content-start">

		</div>
	</header>

	<!-- Menu -->
	<div class="menu">
		<div class="menu_header d-flex flex-row align-items-center justify-content-start">
			<div class="menu_logo"><a href="/views/main.jsp">TripBot</a></div>
			<div class="menu_close_container ml-auto"><div class="menu_close"><div></div><div></div></div></div>
		</div>
		<div class="menu_content">
			<ul>
				<li class="active"><a href="/views/main.jsp">메인 화면</a></li><hr style="border:solid 1px gray">
				<li><a href="/course_list">게시판</a></li><hr style="border:solid 1px gray">
				<li><a href="/theme_list.do">테마</a></li><hr style="border:solid 1px gray">
				<%
					user = (User) session.getAttribute("user");
					if (user == null || user.equals("")) {
				%>
				<li><a href="/views/sign_in.jsp" onclick="alert('로그인이 필요한 서비스입니다.');">챗봇</a></li><hr style="border:solid 1px gray">
				<li><a href="/views/sign_in.jsp" onclick="alert('로그인이 필요한 서비스입니다.');">여행일지</a></li><hr style="border:solid 1px gray">
				<li><a href="/views/sign_in.jsp" onclick="alert('로그인이 필요한 서비스입니다.');">마이 페이지</a></li><hr style="border:solid 1px gray">
				<%}else{%>
				<%--챗봇 링크 달기--%>
				<li><a href="/chat_list.do">챗봇</a></li><hr style="border:solid 1px gray">
				<li><a href="/course_note">여행일지</a></li><hr style="border:solid 1px gray">
				<li><a href="/views/my_page.jsp">마이 페이지</a></li><hr style="border:solid 1px gray">
				<%}%>
			</ul>
		</div>
		<div class="menu_social">
			<div class="menu_phone ml-auto">고객 문의: 010-1234-5678</div>
		</div>
	</div>

	<!-- Home -->

	<div class="home">
		<div class="background_image" style="background-image:url(/views/images/boardimage.jpg)"></div>
	</div>



	<div class="destinations" id="destinations">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_subtitle">자신만의 여행을 작성해보세요.</div>
					<div class="section_title"><h2>일지 추가</h2></div>
				</div>
			</div>
			<br>
			<hr>
			<div class="row about_row">
			</div>

			<div class="row destinations_row">
				<div class="col">
					<div class="destinations_container item_grid">
						<c:forEach var="course" items="${courses}">
							<!-- Destination -->
							<div class="destination item" style="height: 550px"  onclick="location.href='/course_detail/${course.courseNo}'">
								<c:set var="i" value="0"></c:set>
								<c:forEach var="board" items="${boards}">
									<c:if test="${course.courseNo eq board.courseNo and i<1}">
										<c:forEach var="image" items="${images}">
											<c:if test="${image.fno eq board.fno and i<1}">
												<div class="destination_image"><img src="/views/uploadfiles/${image.getFilename()}" alt=""></div>
												<c:set var="i" value="${i+1}"></c:set>
											</c:if>
										</c:forEach>
									</c:if>
								</c:forEach>
								<c:if test="${i == 0}">
									<div class="destination_image"><img src="/views/images/destination_2.jpg" alt=""></div>
								</c:if>
								<div class="destination_content">
									<div class="destination_title"><a href="#">${course.subject}</a></div>
									<div class="destination_subtitle"><p>작성자-${course.writer}</p></div>
										<%--			테마추가--%>
									<div class="destination_price">#${course.theme}</div>
									<div class="team_content">
										<div class="button about_button" style="margin-right: auto"><a href="/course_update/${course.courseNo}">일지 수정</a></div>

									</div>
								</div>
							</div>
						</c:forEach>

						<div class="destination item" style="height: 550px">
							<div class="team_item d-flex flex-column align-items-center justify-content-start text-center">
								<div class="team_image">
							<span class="fa-stack fa-5x">
							  <i class="fa fa-circle fa-stack-2x"></i>
							  <i class="fa fa-plus fa-stack-1x fa-inverse"></i>
							</span>
								</div>
								<div class="team_content">
									<div class="button about_button"><a href="/course_first_write">일지 추가</a></div>

								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Why Choose Us -->

	<div class="why">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="/views/images/why.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_subtitle">자신만의 여행을 만들기 어려우신가요?</div>
					<div class="section_title"><h2>이런 느낌은 어떠신가요?</h2></div>
				</div>
			</div>
			<div class="row why_row">

				<!-- Why item -->
				<div class="col-lg-4 why_col">
					<div class="why_item">
						<div class="why_image">
							<img src="/views/images/why_1.jpg" alt="">
							<div class="why_icon d-flex flex-column align-items-center justify-content-center">
								<img src="/views/images/why_1.svg" alt="">
							</div>
						</div>
						<div class="why_content text-center">
							<div class="why_title">첫번째</div>
							<div class="why_text">
								<p>자신이 가고 싶은 장소를 상상해보세요.</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Why item -->
				<div class="col-lg-4 why_col">
					<div class="why_item">
						<div class="why_image">
							<img src="/views/images/why_2.jpg" alt="">
							<div class="why_icon d-flex flex-column align-items-center justify-content-center">
								<img src="/views/images/why_2.svg" alt="">
							</div>
						</div>
						<div class="why_content text-center">
							<div class="why_title">두번째</div>
							<div class="why_text">
								<p>어떤 테마로 가고 싶은지 정하세요.</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Why item -->
				<div class="col-lg-4 why_col">
					<div class="why_item">
						<div class="why_image">
							<img src="/views/images/why_3.jpg" alt="">
							<div class="why_icon d-flex flex-column align-items-center justify-content-center">
								<img src="/views/images/why_3.svg" alt="">
							</div>
						</div>
						<div class="why_content text-center">
							<div class="why_title">세번째</div>
							<div class="why_text">
								<p>누구랑 가고 싶은지를 생각하세요.</p>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- //Why Choose Us -->



	<!-- Footer -->
	<footer class="footer" id="footer">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="/views//images/footer_1.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="newsletter">
						<div class="newsletter_title_container text-center">
							<div class="newsletter_subtitle">Trip Bot은 당신과의 소통을 소중히합니다.</div>
						</div>

					</div>
				</div>
			</div>
			<div class="row footer_contact_row">
				<div class="col-xl-10 offset-xl-1">
					<div class="row">

						<!-- Footer Contact Item -->
						<div class="col-xl-4 footer_contact_col">
							<div class="footer_contact_item d-flex flex-column align-items-center justify-content-start text-center">
								<div class="footer_contact_icon"><img src="/views/images/sign.svg" alt=""></div>
								<div class="footer_contact_title">고객 상담</div>
								<div class="footer_contact_list">
									<ul>
										<li>Office Landline: 000-0000-0000</li>
										<li>Mobile: 000-0000-0000</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Footer Contact Item -->
						<div class="col-xl-4 footer_contact_col">
							<div class="footer_contact_item d-flex flex-column align-items-center justify-content-start text-center">
								<div class="footer_contact_icon"><img src="/views/images/trekking.svg" alt=""></div>
								<div class="footer_contact_title">공지사항</div>
								<div class="footer_contact_list">
									<ul style="max-width:190px">
										<li>비고</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Footer Contact Item -->
						<div class="col-xl-4 footer_contact_col">
							<div class="footer_contact_item d-flex flex-column align-items-center justify-content-start text-center">
								<div class="footer_contact_icon"><img src="/views/images/around.svg" alt=""></div>
								<div class="footer_contact_title">제작 담당</div>
								<div class="footer_contact_list">
									<ul>
										<li>따라와</li>
										<li>Email@gmail.com</li>
									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>


	</footer>
	<!-- //Footer -->
</div>

<script src="/views/js/jquery-3.2.1.min.js"></script>
<script src="/views/styles2/bootstrap4/popper.js"></script>
<script src="/views/styles2/bootstrap4/bootstrap.min.js"></script>
<script src="/views/plugins/greensock/TweenMax.min.js"></script>
<script src="/views/plugins/greensock/TimelineMax.min.js"></script>
<script src="/views/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="/views/plugins/greensock/animation.gsap.min.js"></script>
<script src="/views/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="/views/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="/views/plugins/easing/easing.js"></script>
<script src="/views/plugins/parallax-js-master/parallax.min.js"></script>
<script src="/views/js/about.js"></script>
<script src="/views/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="/views/js/destinations.js"></script>

</body>
</html>