<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!-- 
Template Name: Scrooge - Responsive Bootstrap 4 Admin Dashboard Template
Author: Hencework
Support: support@hencework.com

License: You must have a valid license purchased only from templatemonster to legally use the template for your project.
-->
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Scrooge I Chats</title>
    <meta name="description" content="Chat application" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- Toggles CSS -->
    <link href="/resources/vendors/jquery-toggles/css/toggles.css" rel="stylesheet" type="text/css">
    <link href="/resources/vendors/jquery-toggles/css/themes/toggles-light.css" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
    
    
	<!-- HK Wrapper -->
	<div class="hk-wrapper hk-alt-nav">

        <!-- Top Navbar -->
        <nav class="navbar navbar-expand-xl navbar-light fixed-top hk-navbar hk-navbar-alt">
            <a class="navbar-toggle-btn nav-link-hover navbar-toggler" href="javascript:void(0);" data-toggle="collapse" data-target="#navbarCollapseAlt" aria-controls="navbarCollapseAlt" aria-expanded="false" aria-label="Toggle navigation"><span class="feather-icon"><i data-feather="menu"></i></span></a>
            <a class="navbar-brand text-red" href="dashboard1.html">
                scrooge
            </a>
            <div class="collapse navbar-collapse" id="navbarCollapseAlt">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown show-on-hover">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Dashboard
							</a>
                        <div class="dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                            <a class="dropdown-item" href="dashboard1.html">CRM</a>
							<a class="dropdown-item" href="dashboard2.html">Project</a>
							<a class="dropdown-item" href="dashboard3.html">Statistics</a>
							<a class="dropdown-item" href="dashboard4.html">classic</a>
							<a class="dropdown-item" href="dashboard5.html">Analytics</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown show-on-hover active">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Pages
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
                    <li class="nav-item dropdown show-on-hover">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								User interface
							</a>
                        <div class="dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                            <div class="sub-dropdown-menu show-on-hover">
                                <a href="#" class="dropdown-toggle dropdown-item">Components</a>
                                <div class="dropdown-menu open-right-side">
                                    <a class="dropdown-item" href="alerts.html">Alerts</a>
                                    <a class="dropdown-item" href="avatar.html">Avatar</a>
                                    <a class="dropdown-item" href="badge.html">Badge</a>
                                    <a class="dropdown-item" href="buttons.html">Buttons</a>
                                    <a class="dropdown-item" href="cards.html">Cards</a>
                                    <a class="dropdown-item" href="carousel.html">Carousel</a>
                                    <a class="dropdown-item" href="collapse.html">Collapse</a>
                                    <a class="dropdown-item" href="dropdowns.html">Dropdown</a>
                                    <a class="dropdown-item" href="list-group.html">List Group</a>
                                    <a class="dropdown-item" href="modal.html">Modal</a>
                                    <a class="dropdown-item" href="nav.html">Nav</a>
                                    <a class="dropdown-item" href="navbar.html">Navbar</a>
                                    <a class="dropdown-item" href="nestable.html">Nestable</a>
                                    <a class="dropdown-item" href="pagination.html">Pagination</a>
                                    <a class="dropdown-item" href="popovers.html">Popovers</a>
                                    <a class="dropdown-item" href="progress.html">Progress</a>
                                    <a class="dropdown-item" href="tooltip.html">Tooltip</a>
                                </div>
                            </div>
                            <div class="sub-dropdown-menu show-on-hover">
                                <a href="#" class="dropdown-toggle dropdown-item">Content</a>
                                <div class="dropdown-menu open-right-side">
                                    <a class="dropdown-item" href="typography.html">Typography</a>
                                    <a class="dropdown-item" href="images.html">Images</a>
                                    <a class="dropdown-item" href="media-object.html">Media Object</a>
                                </div>
                            </div>
                            <div class="sub-dropdown-menu show-on-hover">
                                <a href="#" class="dropdown-toggle dropdown-item">Utilities</a>
                                <div class="dropdown-menu open-right-side">
                                    <a class="dropdown-item" href="background.html">Background</a>
                                    <a class="dropdown-item" href="border.html">Border</a>
                                    <a class="dropdown-item" href="colors.html">Colors</a>
                                    <a class="dropdown-item" href="embeds.html">Embeds</a>
                                    <a class="dropdown-item" href="icons.html">Icons</a>
                                    <a class="dropdown-item" href="shadow.html">Shadow</a>
                                    <a class="dropdown-item" href="sizing.html">Sizing</a>
                                    <a class="dropdown-item" href="spacing.html">Spacing</a>
                                </div>
                            </div>
                            <div class="sub-dropdown-menu show-on-hover">
                                <a href="#" class="dropdown-toggle dropdown-item">Forms</a>
                                <div class="dropdown-menu open-right-side">
                                    <a class="dropdown-item" href="form-element.html">Form Elements</a>
                                    <a class="dropdown-item" href="input-groups.html">Input Groups</a>
                                    <a class="dropdown-item" href="form-layout.html">Form Layout</a>
                                    <a class="dropdown-item" href="form-mask.html">Form Mask</a>
                                    <a class="dropdown-item" href="form-validation.html">Form Validation</a>
                                    <a class="dropdown-item" href="form-wizard.html">Form Wizard</a>
                                    <a class="dropdown-item" href="file-upload.html">File Upload</a>
                                    <a class="dropdown-item" href="editor.html">Editor</a>
                                </div>
                            </div>
                            <div class="sub-dropdown-menu show-on-hover">
                                <a href="#" class="dropdown-toggle dropdown-item">Tables</a>
                                <div class="dropdown-menu open-right-side">
                                    <a class="dropdown-item" href="basic-table.html">Basic Table</a>
                                    <a class="dropdown-item" href="data-table.html">Data Table</a>
                                    <a class="dropdown-item" href="responsive-table.html">Responsive Table</a>
                                    <a class="dropdown-item" href="editable-table.html">Editable Table</a>
                                </div>
                            </div>
                            <div class="sub-dropdown-menu show-on-hover">
                                <a href="#" class="dropdown-toggle dropdown-item">Charts</a>
                                <div class="dropdown-menu open-right-side">
                                    <a class="dropdown-item" href="line-charts.html">Line Chart</a>
                                    <a class="dropdown-item" href="area-charts.html">Area Chart</a>
                                    <a class="dropdown-item" href="bar-charts.html">Bar Chart</a>
                                    <a class="dropdown-item" href="pie-charts.html">Pie Chart</a>
                                    <a class="dropdown-item" href="realtime-charts.html">Realtime Chart</a>
                                    <a class="dropdown-item" href="mini-charts.html">Mini Chart</a>
                                </div>
                            </div>
                            <div class="sub-dropdown-menu show-on-hover">
                                <a href="#" class="dropdown-toggle dropdown-item">Maps</a>
                                <div class="dropdown-menu open-right-side">
                                    <a class="dropdown-item" href="google-map.html">Google Map</a>
                                    <a class="dropdown-item" href="vector-map.html">Vector Map</a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="documentation.html" >Documentation</a>
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
                    <a class="nav-link dropdown-toggle no-caret" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="feather-icon"><i data-feather="bell"></i></span><span class="badge-wrap"><span class="badge badge-success badge-indicator badge-indicator-sm badge-pill pulse"></span></span></a>
                    <div class="dropdown-menu dropdown-menu-right" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                        <h6 class="dropdown-header">Notifications <a href="javascript:void(0);" class="">View all</a></h6>
                        <div class="notifications-nicescroll-bar">
                            <a href="javascript:void(0);" class="dropdown-item">
                                <div class="media">
                                    <div class="media-img-wrap">
                                        <div class="avatar avatar-sm">
                                            <img src="dist/img/avatar1.jpg" alt="user" class="avatar-img rounded-circle">
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
                                            <img src="dist/img/avatar2.jpg" alt="user" class="avatar-img rounded-circle">
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
                                    <img src="dist/img/avatar5.jpg" alt="user" class="avatar-img rounded-circle">
                                </div>
                                <span class="badge badge-success badge-indicator"></span>
                            </div>
                            <div class="media-body">
                                <span>Aash Bill<i class="zmdi zmdi-chevron-down"></i></span>
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
                        <div class="chatapp-wrap">
                            <div class="chatapp-left">
                                <header>
                                    <a href="javascript:void(0)" class="chat-more">
                                        <span class="feather-icon"><i data-feather="more-vertical"></i></span>
                                    </a>
                                    <span class="">보낸 쪽지함</span>
                                    <a href="javascript:void(0)" class="chat-compose">
                                        <span class="feather-icon"><i data-feather="edit"></i></span>
                                    </a>
                                </header>
                                <form role="search" class="chat-search">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="feather-icon"><i data-feather="search"></i></span>
                                        </div>
                                        <input type="text" class="form-control" placeholder="Search">
                                    </div>
                                </form>
                                <div class="chatapp-users-list">
                                    <div class="nicescroll-bar">
                                		<c:forEach var="noteVO" items="${sendList}">
                                        <a href="javascript:void(0);" class="media">
                                            <div class="media-img-wrap">
                                                <div class="avatar">
                                                    <img src="/resources/dist/img/avatar1.jpg" alt="user" class="avatar-img rounded-circle">
                                                </div>
                                                <span class="badge badge-warning badge-indicator"></span>
                                            </div>
                                            <div class="media-body">
                                                <div>
                                                    <div class="user-name">${noteVO.userName}</div>
                                                    <div class="user-last-chat">${noteVO.noteSubject}</div>
                                                </div>
                                                <div>
                                                    <div class="last-chat-time block">${noteVO.registDate}</div>
                                                    <div class="badge badge-success badge-pill">15</div>
                                                </div>
                                            </div>
                                        </a>
                                        <div class="chat-hr-wrap">
                                            <hr>
                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div class="chatapp-right">
                                <header>
                                    <a id="back_user_list" href="javascript:void(0)" class="back-user-list">
                                        <span class="feather-icon"><i data-feather="chevron-left"></i></span>
                                    </a>
                                    <div class="media">
                                        <div class="media-img-wrap">
                                            <div class="avatar">
                                                <img src="/resources/dist/img/avatar2.jpg" alt="user" class="avatar-img rounded-circle">
                                            </div>
                                            <span class="badge badge-success badge-indicator"></span>
                                        </div>
                                        <div class="media-body">
                                            <div class="user-name"></div>
                                            <div class="user-status">online</div>
                                        </div>
                                    </div>
                                    <div class="chat-options-wrap">
                                        <a href="javascript:void(0)" class=""><span class="feather-icon"><i data-feather="video"></i></span></a>
                                        <a href="javascript:void(0)" class=""><span class="feather-icon"><i data-feather="phone"></i></span></a>
                                    </div>
                                </header>
                                <div class="chat-body">
                                    <div class="nicescroll-bar">
                                        
                                        
                                        
                                        
                                        
                                        
                                    </div>
                                </div>
                                <footer>
                                   <button>전송</button>
                                </footer>
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
    	var userName = document.querySelector('div.chatapp-users-list .user-name').value;
    	
    </script>

    <!-- jQuery -->
    <script src="/resources/vendors/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Slimscroll JavaScript -->
    <script src="/resources/dist/js/jquery.slimscroll.js"></script>

    <!-- Fancy Dropdown JS -->
    <script src="/resources/dist/js/dropdown-bootstrap-extended.js"></script>

    <!-- Toggles JavaScript -->
    <script src="/resources/vendors/jquery-toggles/toggles.min.js"></script>

    <!-- FeatherIcons JavaScript -->
    <script src="/resources/dist/js/feather.min.js"></script>

    <!-- Toggles JavaScript -->
    <script src="/resources/vendors/jquery-toggles/toggles.min.js"></script>
    <script src="/resources/dist/js/toggle-data.js"></script>

    <!-- Init JavaScript -->
    <script src="/resources/dist/js/init.js"></script>

</body>

</html>