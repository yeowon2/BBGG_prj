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
                                            <a href="javascript:void(0);" class="media" id="modal-link" data-toggle="modal" data-target="#exampleModalEmail">
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
                                            <form>
                                                <div class="form-group">
                                                    <div class="input-group input-group-sm">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">From</span>
                                                        </div>
                                                        <input type="text" class="form-control" readonly="readonly" value="">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="input-group input-group-sm">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">Cc / Bcc</span>
                                                        </div>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="input-group input-group-sm">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">Subject</span>
                                                        </div>
                                                        <input type="text" class="form-control form-control-sm">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="tinymce-wrap">
                                                        <textarea class="tinymce"></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
													<div class="fileinput fileinput-new input-group" data-provides="fileinput">
														<div class="input-group-prepend">
															<span class="input-group-text">Upload</span>
														</div>
														<div class="form-control text-truncate" data-trigger="fileinput"><i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div>
														<span class="input-group-append">
																	<span class=" btn btn-danger btn-file"><span class="fileinput-new">Select file</span><span class="fileinput-exists">Change</span>
														<input type="file" name="...">
														</span>
														<a href="#" class="btn btn-secondary fileinput-exists" data-dismiss="fileinput">Remove</a>
														</span>
													</div>
												</div>
                                                <div class="form-group mb-0">
                                                    <button class="btn btn-danger" type="submit">Send</button>
                                                </div>
                                            </form>
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
    // JavaScript code to open the modal
    document.getElementById('modal-link').addEventListener('click', function () {
        $('#exampleModalEmail').modal('show'); // Show the modal
    });

    // JavaScript code to close the modal
    $('#exampleModalEmail').on('hidden.bs.modal', function () {
        // Clear form fields or perform any other necessary actions when the modal is closed
        console.log('Modal closed');
    });
</script>

    <!-- Tinymce JavaScript -->
    <script src="/resources/vendors/tinymce/tinymce.min.js"></script>

    <!-- Tinymce Wysuhtml5 Init JavaScript -->
    <script src="/resources/dist/js/tinymce-data.js"></script>


   

</body>

</html>
