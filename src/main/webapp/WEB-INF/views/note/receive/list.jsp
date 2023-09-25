<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
	<jsp:include page="../../head.jsp"></jsp:include>
  </head>
  <body>
	<jsp:include page="../../nav.jsp"></jsp:include>
<!-- HK Wrapper -->
    <div class="hk-wrapper hk-alt-nav">
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
                                        <span class="">받은 쪽지함</span>
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
                                            <c:forEach var="noteVO" items="${receiveList}">
                                                <div>
                                                    <a href="javascript:void(0);" class="media" data-note-no="${noteVO.noteNo}">
                                                        <div class="media-img-wrap">
                                                            <div class="avatar">
                                                                <img src="/resources/dist/img/avatar1.jpg" alt="user" class="avatar-img rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="media-body">
                                                            <div>
                                                                <div data-note-no="${noteVO.noteNo}"></div>
                                                                <div class="email-head font-weight-700 font-lg-15" id="userName">${noteVO.userName}</div>
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
                                                    <h5 class="font-weight-700 font-lg-16" id="user-name"><!-- 폴리 공인중개사무소 --></h5>
                                                </div>
                                                <hr class="mt-10 mb-20">
                                                <div class="email-subject-head">
                                                    <h4 class="ml-50" id="note-subject"><!-- 폴리 아파트 입주 문의 --></h4>
                                                    <div class="d-flex align-items-center mr-50">
                                                        <span class="badge badge-secondary">받은 쪽지함</span>
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
                                                            <span class="d-inline-block" id="regist-date"></span>
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
                                                    <div id="room-no" class="pa-5"><!-- 매물번호:1번 --></div>
                                                    <div id="note-text1" class="pa-5"><!-- #빠른 입주 희망 --></div>
                                                    <div id="note-text2" class="pa-5"><!-- #급구 --></div>
                                                    <div id="note-text3" class="pa-5"></div>
                                                    <div id="note-content"  class="mt-30 col-6" >
                                                        
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
            <%-- <jsp:include page="../../footer.jsp"></jsp:include> --%>
    <!-- /HK Wrapper -->
    <script>
    //날짜 변환 함수 
   function formatDateTime(unixTimestamp) {
    var date = new Date(unixTimestamp);
    var options = { year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit' };
    return date.toLocaleDateString('ko-KR', options);
}

    document.addEventListener("DOMContentLoaded", function () {
    // AJAX 요청을 보낼 URL을 지정합니다.
    var ajaxUrlPrefix = '/note/receiveDetail/'; // AJAX 요청 URL의 공통 부분

    // 클래스 이름이 media인 요소들을 선택합니다.
    var mediaElements = document.querySelectorAll('.media');

    // 각 media 요소에 클릭 이벤트를 추가합니다.
    mediaElements.forEach(function (element) {
        element.addEventListener('click', function () {
            // media 요소를 클릭했을 때의 동작을 여기에 추가합니다.
            // 이 부분에서 AJAX 요청을 보내고 응답을 처리할 수 있습니다.
            // element 객체를 이용하여 클릭한 media 요소에 대한 정보를 사용할 수 있습니다.

            // media 요소에서 필요한 정보 추출 예시:
            var noteNo = element.dataset.noteNo; // element는 해당 요소입니다.
			//var userNoValue = element.dataset.userNo;

            
            var currentPath = window.location.pathname;
            var parts = currentPath.split('/'); // 경로를 '/'로 분할하여 배열로 만듭니다.
            var userNo = parts[parts.length - 1]; // 배열의 마지막 요소를 가져옵니다.


            var ajaxUrl = ajaxUrlPrefix + noteNo; // 노트 ID를 이용하여 완전한 AJAX 요청 URL을 생성합니다.

            // AJAX 요청을 보내고 응답을 처리합니다.
            fetch(ajaxUrl)
                .then(function (response) {
                    // AJAX 요청이 성공하면 JSON 데이터를 파싱합니다.
                    return response.json();
                })
                .then(function (noteVO) {
                    // noteVO 객체에서 필요한 데이터를 추출합니다.

                    var userName = noteVO.userName;
                    var roomNo = noteVO.roomNo;
                    var noteSubject = noteVO.noteSubject;
                    var noteText1 = noteVO.noteText1;
                    var noteText2 = noteVO.noteText2;
                    var noteText3 = noteVO.noteText3;
                    var noteContent = noteVO.noteContent;
                    noteContent = noteContent.replace(/\n/g, '<br>');
                    
                    var registDate = noteVO.registDate;
                    //registDate - Date Format
                    var formattedRegistDate = formatDateTime(registDate);
                 
                    
                    
                    // DOM 요소를 찾아서 데이터를 넣습니다.
                    
                    document.querySelector('#user-name').textContent = '회원명: ' + userName;
                    document.querySelector('#room-no').textContent = '매물번호: ' + roomNo;
                    document.querySelector('#note-subject').textContent = '제목: ' + noteSubject;
                    document.querySelector('#note-text1').textContent = '#' + noteText1;
                    document.querySelector('#note-text2').textContent = '#' + noteText2;
                    document.querySelector('#note-text3').textContent = '#' + noteText3;
                    document.querySelector('#note-content').innerHTML = '<p>' + noteContent + '</p>';
                    document.querySelector('#regist-date').textContent = formattedRegistDate;
                  	
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
            fetch('/note/receiveDetail/' + noteNo)
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

	<jsp:include page="../../js.jsp"></jsp:include>
</body>

</html>