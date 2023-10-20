<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
	<jsp:include page="../../head.jsp"></jsp:include>
	<style>
	section {
		background-color:#F5F5F5;
	}
	section.section-padding {
		padding: 30px;
	}
	</style>
  </head>
  <body>
	<jsp:include page="../../navPartner.jsp"></jsp:include>
	<section class="section-padding">
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
                                <div class="emailapp-left col-lg-8">
                                    <header>
                                        <a href="javascript:void(0)" id="emailapp_sidebar_move" class="emailapp-sidebar-move" >
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
	                                            <a href="javascript:void(0);" class="media" class="noteNo" data-note-no="${noteVO.noteNo}">
	                                                <div class="media-img-wrap">
	                                                    <div class="avatar">
	                                                        <img src="/resources/dist/img/avatar1.jpg" alt="user" class="avatar-img rounded-circle">
	                                                    </div>
	                                                </div>
	                                                <div class="media-body">
                                                      <div>
                                                             <div data-note-no="${noteVO.noteNo}"></div>
                                                             <div class="email-head font-weight-700 font-lg-15" id="userName">${noteVO.userName}</div>
                                                             <div class="email-subject" id="roomNo">매물 번호: ${noteVO.itemNo}</div>
                                                             <div class="email-subject" id="noteSubject">제목: ${noteVO.noteSubject} </div>
                                                             <%-- <div class="email-text" >
                                                                 <span># ${noteVO.noteText1}</span>
                                                                 <span># ${noteVO.noteText2}</span>
                                                                 <span># ${noteVO.noteText3}</span>
                                                             </div> --%>
                                                             <div class="email-text" id="noteContent">
                                                                 <p>${noteVO.noteContent}</p>
                                                             </div>
                                                         </div>
	                                                    <div>
	                                                        <div class="last-email-details"><span class="badge badge-danger badge-indicator"></span> 
	                                                        	<fmt:formatDate value="${noteVO.registDate}" pattern="yyyy/MM/dd HH:mm"/>
	                                                        </div>
	                                                        <span class="email-star list-check" style="color:#008080;">
	                                                       		<c:if test="${noteVO.useAt == 'Y'}">
				                                            		<span class="badge badge-success response" data-note-no="${noteVO.noteNo}" style="margin:0 auto;">응답 대기</span>
																</c:if>
	                                                       		<c:if test="${noteVO.useAt == 'C'}">
				                                            		<span class="badge badge-secondary response" data-note-no="${noteVO.noteNo}" style="margin:0 auto;">응답 완료</span>
																</c:if>
			                                            	</span>
	                                                    </div>
	                                                </div>
	                                            </a>
	                                            <div class="email-hr-wrap">
	                                                <hr>
	                                            </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <div class="emailapp-right col-lg-6">
                                    <header>
                                        <a id="back_email_list" href="javascript:void(0)" class="back-email-list">
                                            <span class="feather-icon"><i data-feather="chevron-left"></i></span>
                                        </a>
                                        	<h5 class="font-weight-700 font-lg-16 text-left" id="item-no" >매물 번호</h5>
                                        <div class="email-options-wrap">
                                            <a href="" class="note-status" id="use-at">
                                            		<i class="bi bi-check">
	                                            		<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
														  <path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
														</svg>
													</i>
                                            </a>
                                            <a href="" class="btn-delete"><span class="feather-icon"><i data-feather="trash"></i></span></a>
                                        </div>
                                    </header>
                                    <div class="email-body">
                                        <div class="nicescroll-bar">
                                            <div>
                                                <div class="email-subject-head">
                                                     <div class="d-flex align-items-center row">
		                                                <h5 class="font-weight-700 font-lg-16 col-lg-10" id="note-subject">제목</h5>
                                                        <span class="badge badge-success response" style="margin:0 auto;">응답 대기</span>
                                                    </div>
                                                </div>
                                                <hr class="mt-10 mb-20">
                                                <div class="email-head">
                                                    <div class="media">
                                                        <div class="media-img-wrap">
                                                            <div class="avatar">
                                                                <img src="/resources/dist/img/avatar1.jpg" alt="user" class="avatar-img rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="media-body">
                                                            <span class="text-capitalize sender-name d-inline-block" id="user-name">Evie ono</span>
                                                            
                                                        </div>
                                                    </div>
                                                    <div class="head-other-wrap">
                                                        <div class="d-inline-block mr-5">
                                                            <span class="d-inline-block" id="regist-date">10:06 AM</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="email-text-wrap mt-30">
                                                    
                                                    <p id="note-content">내용</p>
                                                    <div class="email-end-detail mt-35">
                                                        <span class="d-block" id="phone">+12 234 443</span>
                                                        <span class="d-block" id="userId">evieone@Scrooge.com</span>
                                                    </div>
                                                </div>
                                                <hr class="hr-light">
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
</section>
    <script>
   
    
    //날짜 변환 함수 
   function formatDateTime(unixTimestamp) {
    var date = new Date(unixTimestamp);
    var options = { year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit' };
    return date.toLocaleDateString('ko-KR', options);
}

    document.addEventListener("DOMContentLoaded", function () {
    // AJAX 요청을 보낼 URL을 지정합니다.
    var ajaxUrlPrefix = '/note/receive/detail/'; // AJAX 요청 URL의 공통 부분

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
                    var itemNo = noteVO.itemNo;
                    var noteSubject = noteVO.noteSubject;
                    var noteText1 = noteVO.noteText1;
                    var noteText2 = noteVO.noteText2;
                    var noteText3 = noteVO.noteText3;
                    var noteContent = noteVO.noteContent;
                    var useAt = noteVO.useAt;
                    noteContent = noteContent.replace(/\n/g, '<br>');
                    
                    var registDate = noteVO.registDate;
                    //registDate - Date Format
                    var formattedRegistDate = formatDateTime(registDate);
                 
                    
                    
                    // DOM 요소를 찾아서 데이터를 넣습니다.
                    
                    document.querySelector('#user-name').textContent = userName;
                    document.querySelector('#item-no').textContent = '매물번호: ' + itemNo;
                    document.querySelector('#note-subject').textContent = noteSubject;
            
                    document.querySelector('#note-content').innerHTML = '<p>' + noteContent + '</p>';
                    document.querySelector('#regist-date').textContent = formattedRegistDate;
                    
                 // "data-note-no" 속성을 추가합니다.
                    document.querySelector('#use-at').setAttribute('data-note-no', noteNo);
                    document.querySelector('#use-at').setAttribute('data-use-at', useAt);
                    document.querySelectorAll('.response').forEach(function (element) {
                        element.setAttribute('data-note-no', noteNo);
                        element.setAttribute('data-use-at', useAt);
                    });
                    
                })
                
           
             // 거래 상태 토글 버튼 선택
                var statusButton = document.querySelector('.note-status');

                // 클릭 이벤트 처리
                statusButton.addEventListener('click', function (event) {
                    event.preventDefault(); // 기본 이벤트 처리 방지

                    // AJAX 요청을 보냅니다.
                    $.ajax({
                        type: "POST",
                        url: "/note/updateStatus/" + noteNo, // URL 수정
                        data: {
                            noteNo: noteNo
                        },
                        success: function (response) {
                            // AJAX 요청이 성공하면 response 클래스를 가진 span 요소의 색상을 변경합니다.
                            var response = document.querySelector('.response[data-note-no="' + noteNo + '"]');
	                            response.classList.remove('badge-success'); 
	                            response.classList.add('badge-secondary'); 
                            
                        },
                        error: function (error) {
                            alert("error 발생");
                        }
                    });
                });
                
           	// 노트 삭제하기 
           	    var deleteButtons = document.querySelectorAll('.btn-delete');
           	    deleteButtons.forEach(function (element) {
           	        element.addEventListener('click', function (e) {
           	        	var aTag = document.querySelector('a[data-note-no="' + noteNo + '"]');
           	        	
           	            if (confirm('정말로 삭제하시겠습니까?')) {
           	                fetch('/note/delete/' + noteNo, {
           	                    method: 'GET'
           	                })
           	                .then(function (response) {
           	                    if (response.ok) {
           	                        // 업데이트 성공 시 해당 노트를 화면에서 제거합니다.
           	                        if (aTag) {
           	                        	aTag.remove(); // 해당 노트를 화면에서 제거
           	                        }
           	                    } else {
           	                        console.error('Error:', response);
           	                    }
           	                })
           	                
           	            }
           	        });
           	    });	 
                
        });
    });
});

  
    // JavaScript code to clear form fields when the modal is closed
    $('#exampleModalEmail').on('hidden.bs.modal', function () {
    });
    
 

 // 쪽지 상태 변경 AJAX 부분을 따로 묶어 수정
    document.addEventListener("DOMContentLoaded", function () {
      
    });

    
</script>
<jsp:include page="../../js.jsp"></jsp:include>
  </body>
</html>