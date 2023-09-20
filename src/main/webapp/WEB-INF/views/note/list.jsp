<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Scrooge I Email</title>
    <meta name="description" content="A responsive bootstrap 4 admin dashboard template by hencework" />

    <!-- Toggles CSS -->
    <link href="/resources/vendors/jquery-toggles/css/toggles.css" rel="stylesheet" type="text/css">
    <link href="/resources/vendors/jquery-toggles/css/themes/toggles-light.css" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/style.css" rel="stylesheet" type="text/css">
    
    <!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
</head>

<body>
    

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
                                        
                                        <c:forEach var="noteVO" items="${list}">
                                            <a href="javascript:void(0);" class="media" id="modal-link" data-note-no="${noteVO.noteNo}" data-toggle="modal" data-target="#exampleModalEmail">
                                                <div class="media-body">
                                                    <div>
                                                        <div class="email-head">${noteVO.userName}</div>
                                                        <div class="email-subject">${noteVO.noteSubject}</div>
                                                        <div class="email-text">
															${noteVO.noteText1}
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div class="last-email-details">
                                                        	<span class="badge badge-danger badge-indicator"></span> 
                                                        		<fmt:formatDate value="${noteVO.registDate}" pattern="yyyy/MM/dd HH:mm"/>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-danger btn-delete" data-note-no="${noteVO.noteNo}">
								                삭제
								            </a>
                                            <div class="email-hr-wrap">
                                                <hr>
                                            </div>
                                            </c:forEach>
                                            
                                        </div>
                                    </div>
                                </div>
                               
                            </div>
                             <!-- Compose email -->
                            <div class="modal fade" id="exampleModalEmail" tabindex="-1" role="dialog" aria-labelledby="exampleModalEmail" aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header bg-grey-dark-5">
                                            <h6 class="modal-title text-white" id="exampleModalPopoversLabel">쪽지 내용</h6>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
								                <div class="media">
								                    <div class="media-body">
								                        <div class="email-head">보낸 사람: <span id="modalUserName" ></span></div>
								                        <div class="email-subject">제목: <span id="modalNoteSubject"></span></div>
								                        <div class="email-text" >Text1 : <span id="modalNoteText1"></span></div>
								                        <div class="email-text" >Text2 : <span id="modalNoteText2"></span></div>
								                        <div class="email-text" >Text3 : <span id="modalNoteText3"></span></div>
								                        <div class="email-text" >내용 : <span id="modalNoteContent"></span></div>
								                    </div>
								                </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /Compose email -->
                            
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
	// JavaScript code to open the modal and fetch data with AJAX
    document.querySelectorAll('.emailapp-emails-list a.media').forEach(function (element) {
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
                .catch(function (error) {
                    console.error('Error:', error);
                });
            
            $('#exampleModalEmail').modal('show');
        });
    });

    // JavaScript code to clear form fields when the modal is closed
    $('#exampleModalEmail').on('hidden.bs.modal', function () {
    });
    
 // JavaScript code to handle delete button clicks
    document.querySelectorAll('.emailapp-emails-list .btn-delete').forEach(function (element) {
        element.addEventListener('click', function (e) {
            e.preventDefault();
            var noteNo = this.getAttribute('data-note-no');
            if (confirm('정말로 삭제하시겠습니까?')) {
                fetch('/note/delete/' + noteNo, {
                    method: 'GET'
                })
                .then(function (response) {
                    if (response.ok) {
                        // 업데이트 성공 시 해당 노트를 화면에서 제거합니다.
                    	var emailItem = this.closest('.media');
                    	if (emailItem) {
                    	    emailItem.remove(); // 해당 노트를 화면에서 제거
                    	}

                    } else {
                        console.error('Error:', response);
                    }
                }.bind(this)) // 이 부분이 중요합니다. 함수 내에서 this를 사용하기 위해 bind를 사용합니다.
                .catch(function (error) {
                    console.error('Error:', error);
                });
            }
        });
    });



</script>

    <!-- Tinymce JavaScript -->
    <script src="/resources/vendors/tinymce/tinymce.min.js"></script>

    <!-- Tinymce Wysuhtml5 Init JavaScript -->
    <script src="/resources/dist/js/tinymce-data.js"></script>


   

</body>

</html>
