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
                                            <a href="javascript:void(0);" class="media">
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
                                <div class="emailapp-right">
                                    <header>
                                        <a id="back_email_list" href="javascript:void(0)" class="back-email-list">
                                            <span class="feather-icon"><i data-feather="chevron-left"></i></span>
                                        </a>
                                        <div class="email-options-wrap">
                                            <a href="javascript:void(0)" class=""><span class="feather-icon"><i data-feather="printer"></i></span></a>
                                            <a href="javascript:void(0)" class=""><span class="feather-icon"><i data-feather="trash"></i></span></a>
                                            <a href="javascript:void(0)" class="text-smoke"><span class="feather-icon"><i data-feather="more-vertical"></i></span></a>
                                        </div>
                                    </header>
                                    <div class="email-body">
                                        <div class="nicescroll-bar">
                                            <div>
                                                <div class="email-subject-head">
                                                    <h4>Application for the post of Managing Director</h4>
                                                    <div class="d-flex align-items-center">
                                                        <span class="badge badge-secondary">inbox</span>
                                                        <a href="javascript:void(0)" class="email-star starred"><span class="feather-icon"><i data-feather="star"></i></span></a>
                                                    </div>
                                                </div>
                                                <hr class="mt-10 mb-20">
                                                <div class="email-head">
                                                    <div class="media">
                                                        <div class="media-img-wrap">
                                                            <div class="avatar">
                                                                <img src="dist/img/avatar1.jpg" alt="user" class="avatar-img rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="media-body">
                                                            <span class="text-capitalize sender-name d-inline-block">Evie ono</span>
                                                            <span class="sender-email d-inline-block">(evieono@Scrooge.com)</span>
                                                            <span class="d-block">
																	to
																	<span>me</span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="head-other-wrap">
                                                        <div class="d-inline-block mr-5">
                                                            <span class="d-inline-block">10:06 AM</span>
                                                            <span class="d-inline-block">(2 hours ago)</span>
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
                                                <div class="email-text-wrap mt-30">
                                                    <span class="d-block email-title text-capitalize mb-30">dear sir,</span>
                                                    <p class="mb-30">Faucibus rutrum. Phasellus sodales vulputate urna, vel accumsan augue egestas ac. Donec vitae leo at sem lobortis porttitor eu consequat risus. Mauris sed congue orci. Donec ultrices faucibus rutrum. Phasellus sodales vulputate urna, vel accumsan augue egestas ac. Donec vitae leo at sem lobortis porttitor eu consequat risus.
                                                    </p>
                                                    <p>Donec vitae leo at sem lobortis porttitor eu consequat risus. Mauris sed congue orci.Mauris sed congue orci. Donec ultrices faucibus rutrum. Phasellus sodales vulputate urna, vel accumsan augue egestas ac</p>
                                                    <p class="mt-30">Thank you for your time.</p>
                                                    <div class="email-end-detail mt-35">
                                                        <span class="text-capitalize d-block">evie one</span>
                                                        <span class="d-block">+12 234 443</span>
                                                        <span class="d-block">evieone@Scrooge.com</span>
                                                    </div>
                                                </div>
                                                <hr class="hr-light">
                                                <div class="email-attachment-wrap">
                                                    <div class="email-attachment-block">
                                                        <a href="javascript:void(0)">
															<div class="card card-sm w-200p">
																<div class="card-body d-flex align-items-center">
																	<img src="dist/img/jpgicon.png" class="d-inline-block mr-10" alt="attachicon" />
																	<span class="d-inline-block mnw-0">
																		<span class="d-block file-name text-truncate">concept_design.jpg</span>
																		<small class="d-block file-size text-truncate">5.78 MB</small>
																	</span>
																</div>
															</div>
														</a>	
														<a href="javascript:void(0)">
															<div class="card card-sm w-200p">
																<div class="card-body d-flex align-items-center">
																	<img src="dist/img/pdficon.png" class="d-inline-block mr-10" alt="attachicon" />
																	<span class="d-inline-block mnw-0">
																			<span class="d-block file-name text-truncate">Design-titleccv.pdf</span>
																	<small class="d-block file-size text-truncate">2.1 MB</small>
																	</span>
																</div>
															</div>
														</a>
                                                    </div>
                                                    <div class="d-flex ml-auto">
                                                        <a href="javascript:void(0)"><i class="zmdi zmdi-download"></i></a>
                                                        <a href="javascript:void(0)"><i class="zmdi zmdi-more"></i></a>
                                                    </div>
                                                </div>

                                                <hr class="hr-light">
                                                <div class="email-reply-block">
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
