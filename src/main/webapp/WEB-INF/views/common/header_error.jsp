<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/setting/setting.jsp" %> 
<%@ page import ="org.springframework.security.core.context.SecurityContextHolder"%>
<%@ page import ="org.springframework.security.core.userdetails.UserDetails"%>
<%@ page import ="java.util.Collection"%>
<%@ page import ="org.springframework.security.core.GrantedAuthority"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

	<link rel="stylesheet" href="${path_resources}css/bootstrap.min.css">
	<link rel="stylesheet" href="${path_resources}css/font-awesome.min.css">
	<link rel="stylesheet" href="${path_resources}css/themify-icons.css">
	<link rel="stylesheet" href="${path_resources}css/style.css">
	<link rel="stylesheet" href="${path_resources_lifecare}css/custom.css">

</head>
<body>
    <!-- header-start -->
    <header>
        <div class="header-area ">
            <div class="header-top_area">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-md-6 ">
                            <div class="social_media_links">
                            </div>
                        </div>
                        <div class="col-xl-6 col-md-6">
                            <div class="short_contact_list">
                                <ul>
                                	<!-- 로그인 안했을경우 -->
                                	<c:if test="${sessionScope.userSession == null}">
	                                    <li><a href="${path}/preJoinIn">회원가입</a></li>
	                                    <li><a href="${path}/login">로그인</a></li>
                                    </c:if>
                                    <!-- 로그인 완료후 -->
                                    <c:if test="${sessionScope.userSession != null}">
	                                    <li><a href="${path}/customer/mypage">${sessionScope.userSession}의 마이페이지</a></li>
	                                    <li><a href="${path}/board/customerboardList">고객센터</a></li>
	                                    <%-- <li><a href="${path}/logout">로그아웃</a></li> --%>
	                                    <li><a href="javascript:document.getElementById('logout-form').submit();" >로그아웃</a></li>
	                                    <form id="logout-form" action="${path}/logout" method="POST">
	  										 <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
										</form>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="sticky-header" class="main-header-area">
                <div class="container">
                    <div class="row align-items-center" style="width:1000px;">
                        <div class="col-xl-3 col-lg-2">
                            <div class="logo">
                                <a href="${path}/">
                                    <img src="${path_resources}img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-7">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a href="${path}/covid19">코로나정보</a></li>
                                        <li><a href="#">진료서비스<i class="ti-angle-down"></i></a>
                                        	<ul class="submenu">
                                        		<li><a href="${path}/questionnaire">자가진단</a></li>
                                        		<li><a href="${path}/customer/appointment">진료예약</a></li>
                                        		<li><a href="${path}/customer/confirmAppointment">예약확인</a></li>
                                        		<li><a href="${path}/customer/payment">결제 및 서류발급</a></li>
                                            </ul>
                                        </li>     
                                        <li><a href="#">이용안내<i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="${path }/findWay">오시는길</a></li>
                                                <li><a href="${path }/findPharmacy">주변약국</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">의료정보 <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="${path}/drugSearch">약정보</a></li>
                                                <li><a href="${path }/first_aid">응급처치</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">병원소개 <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="${path}/intro">병원소개</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                        	<div class="Appointment">
	                                        	<div class="book_btn d-none d-lg-block">
	                                        		<a class="popup-with-form" href="${path}/customer/appointment">예약하기</a>
	                                        	</div>
	                                        </div>
                                        </li>
                                    </ul>
                                    
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    <div style="margin-top:165px;"></div>
    <%@ include file="./chatbot.jsp"%>
    <!-- header-end -->
</body>
</html>