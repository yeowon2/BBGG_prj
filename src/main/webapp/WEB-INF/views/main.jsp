<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Scrooge I Statistics Dashboard</title>
    <meta name="description" content="A responsive bootstrap 4 admin dashboard template by hencework" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
	
	<!-- Morris Charts CSS -->
    <link href="/resources/vendors/morris.js/morris.css" rel="stylesheet" type="text/css" />
	
	<!-- Toastr CSS -->
    <link href="/resources/vendors/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">

    <!-- Toggles CSS -->
    <link href="/resources/vendors/jquery-toggles/css/toggles.css" rel="stylesheet" type="text/css">
    <link href="/resources/vendors/jquery-toggles/css/themes/toggles-light.css" rel="stylesheet" type="text/css">
	
    <!-- Custom CSS -->
    <link href="/resources/dist/css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<!-- HK Wrapper -->
	<div class="hk-wrapper hk-alt-nav hk-icon-nav">

        <!-- Top Navbar -->
        <nav class="navbar navbar-expand-xl navbar-light fixed-top hk-navbar hk-navbar-alt">
            <a class="navbar-toggle-btn nav-link-hover navbar-toggler" href="javascript:void(0);" data-toggle="collapse" data-target="#navbarCollapseAlt" aria-controls="navbarCollapseAlt" aria-expanded="false" aria-label="Toggle navigation"><span class="feather-icon"><i data-feather="menu"></i></span></a>
            <a class="navbar-brand text-red" href="/main">
                <img src="/resources/comm/logo.png" class="w-30">
            </a>
            <div class="collapse navbar-collapse" id="navbarCollapseAlt">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown show-on-hover active">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Dashboard
							</a>
                        <div class="dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                            <a class="dropdown-item active" href="dashboard1.html">CRM</a>
							<a class="dropdown-item" href="dashboard2.html">Project</a>
							<a class="dropdown-item" href="dashboard3.html">Statistics</a>
							<a class="dropdown-item" href="dashboard4.html">classic</a>
							<a class="dropdown-item" href="dashboard5.html">Analytics</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown show-on-hover">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Pages
							</a>
                        <div class="dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                            <div class="sub-dropdown-menu show-on-hover">
                                <a href="#" class="dropdown-toggle dropdown-item">Application</a>
                                <div class="dropdown-menu open-right-side">
                                    <a class="dropdown-item" href="chats.html">Chat</a>
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
        <div class="hk-pg-wrapper">
			<!-- Container -->
            <div class="container mt-xl-50 mt-sm-30 mt-15">
				<!-- Title -->
				<div class="hk-pg-header align-items-top">
					<div>
						<h2 class="hk-pg-title font-weight-600 mb-10">Welcome to CRM</h2>
						<p>Questions about onboarding lead data? <a href="#">Learn more.</a></p>
					</div>
					<div class="d-flex">
						<button class="btn btn-sm btn-outline-light btn-wth-icon icon-wthot-bg mr-15 mb-15"><span class="icon-label"><i class="fa fa-envelope-o"></i> </span><span class="btn-text">Email </span></button>
						<button class="btn btn-sm btn-outline-light btn-wth-icon icon-wthot-bg mr-15 mb-15"><span class="icon-label"><i class="fa fa-print"></i> </span><span class="btn-text">Print </span></button>
						<button class="btn btn-sm btn-danger btn-wth-icon icon-wthot-bg mb-15"><span class="icon-label"><i class="fa fa-download"></i> </span><span class="btn-text">Export </span></button>
					</div>
				</div>
				<!-- /Title -->
				<!-- Row -->
                <div class="row">
                    <div class="col-xl-12">
						<div class="hk-row">
							<div class="col-lg-4">
								<div class="card card-sm">
									<div class="card-body">
										<div class="hk-legend-wrap mb-10">
											<div class="hk-legend">
												<span class="d-10 bg-red rounded-circle d-inline-block"></span><span>Today</span>
											</div>
											<div class="hk-legend">
												<span class="d-10 bg-red-light-4 rounded-circle d-inline-block"></span><span>Yesterday</span>
											</div>
										</div>
										<div id="e_chart_1" class="echart" style="height:155px;"></div>
										<div class="row mt-20">
											<div class="col-4">
												<span class="d-block text-capitalize">Previous</span>
												<span class="d-block font-weight-600 font-13">79.82</span>
											</div>
											<div class="col-4">
												<span class="d-block text-capitalize">% Change</span>
												<span class="d-block font-weight-600 font-13">+14.29</span>
											</div>
											<div class="col-4">
												<span class="d-block text-capitalize">Trend</span>
												<span class="block">
													<i class="zmdi zmdi-trending-down text-danger font-20"></i>
												</span>
											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header card-header-action">
										<h6>Activity</h6>
										<div class="d-flex align-items-center card-action-wrap">
											<div class="inline-block dropdown">
												<a class="dropdown-toggle no-caret" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="ion ion-ios-more"></i></a>
												<div class="dropdown-menu dropdown-menu-right">
													<a class="dropdown-item" href="#">Action</a>
													<a class="dropdown-item" href="#">Another action</a>
													<a class="dropdown-item" href="#">Something else here</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#">Separated link</a>
												</div>
											</div>
										</div>
									</div>
									<div class="card-body">
										<div class="user-activity user-activity-sm">
											<div class="media">
												<div class="media-img-wrap">
													<div class="avatar avatar-xs">
														<img src="/resources/dist/img/avatar3.jpg" alt="user" class="avatar-img rounded-circle">
													</div>
												</div>
												<div class="media-body">
													<div>
														<span class="d-block mb-5"><span class="font-weight-500 text-dark text-capitalize">Meayme Fletcher</span><span class="pl-5">liked photos</span></span>
														<span class="d-block font-13 mb-10">6 hours ago</span>
													</div>
												</div>
											</div>
											<div class="media">
												<div class="media-img-wrap">
													<div class="avatar avatar-xs">
														<span class="avatar-text avatar-text-info rounded-circle">
																<span class="initial-wrap"><span>B</span></span>
														</span>
													</div>
												</div>
												<div class="media-body">
													<div>
														<span class="d-block mb-5"><span class="font-weight-500 text-dark text-capitalize">Billy Flowers</span><span class="pl-5">Until recently, the prevailing view assumed lorem ipsum was born as a nonsense text.</span></span>
														<span class="d-block font-13">3 days ago</span>
													</div>
												</div>
											</div>
											<div class="media">
												<div class="media-img-wrap">
													<div class="avatar avatar-xs">
														<span class="avatar-text avatar-text-danger rounded-circle">
																<span class="initial-wrap"><span>A</span></span>
														</span>
													</div>
												</div>
												<div class="media-body">
													<div>
														<span class="d-block mb-5"><span class="font-weight-500 text-dark text-capitalize">Activin Fletcher</span><span class="pl-5">liked photos</span></span>
														<span class="d-block font-13 mb-10">2 hours ago</span>
													</div>
												</div>
											</div>
											<div class="media">
												<div class="media-img-wrap">
													<div class="avatar avatar-xs">
														<img src="/resources/dist/img/avatar4.jpg" alt="user" class="avatar-img rounded-circle">
													</div>
												</div>
												<div class="media-body">
													<div>
														<span class="d-block mb-5"><span class="font-weight-500 text-dark text-capitalize">Morgan Freeman</span><span class="pl-5">joined josh groben team.</span></span>
														<span class="d-block font-13">3 hours ago</span>
													</div>
												</div>
											</div>
											<div class="media">
												<div class="media-img-wrap">
													<div class="avatar avatar-xs">
														<span class="avatar-text avatar-text-success rounded-circle">
																<span class="initial-wrap"><span>M</span></span>
														</span>
													</div>
												</div>
												<div class="media-body">
													<div>
														<span class="d-block mb-5"><span class="font-weight-500 text-dark text-capitalize">Meayme Fletcher</span><span class="pl-5">liked photos</span></span>
														<span class="d-block font-13 mb-10">6 hours ago</span>
													</div>
												</div>
											</div>
											<div class="media">
												<div class="media-img-wrap">
													<div class="avatar avatar-xs">
														<span class="avatar-text avatar-text-primary rounded-circle">
																<span class="initial-wrap"><span>J</span></span>
														</span>
													</div>
												</div>
												<div class="media-body">
													<div>
														<span class="d-block mb-5"><span class="font-weight-500 text-dark text-capitalize">Jonnie Metoyer</span><span class="pl-5">started following you</span></span>
														<span class="d-block font-13 mb-10">2 days ago</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						
							<div class="col-lg-8">
								<div class="hk-row">
									<div class="col-lg-4">
										<div class="card card-sm">
											<div class="card-body pa-0">
												<div class="pa-15 mb-10">
													<span class="d-block font-14 font-weight-500 text-dark">New Users</span>
													<div class="d-flex align-items-center justify-content-between">
														<div class="display-5 font-weight-400 text-dark">12M</div>
														<div class="font-13 font-weight-500">
															<span>-28.12%</span>
															<i class="ion ion-md-arrow-down text-danger ml-5"></i>
														</div>
													</div>
												</div>
												<div id="sparkline_1"></div>
											</div>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="card card-sm">
											<div class="card-body pa-0">
												<div class="pa-15 mb-10">
													<span class="d-block font-14 font-weight-500 text-dark">New Sessions</span>
													<div class="d-flex align-items-center justify-content-between">
														<div class="display-5 font-weight-400 text-dark">76.4%</div>
														<div class="font-13 font-weight-500">
															<span>2.12%</span>
															<i class="ion ion-md-arrow-up text-success ml-5"></i>
														</div>
													</div>
												</div>
												<div id="sparkline_2"></div>
											</div>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="card card-sm">
											<div class="card-body pa-0">
												<div class="pa-15 mb-10">
													<span class="d-block font-14 font-weight-500 text-dark">Time on Site</span>
													<div class="d-flex align-items-center justify-content-between">
														<div class="display-5 font-weight-400 text-dark">2m 15s</div>
														<div class="font-13 font-weight-500">
															<span>39.15%</span>
															<i class="ion ion-md-arrow-up text-success ml-5"></i>
														</div>
													</div>
												</div>
												<div id="sparkline_3"></div>
											</div>
										</div>
									</div>
								</div>	
								<div class="hk-row">
									<div class="col-md-4">
										<div class="card">
											<div class="card-header card-header-action">
												<h6>browser stats</h6>
												<div class="d-flex align-items-center card-action-wrap">
													<div class="inline-block dropdown">
														<a class="dropdown-toggle no-caret" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="ion ion-ios-more"></i></a>
														<div class="dropdown-menu dropdown-menu-right">
															<a class="dropdown-item" href="#">Action</a>
															<a class="dropdown-item" href="#">Another action</a>
															<a class="dropdown-item" href="#">Something else here</a>
															<div class="dropdown-divider"></div>
															<a class="dropdown-item" href="#">Separated link</a>
														</div>
													</div>
												</div>
											</div>
											<div class="card-body">
												<div class="d-flex justify-content-between mb-20">
													<span class="text-capitalize text-dark">
														google chrome
													</span>
													<span class="badge badge-soft-danger badge-pill">50%</span>
												</div>
												<div class="d-flex justify-content-between mb-20">
													<span class="text-capitalize text-dark">
														mozila firefox
													</span>
													<span class="badge badge-soft-danger badge-pill">10%</span>
												</div>
												<div class="d-flex justify-content-between mb-20">
													<span class="text-capitalize text-dark">
														safari
													</span>
													<span class="badge badge-soft-danger badge-pill">30%</span>
												</div>
												<div class="d-flex justify-content-between mb-20">
													<span class="text-capitalize text-dark">
														opera
													</span>
													<span class="badge badge-soft-danger badge-pill">80%</span>
												</div>
												<div class="d-flex justify-content-between mb-20">
													<span class="text-capitalize text-dark">
														internate explorar
													</span>
													<span class="badge badge-soft-danger badge-pill">90%</span>
												</div>
												<div class="d-flex justify-content-between mb-20">
													<span class="text-capitalize text-dark">
														UC Browser
													</span>
													<span class="badge badge-soft-danger badge-pill">20%</span>
												</div>
												<div class="d-flex justify-content-between">
													<span class="text-capitalize text-dark">
														SRWare Iron
													</span>
													<span class="badge badge-soft-danger badge-pill">10%</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-8">
										<div class="card">
											<div class="card-header card-header-action">
												<h6>Total Sales</h6>
												<div class="d-flex align-items-center card-action-wrap">
													<div class="inline-block dropdown">
														<a class="dropdown-toggle no-caret" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="ion ion-ios-more"></i></a>
														<div class="dropdown-menu dropdown-menu-right">
															<a class="dropdown-item" href="#">Action</a>
															<a class="dropdown-item" href="#">Another action</a>
															<a class="dropdown-item" href="#">Something else here</a>
															<div class="dropdown-divider"></div>
															<a class="dropdown-item" href="#">Separated link</a>
														</div>
													</div>
												</div>
											</div>
											<div class="card-body">
												<div class="d-flex align-items-start justify-content-between mb-15">
													<div class="display-6 text-dark">$40,630.59</div>
													<div class="font-16 text-green font-weight-500">
														<i class="ion ion-md-arrow-up mr-5"></i>
														<span>5.12%</span>
													</div>
												</div>
												<div id="e_chart_2" class="echart" style="height:190px;"></div>
												<div class="hk-legend-wrap mt-10">
													<div class="hk-legend">
														<span class="d-10 bg-red rounded-circle d-inline-block"></span><span>Today</span>
													</div>
													<div class="hk-legend">
														<span class="d-10 bg-red-light-4 rounded-circle d-inline-block"></span><span>Yesterday</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-body pa-0">
										<div class="table-wrap">
											<div class="table-responsive">
												<table class="table table-hover mb-0">
													<thead>
														<tr>
															<th>
																<div class="custom-control custom-checkbox checkbox-danger">
																	<input type="checkbox" class="custom-control-input" id="customCheck4">
																	<label class="custom-control-label" for="customCheck4">Lead Title</label>
																</div>
															</th>
															<th>Sales</th>
															<th>Company</th>
															<th>Date Created</th>
															<th>Lead Status</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>
																<div class="custom-control custom-checkbox checkbox-danger">
																	<input type="checkbox" class="custom-control-input" id="customCheck41" checked="">
																	<label class="custom-control-label" for="customCheck41"><span class="w-130p d-block text-truncate">connar_weiked@ae.com</span></label>
																</div>
															</td>
															<td>$2000</td>
															<td>
																American Express
															</td>
															<td>
																22/10/2018
															</td>
															<td><span class="badge badge-soft-primary">On track</span></td>
														</tr>
														<tr>
															<td>
																<div class="custom-control custom-checkbox checkbox-danger">
																	<input type="checkbox" class="custom-control-input" id="customCheck42">
																	<label class="custom-control-label" for="customCheck42"><span class="w-130p d-block text-truncate">express_notingham@em.au</span></label>
																</div>
															</td>
															<td>$1600</td>
															<td>
																Exxon Mobil
															</td>
															<td>
																15/09/2018
															</td>
															<td><span class="badge badge-soft-primary">On track</span></td>
														</tr>
														<tr>
															<td>
																<div class="custom-control custom-checkbox checkbox-danger">
																	<input type="checkbox" class="custom-control-input" id="customCheck43">
																	<label class="custom-control-label" for="customCheck43"><span class="w-130p d-block text-truncate">locast12_host@nova.com</span></label>
																</div>
															</td>
															<td>$1265</td>
															<td>
																Big Blackship
															</td>
															<td>
																30/08/2018
															</td>
															<td><span class="badge badge-soft-danger">Behind</span></td>
														</tr>
														<tr>
															<td>
																<div class="custom-control custom-checkbox checkbox-danger">
																	<input type="checkbox" class="custom-control-input" id="customCheck44">
																	<label class="custom-control-label" for="customCheck44"><span class="w-130p d-block text-truncate">grillmac@sundance.co.in</span></label>
																</div>
															</td>
															<td>$4562</td>
															<td>
																Folkswagan
															</td>
															<td>
																14/03/2018
															</td>
															<td><span class="badge badge-soft-purple">Negotiation</span></td>
														</tr>
														<tr>
															<td>
																<div class="custom-control custom-checkbox checkbox-danger">
																	<input type="checkbox" class="custom-control-input" id="customCheck45">
																	<label class="custom-control-label" for="customCheck45"><span class="w-130p d-block text-truncate">admin@novotel.inc</span></label>
																</div>
															</td>
															<td>$5012</td>
															<td>
																Novotel
															</td>
															<td>
																21/02/2018
															</td>
															<td><span class="badge badge-soft-orange">Offer Made</span></td>
														</tr>
														<tr>
															<td>
																<div class="custom-control custom-checkbox checkbox-danger">
																	<input type="checkbox" class="custom-control-input" id="customCheck46">
																	<label class="custom-control-label" for="customCheck46"><span class="w-130p d-block text-truncate">displaypic@ho.au</span></label>
																</div>
															</td>
															<td>$1245</td>
															<td>
																Displaypic
															</td>
															<td>
																3/02/2018
															</td>
															<td><span class="badge badge-soft-orange">Offer Made</span></td>
														</tr>
													</tbody>
												</table>
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
			<!-- Footer -->
            <div class="hk-footer-wrap container">
                <footer class="footer">
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <p>Pampered by<a href="https://hencework.com/" class="text-dark" target="_blank">Hencework</a> © 2019</p>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <p class="d-inline-block">Follow us</p>
                            <a href="#" class="d-inline-block btn btn-icon btn-icon-only btn-indigo btn-icon-style-4"><span class="btn-icon-wrap"><i class="fa fa-facebook"></i></span></a>
                            <a href="#" class="d-inline-block btn btn-icon btn-icon-only btn-indigo btn-icon-style-4"><span class="btn-icon-wrap"><i class="fa fa-twitter"></i></span></a>
                            <a href="#" class="d-inline-block btn btn-icon btn-icon-only btn-indigo btn-icon-style-4"><span class="btn-icon-wrap"><i class="fa fa-google-plus"></i></span></a>
                        </div>
                    </div>
                </footer>
            </div>
            <!-- /Footer -->
        </div>
        <!-- /Main Content -->

    </div>
    <!-- /HK Wrapper -->

    <!-- jQuery -->
    <script src="/resources/vendors/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Slimscroll JavaScript -->
    <script src="/resources/dist/js/jquery.slimscroll.js"></script>

    <!-- Fancy Dropdown JS -->
    <script src="/resources/dist/js/dropdown-bootstrap-extended.js"></script>

    <!-- FeatherIcons JavaScript -->
    <script src="/resources/dist/js/feather.min.js"></script>

    <!-- Toggles JavaScript -->
    <script src="/resources/vendors/jquery-toggles/toggles.min.js"></script>
    <script src="/resources/dist/js/toggle-data.js"></script>
	
	<!-- Counter Animation JavaScript -->
	<script src="/resources/vendors/waypoints/lib/jquery.waypoints.min.js"></script>
	<script src="/resources/vendors/jquery.counterup/jquery.counterup.min.js"></script>
	
	<!-- Easy pie chart JS -->
    <script src="/resources/vendors/easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
	
	<!-- Sparkline JavaScript -->
    <script src="/resources/vendors/jquery.sparkline/dist/jquery.sparkline.min.js"></script>
	
	<!-- Morris Charts JavaScript -->
    <script src="/resources/vendors/raphael/raphael.min.js"></script>
    <script src="/resources/vendors/morris.js/morris.min.js"></script>
   
	<!-- EChartJS JavaScript -->
    <script src="/resources/vendors/echarts/dist/echarts-en.min.js"></script>
    
	<!-- Peity JavaScript -->
    <script src="/resources/vendors/peity/jquery.peity.min.js"></script>
   
	<!-- Toastr JS -->
    <script src="/resources/vendors/jquery-toast-plugin/dist/jquery.toast.min.js"></script>
    
    <!-- Init JavaScript -->
    <script src="/resources/dist/js/init.js"></script>
	<script src="/resources/dist/js/dashboard-data.js"></script>
	
</body>

</html>