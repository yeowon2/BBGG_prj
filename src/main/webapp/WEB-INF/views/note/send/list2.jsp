<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>Scrooge I Email</title>
<meta name="description"
	content="A responsive bootstrap 4 admin dashboard template by hencework" />

<!-- Toggles CSS -->
<link href="/resources/vendors/jquery-toggles/css/toggles.css"
	rel="stylesheet" type="text/css">
<link
	href="/resources/vendors/jquery-toggles/css/themes/toggles-light.css"
	rel="stylesheet" type="text/css">

<!-- Custom CSS -->
<link href="/resources/dist/css/style.css" rel="stylesheet"
	type="text/css">

<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>

<body>
<!-- HK Wrapper -->
    <div class="hk-wrapper hk-alt-nav">

        <!-- Top Navbar -->
        <nav class="navbar navbar-expand-xl navbar-light fixed-top hk-navbar hk-navbar-alt">
            <a class="navbar-toggle-btn nav-link-hover navbar-toggler" href="javascript:void(0);" data-toggle="collapse" data-target="#navbarCollapseAlt" aria-controls="navbarCollapseAlt" aria-expanded="false" aria-label="Toggle navigation"><span class="feather-icon"><i data-feather="menu"></i></span></a>
            <a class="navbar-brand text-green" href="dashboard1.html">
                BANG 콕
            </a>
            <div class="collapse navbar-collapse" id="navbarCollapseAlt">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown show-on-hover">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								매물보기
							</a>
                        <div class="dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                            <a class="dropdown-item" href="dashboard1.html">CRM</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown show-on-hover">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								관심목록
							</a>
                        <div class="dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                            <div class="sub-dropdown-menu show-on-hover">
                                <a href="#" class="dropdown-toggle dropdown-item">Application</a>
                                <div class="dropdown-menu open-right-side">
                                    <a class="dropdown-item active" href="chats.html">Chat</a>
                                    <a class="dropdown-item" href="calendar.html">Calendar</a>
                                    <a class="dropdown-item" href="email.html">Email</a>
                                    <a class="dropdown-item" href="file-manager.html">File Manager</a>
                                </div>
                            </div>
                            <div class="sub-dropdown-menu show-on-hover">
                                <a href="#" class="dropdown-toggle dropdown-item">Authentication</a>
                                <div class="dropdown-menu open-right-side">
                                    <div class="sub-dropdown-menu show-on-hover">
                                        <a href="#" class="dropdown-toggle dropdown-item">Sign Up</a>
                                        <div class="dropdown-menu open-right-side">
                                            <a class="dropdown-item" href="signup.html">Cover</a>
                                            <a class="dropdown-item" href="signup-simple.html">Simple</a>
                                        </div>
                                    </div>
                                    <div class="sub-dropdown-menu show-on-hover">
                                        <a href="#" class="dropdown-toggle dropdown-item">Login</a>
                                        <div class="dropdown-menu open-right-side">
                                            <a class="dropdown-item" href="login.html">Cover</a>
                                            <a class="dropdown-item" href="login-simple.html">Simple</a>
                                        </div>
                                    </div>
                                    <div class="sub-dropdown-menu show-on-hover">
                                        <a href="#" class="dropdown-toggle dropdown-item">Recover Pwd</a>
                                        <div class="dropdown-menu open-right-side">
                                            <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
                                            <a class="dropdown-item" href="reset-password.html">Reset Password</a>
                                        </div>
                                    </div>
                                    <a class="dropdown-item" href="lock-screen.html">Lock Screen</a>
                                    <a class="dropdown-item" href="404.html">Error 404</a>
                                    <a class="dropdown-item" href="maintenance.html">Maintenance</a>
                                </div>
                            </div>
                            <a class="dropdown-item" href="profile.html">Profile</a>
                            <a class="dropdown-item" href="invoice.html">Invoice</a>
                            <a class="dropdown-item" href="gallery.html">Gallery</a>
                            <a class="dropdown-item" href="activity.html">Activity</a>
                            <a class="dropdown-item" href="faq.html">Faq</a>
                        </div>
                    </li>
                    <li class="nav-item show-on-hover active">
                        <a class="nav-link " href="#" role="button" aria-haspopup="true" aria-expanded="false">
								보낸 쪽지함
							</a>
                    </li>
                    <li class="nav-item dropdown show-on-hover">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								마이페이지
							</a>
                        <div class="dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                            <a class="dropdown-item" href="dashboard1.html">회원정보 수정</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Log<span class="badge badge-green badge-sm badge-pill ml-10">v 1.0</span></a>
                    </li>
                </ul>
                <form class="navbar-search-alt">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><span class="feather-icon"><i data-feather="search"></i></span></span>
                        </div>
                        <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                    </div>
                </form>
            </div>
            <ul class="navbar-nav hk-navbar-content">
                <li class="nav-item">
                    <a id="settings_toggle_btn" class="nav-link nav-link-hover" href="javascript:void(0);"><span class="feather-icon"><i data-feather="settings"></i></span></a>
                </li>
                <li class="nav-item dropdown dropdown-notifications">
                    <a class="nav-link dropdown-toggle no-caret " href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="feather-icon"><i data-feather="bell"></i></span><span class="badge-wrap"><span class="badge badge-success badge-indicator badge-indicator-sm badge-pill pulse"></span></span></a>
                    <div class="dropdown-menu dropdown-menu-right" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                        <h6 class="dropdown-header">Notifications <a href="javascript:void(0);" class="">View all</a></h6>
                        <div class="notifications-nicescroll-bar">
                            <a href="javascript:void(0);" class="dropdown-item">
                                <div class="media">
                                    <div class="media-img-wrap">
                                        <div class="avatar avatar-sm">
                                            <img src="/resources/dist/img/avatar1.jpg" alt="user" class="avatar-img rounded-circle">
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <div>
                                            <div class="notifications-text"><span class="text-dark text-capitalize">Evie Ono</span> accepted your invitation to join the team</div>
                                            <div class="notifications-time">12m</div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="javascript:void(0);" class="dropdown-item">
                                <div class="media">
                                    <div class="media-img-wrap">
                                        <div class="avatar avatar-sm">
                                            <img src="/resources/dist/img/avatar2.jpg" alt="user" class="avatar-img rounded-circle">
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <div>
                                            <div class="notifications-text">New message received from <span class="text-dark text-capitalize">Misuko Heid</span></div>
                                            <div class="notifications-time">1h</div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="javascript:void(0);" class="dropdown-item">
                                <div class="media">
                                    <div class="media-img-wrap">
                                        <div class="avatar avatar-sm">
                                            <span class="avatar-text avatar-text-primary rounded-circle">
													<span class="initial-wrap"><span><i class="zmdi zmdi-account font-18"></i></span></span>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <div>
                                            <div class="notifications-text">You have a follow up with<span class="text-dark text-capitalize"> Scrooge head</span> on <span class="text-dark text-capitalize">friday, dec 19</span> at <span class="text-dark">10.00 am</span></div>
                                            <div class="notifications-time">2d</div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="javascript:void(0);" class="dropdown-item">
                                <div class="media">
                                    <div class="media-img-wrap">
                                        <div class="avatar avatar-sm">
                                            <span class="avatar-text avatar-text-success rounded-circle">
													<span class="initial-wrap"><span>A</span></span>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <div>
                                            <div class="notifications-text">Application of <span class="text-dark text-capitalize">Sarah Williams</span> is waiting for your approval</div>
                                            <div class="notifications-time">1w</div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="javascript:void(0);" class="dropdown-item">
                                <div class="media">
                                    <div class="media-img-wrap">
                                        <div class="avatar avatar-sm">
                                            <span class="avatar-text avatar-text-warning rounded-circle">
												<span class="initial-wrap"><span><i class="zmdi zmdi-notifications font-18"></i></span></span>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <div>
                                            <div class="notifications-text">Last 2 days left for the project</div>
                                            <div class="notifications-time">15d</div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown dropdown-authentication">
                    <a class="nav-link dropdown-toggle no-caret" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <div class="media">
                            <div class="media-img-wrap">
                                <div class="avatar">
                                    <img src="/resources/dist/img/avatar5.jpg" alt="user" class="avatar-img rounded-circle">
                                </div>
                                <span class="badge badge-success badge-indicator"></span>
                            </div>
                            <div class="media-body">
                                <span>박지원<i class="zmdi zmdi-chevron-down"></i></span>
                            </div>
                        </div>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
                        <a class="dropdown-item" href="profile.html"><i class="dropdown-icon zmdi zmdi-account"></i><span>Profile</span></a>
                        <a class="dropdown-item" href="#"><i class="dropdown-icon zmdi zmdi-card"></i><span>My balance</span></a>
                        <a class="dropdown-item" href="inbox.html"><i class="dropdown-icon zmdi zmdi-email"></i><span>Inbox</span></a>
                        <a class="dropdown-item" href="#"><i class="dropdown-icon zmdi zmdi-settings"></i><span>Settings</span></a>
                        <div class="dropdown-divider"></div>
                        <div class="sub-dropdown-menu show-on-hover">
                            <a href="#" class="dropdown-toggle dropdown-item no-caret"><i class="zmdi zmdi-check text-success"></i>Online</a>
                            <div class="dropdown-menu open-left-side">
                                <a class="dropdown-item" href="#"><i class="dropdown-icon zmdi zmdi-check text-success"></i><span>Online</span></a>
                                <a class="dropdown-item" href="#"><i class="dropdown-icon zmdi zmdi-circle-o text-warning"></i><span>Busy</span></a>
                                <a class="dropdown-item" href="#"><i class="dropdown-icon zmdi zmdi-minus-circle-outline text-danger"></i><span>Offline</span></a>
                            </div>
                        </div>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#"><i class="dropdown-icon zmdi zmdi-power"></i><span>Log out</span></a>
                    </div>
                </li>
            </ul>
        </nav>
        <!-- /Top Navbar -->

        <!-- Main Content -->
        <div class="hk-pg-wrapper pb-0 px-0">
            <!-- Container -->
            <div class="container-fluid">
                <!-- Row -->
                <div class="row">
                    <div class="col-xl-12 pa-0">
                        <div class="emailapp-wrap">
                            
                            <div class="email-box">
                                <div class="emailapp-left">
                                    <header>
                                        <a href="javascript:void(0)" id="emailapp_sidebar_move" class="emailapp-sidebar-move">
                                            <span class="feather-icon"><i data-feather="menu"></i></span>
                                        </a>
                                        <span class="">보낸 쪽지함</span>
                                        <a href="javascript:void(0)" class="email-compose" data-toggle="modal" data-target="#exampleModalEmail">
                                            <span class="feather-icon"><i data-feather="edit"></i></span>
                                        </a>
                                    </header>
                                    <form role="search" class="email-search">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="feather-icon"><i data-feather="search"></i></span>
                                            </div>
                                            <input type="text" class="form-control" placeholder="Search">
                                        </div>
                                    </form>
                                    <div class="emailapp-emails-list">
                                        <div class="nicescroll-bar">
                                            <c:forEach var="noteVO" items="${sendList}">
                                                <div>
                                                    <a href="javascript:void(0);" class="media" data-note-no="${noteVO.noteNo}">
                                                        <div class="media-img-wrap">
                                                            <div class="avatar">
                                                                <img src="/resources/dist/img/avatar1.jpg" alt="user" class="avatar-img rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="media-body">
                                                            <div>
                                                                <div id="noteNo">${noteVO.noteNo}</div>
                                                                <div id="userNo">${noteVO.userNo}</div>
                                                                <div class="email-head font-weight-700 font-lg-15" id="agencyName">${noteVO.agencyName}</div>
                                                                <div class="email-subject" id="roomNo">${noteVO.roomNo}번 매물</div>
                                                                <div class="email-subject" id="noteSubject">제목: ${noteVO.noteSubject} </div>
                                                                <div class="email-text" >
                                                                    <span># ${noteVO.noteText1}</span>
                                                                    <span># ${noteVO.noteText2}</span>
                                                                    <span># ${noteVO.noteText3}</span>
                                                                </div>
                                                                <div class="email-text" id="noteContent">
                                                                    <p>${noteVO.noteContent}</p>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div class="last-email-details"><span class="badge badge-danger badge-indicator"></span> 
                                                                    <fmt:formatDate value="${noteVO.registDate}" pattern="yyyy/MM/dd HH:mm"/>
                                                                </div>
                                                                <span class="email-star"><span class="feather-icon"><i data-feather="star"></i></span></span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <div class="email-hr-wrap">
                                                        <hr>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <div class="emailapp-right">
                                    <header>
                                        <a id="back_email_list" href="javascript:void(0)" class="back-email-list">
                                            <span class="feather-icon"><i data-feather="chevron-left"></i></span>
                                        </a>
                                        <div class="email-options-wrap">
                                            
                                        </div>
                                    </header>
                                    <div class="email-body">
                                        <div class="nicescroll-bar">
                                            <div>
                                                <div class="email-subject-head  ml-50">
                                                    <h5 class="font-weight-700 font-lg-16" id="agencyName"><!-- 폴리 공인중개사무소 --></h5>
                                                </div>
                                                <hr class="mt-10 mb-20">
                                                <div class="email-subject-head">
                                                    <h4 class="ml-50" id="noteSubject"><!-- 폴리 아파트 입주 문의 --></h4>
                                                    <div class="d-flex align-items-center mr-50">
                                                        <span class="badge badge-secondary">보낸 쪽지함</span>
                                                        <a href="javascript:void(0)" class="email-star starred"><span class="feather-icon"><i data-feather="star"></i></span></a>
                                                    </div>
                                                </div>
                                                <hr class="mt-10 mb-20">
                                                <div class="email-head">
                                                    <div class="media">
                                                        <div class="media-img-wrap"></div>
                                                    </div>
                                                    <div class="head-other-wrap mr-50">
                                                        <div class="d-inline-block">
                                                            <span class="d-inline-block">2023/09/22 10:42</span>
                                                        </div>
                                                        <div class="d-inline-block dropdown">
                                                            <a class="dropdown-toggle no-caret" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="zmdi   zmdi-more-vert"></i></a>
                                                            <div class="dropdown-menu bullet dropdown-menu-right" role="menu">
                                                                <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-reply" aria-hidden="true"></i>Reply</a>
                                                                <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-share" aria-hidden="true"></i>Forward</a>
                                                                <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-trash" aria-hidden="true"></i>Delete</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="email-text-wrap ml-50 mr-50 mt-30">
                                                    <div id="noteText1" class="pa-5"><!-- #빠른 입주 희망 --></div>
                                                    <div id="noteText2" class="pa-5"><!-- #급구 --></div>
                                                    <div id="noteText3" class="pa-5"></div>
                                                    <div id="noteContent"  class="mt-30" >
                                                        <p id="noteContent">
                                                            <!-- 소학교 밤이 시와 밤을 다 무엇인지 걱정도 봅니다. 나의 그러나 하나에 다하지 당신은 어머니, 있습니다. 
                                                            벌레는 이런 별빛이 아침이 위에도 어머니, 마리아 한 별에도 까닭입니다. 불러 하나 이름과, 별이 사랑과 다 듯합니다.
                                                            당신은 이름과, 프랑시스 이름과, 까닭입니다. 차 강아지, 청춘이 걱정도 남은 슬퍼하는 있습니다. 아무 하나에 어머니, 
                                                            봄이 별 같이 한 오면 잠, 거외다. 내린 당신은 이웃 봅니다. 어머니 풀이 이웃 하나에 내일 우는 계십니다. 흙으로 때 
                                                            책상을 릴케 차 봅니다. 무덤 헤일 계절이 소녀들의 잠, 멀듯이, 내 나의 가을로 봅니다.
														 -->
                                                        </p>
                                                    </div>
                                                    
                                                    <!--  쪽지 상세 내용  -->


                                                </div>
                                                <hr class="hr-light">
                                                

                                                <hr class="hr-light">
                                                <div class="email-reply-block ml-50">
                                                    Click here to <a href="javascript:void(0)" class="text-capitalize">reply</a> or <a href="javascript:void(0)" class="text-capitalize">forwrd</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           
                        </div>
                    </div>
                </div>
                <!-- /Row -->

            </div>
            <!-- /Container -->
        </div>
        <!-- /Main Content -->

    </div>
    <!-- /HK Wrapper -->
    <script>

    document.addEventListener("DOMContentLoaded", function () {
    // AJAX 요청을 보낼 URL을 지정합니다.
    var ajaxUrlPrefix = '/note/send/detail/'; // AJAX 요청 URL의 공통 부분

    // 클래스 이름이 media인 요소들을 선택합니다.
    var mediaElements = document.querySelectorAll('.media');

    // 각 media 요소에 클릭 이벤트를 추가합니다.
    mediaElements.forEach(function (element) {
        element.addEventListener('click', function () {
            // media 요소를 클릭했을 때의 동작을 여기에 추가합니다.
            // 이 부분에서 AJAX 요청을 보내고 응답을 처리할 수 있습니다.
            // element 객체를 이용하여 클릭한 media 요소에 대한 정보를 사용할 수 있습니다.

            // media 요소에서 필요한 정보 추출 예시:
            var noteNo = element.getAttribute('data-note-no'); // data-note-no 속성을 통해 노트 no를 가져옵니다.
            
            var currentPath = window.location.pathname;
            var parts = currentPath.split('/'); // 경로를 '/'로 분할하여 배열로 만듭니다.
            var userNo = parts[parts.length - 1]; // 배열의 마지막 요소를 가져옵니다.


            var ajaxUrl = ajaxUrlPrefix + userNo + '/' + noteNo; // 노트 ID를 이용하여 완전한 AJAX 요청 URL을 생성합니다.

            // AJAX 요청을 보내고 응답을 처리합니다.
            fetch(ajaxUrl)
                .then(function (response) {
                    // AJAX 요청이 성공하면 JSON 데이터를 파싱합니다.
                    return response.json();
                })
                .then(function (noteVO) {
                    // noteVO 객체에서 필요한 데이터를 추출합니다.

                    var agencyName = noteVO.agencyName;
                    var roomNo = noteVO.roomNo;
                    var noteSubject = noteVO.noteSubject;
                    var noteText1 = noteVO.noteText1;
                    var noteText2 = noteVO.noteText2;
                    var noteText3 = noteVO.noteText3;
                    var noteContent = noteVO.noteContent;

                    // DOM 요소를 찾아서 데이터를 넣습니다.
                    document.getElementById('agencyName').textContent = agencyName;
                    document.getElementById('roomNo').textContent = roomNo + '번 매물';
                    document.getElementById('noteSubject').textContent = '제목: ' + noteSubject;
                    document.getElementById('noteText1').textContent = '#' + noteText1;
                    document.getElementById('noteText2').textContent = '#' + noteText2;
                    document.getElementById('noteText3').textContent = '#' + noteText3;
                    document.getElementById('noteContent').innerHTML = '<p>' + noteContent + '</p>';
                })
                
        });
    });
});

    </script>

	<script>
	// JavaScript code to open the modal and fetch data with AJAX
    document.querySelectorAll('#modal-link').forEach(function (element) {
        element.addEventListener('click', function () {
            var noteNo = this.getAttribute('data-note-no');
            fetch('/note/detail/' + noteNo)
                .then(function (response) {
                    return response.json();
                })
                .then(function (noteVO) {
                	document.querySelector('#modalUserName').textContent = noteVO.userName;
                	document.querySelector('#modalNoteSubject').textContent = noteVO.noteSubject;
                	document.querySelector('#modalNoteText1').textContent = noteVO.noteText1;
                	document.querySelector('#modalNoteText2').textContent = noteVO.noteText2;
                	document.querySelector('#modalNoteText3').textContent = noteVO.noteText3;
                	document.querySelector('#modalNoteContent').textContent = noteVO.noteContent;
                	
                })
                
            
            $('#exampleModalEmail').modal('show');
        });
    });

    // JavaScript code to clear form fields when the modal is closed
    $('#exampleModalEmail').on('hidden.bs.modal', function () {
    });
    
 // JavaScript code to handle delete button clicks
    var deleteButtons = document.querySelectorAll('.btn-delete');
    deleteButtons.forEach(function (element) {
        element.addEventListener('click', function (e) {
            var noteNo = this.getAttribute('data-note-no');
            var emailItem = this.closest('.media'); // 해당 노트 엘리먼트를 가져옴

            if (confirm('정말로 삭제하시겠습니까?')) {
                fetch('/note/delete/' + noteNo, {
                    method: 'GET'
                })
                .then(function (response) {
                    if (response.ok) {
                        // 업데이트 성공 시 해당 노트를 화면에서 제거합니다.
                        if (emailItem) {
                            emailItem.remove(); // 해당 노트를 화면에서 제거
                        }
                    } else {
                        console.error('Error:', response);
                    }
                })
                
            }
        });
    });

</script>
	 <!-- jQuery -->
    <script src="/resources/vendors/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Jasny-bootstrap  JavaScript -->
    <script src="/resources/vendors/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>

    <!-- Slimscroll JavaScript -->
    <script src="/resources/dist/js/jquery.slimscroll.js"></script>

    <!-- Fancy Dropdown JS -->
    <script src="/resources/dist/js/dropdown-bootstrap-extended.js"></script>

    <!-- Tinymce JavaScript -->
    <script src="/resources/vendors/tinymce/tinymce.min.js"></script>

    <!-- Tinymce Wysuhtml5 Init JavaScript -->
    <script src="/resources/dist/js/tinymce-data.js"></script>

    <!-- FeatherIcons JavaScript -->
    <script src="/resources/dist/js/feather.min.js"></script>

    <!-- Toggles JavaScript -->
    <script src="/resources/vendors/jquery-toggles/toggles.min.js"></script>
    <script src="/resources/dist/js/toggle-data.js"></script>

    <!-- Init JavaScript -->
    <script src="/resources/dist/js/init.js"></script>

	
</body>

</html>