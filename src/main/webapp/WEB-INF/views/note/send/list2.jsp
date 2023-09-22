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
		<nav
			class="navbar navbar-expand-xl navbar-light fixed-top hk-navbar hk-navbar-alt">
			<a class="navbar-toggle-btn nav-link-hover navbar-toggler"
				href="javascript:void(0);" data-toggle="collapse"
				data-target="#navbarCollapseAlt" aria-controls="navbarCollapseAlt"
				aria-expanded="false" aria-label="Toggle navigation"><span
				class="feather-icon"><i data-feather="menu"></i></span></a> <a
				class="navbar-brand text-red" href="dashboard1.html"> scrooge </a>
			<div class="collapse navbar-collapse" id="navbarCollapseAlt">
				<ul class="navbar-nav">
					<li class="nav-item dropdown show-on-hover"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Dashboard </a>
						<div class="dropdown-menu" data-dropdown-in="fadeIn"
							data-dropdown-out="fadeOut">
							<a class="dropdown-item" href="dashboard1.html">CRM</a> <a
								class="dropdown-item" href="dashboard2.html">Project</a> <a
								class="dropdown-item" href="dashboard3.html">Statistics</a> <a
								class="dropdown-item" href="dashboard4.html">classic</a> <a
								class="dropdown-item" href="dashboard5.html">Analytics</a>
						</div></li>
					<li class="nav-item dropdown show-on-hover active"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Pages </a>
						<div class="dropdown-menu" data-dropdown-in="fadeIn"
							data-dropdown-out="fadeOut">
							<div class="sub-dropdown-menu show-on-hover">
								<a href="#" class="dropdown-toggle dropdown-item">Application</a>
								<div class="dropdown-menu open-right-side">
									<a class="dropdown-item" href="chats.html">Chat</a> <a
										class="dropdown-item" href="calendar.html">Calendar</a> <a
										class="dropdown-item active" href="email.html">Email</a> <a
										class="dropdown-item" href="file-manager.html">File
										Manager</a>
								</div>
							</div>
							<div class="sub-dropdown-menu show-on-hover">
								<a href="#" class="dropdown-toggle dropdown-item">Authentication</a>
								<div class="dropdown-menu open-right-side">
									<div class="sub-dropdown-menu show-on-hover">
										<a href="#" class="dropdown-toggle dropdown-item">Sign Up</a>
										<div class="dropdown-menu open-right-side">
											<a class="dropdown-item" href="signup.html">Cover</a> <a
												class="dropdown-item" href="signup-simple.html">Simple</a>
										</div>
									</div>
									<div class="sub-dropdown-menu show-on-hover">
										<a href="#" class="dropdown-toggle dropdown-item">Login</a>
										<div class="dropdown-menu open-right-side">
											<a class="dropdown-item" href="login.html">Cover</a> <a
												class="dropdown-item" href="login-simple.html">Simple</a>
										</div>
									</div>
									<div class="sub-dropdown-menu show-on-hover">
										<a href="#" class="dropdown-toggle dropdown-item">Recover
											Pwd</a>
										<div class="dropdown-menu open-right-side">
											<a class="dropdown-item" href="forgot-password.html">Forgot
												Password</a> <a class="dropdown-item" href="reset-password.html">Reset
												Password</a>
										</div>
									</div>
									<a class="dropdown-item" href="lock-screen.html">Lock
										Screen</a> <a class="dropdown-item" href="404.html">Error 404</a>
									<a class="dropdown-item" href="maintenance.html">Maintenance</a>
								</div>
							</div>
							<a class="dropdown-item" href="profile.html">Profile</a> <a
								class="dropdown-item" href="invoice.html">Invoice</a> <a
								class="dropdown-item" href="gallery.html">Gallery</a> <a
								class="dropdown-item" href="activity.html">Activity</a> <a
								class="dropdown-item" href="faq.html">Faq</a>
						</div></li>
					<li class="nav-item dropdown show-on-hover"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							User interface </a>
						<div class="dropdown-menu" data-dropdown-in="fadeIn"
							data-dropdown-out="fadeOut">
							<div class="sub-dropdown-menu show-on-hover">
								<a href="#" class="dropdown-toggle dropdown-item">Components</a>
								<div class="dropdown-menu open-right-side">
									<a class="dropdown-item" href="alerts.html">Alerts</a> <a
										class="dropdown-item" href="avatar.html">Avatar</a> <a
										class="dropdown-item" href="badge.html">Badge</a> <a
										class="dropdown-item" href="buttons.html">Buttons</a> <a
										class="dropdown-item" href="cards.html">Cards</a> <a
										class="dropdown-item" href="carousel.html">Carousel</a> <a
										class="dropdown-item" href="collapse.html">Collapse</a> <a
										class="dropdown-item" href="dropdowns.html">Dropdown</a> <a
										class="dropdown-item" href="list-group.html">List Group</a> <a
										class="dropdown-item" href="modal.html">Modal</a> <a
										class="dropdown-item" href="nav.html">Nav</a> <a
										class="dropdown-item" href="navbar.html">Navbar</a> <a
										class="dropdown-item" href="nestable.html">Nestable</a> <a
										class="dropdown-item" href="pagination.html">Pagination</a> <a
										class="dropdown-item" href="popovers.html">Popovers</a> <a
										class="dropdown-item" href="progress.html">Progress</a> <a
										class="dropdown-item" href="tooltip.html">Tooltip</a>
								</div>
							</div>
							<div class="sub-dropdown-menu show-on-hover">
								<a href="#" class="dropdown-toggle dropdown-item">Content</a>
								<div class="dropdown-menu open-right-side">
									<a class="dropdown-item" href="typography.html">Typography</a>
									<a class="dropdown-item" href="images.html">Images</a> <a
										class="dropdown-item" href="media-object.html">Media
										Object</a>
								</div>
							</div>
							<div class="sub-dropdown-menu show-on-hover">
								<a href="#" class="dropdown-toggle dropdown-item">Utilities</a>
								<div class="dropdown-menu open-right-side">
									<a class="dropdown-item" href="background.html">Background</a>
									<a class="dropdown-item" href="border.html">Border</a> <a
										class="dropdown-item" href="colors.html">Colors</a> <a
										class="dropdown-item" href="embeds.html">Embeds</a> <a
										class="dropdown-item" href="icons.html">Icons</a> <a
										class="dropdown-item" href="shadow.html">Shadow</a> <a
										class="dropdown-item" href="sizing.html">Sizing</a> <a
										class="dropdown-item" href="spacing.html">Spacing</a>
								</div>
							</div>
							<div class="sub-dropdown-menu show-on-hover">
								<a href="#" class="dropdown-toggle dropdown-item">Forms</a>
								<div class="dropdown-menu open-right-side">
									<a class="dropdown-item" href="form-element.html">Form
										Elements</a> <a class="dropdown-item" href="input-groups.html">Input
										Groups</a> <a class="dropdown-item" href="form-layout.html">Form
										Layout</a> <a class="dropdown-item" href="form-mask.html">Form
										Mask</a> <a class="dropdown-item" href="form-validation.html">Form
										Validation</a> <a class="dropdown-item" href="form-wizard.html">Form
										Wizard</a> <a class="dropdown-item" href="file-upload.html">File
										Upload</a> <a class="dropdown-item" href="editor.html">Editor</a>
								</div>
							</div>
							<div class="sub-dropdown-menu show-on-hover">
								<a href="#" class="dropdown-toggle dropdown-item">Tables</a>
								<div class="dropdown-menu open-right-side">
									<a class="dropdown-item" href="basic-table.html">Basic
										Table</a> <a class="dropdown-item" href="data-table.html">Data
										Table</a> <a class="dropdown-item" href="responsive-table.html">Responsive
										Table</a> <a class="dropdown-item" href="editable-table.html">Editable
										Table</a>
								</div>
							</div>
							<div class="sub-dropdown-menu show-on-hover">
								<a href="#" class="dropdown-toggle dropdown-item">Charts</a>
								<div class="dropdown-menu open-right-side">
									<a class="dropdown-item" href="line-charts.html">Line Chart</a>
									<a class="dropdown-item" href="area-charts.html">Area Chart</a>
									<a class="dropdown-item" href="bar-charts.html">Bar Chart</a> <a
										class="dropdown-item" href="pie-charts.html">Pie Chart</a> <a
										class="dropdown-item" href="realtime-charts.html">Realtime
										Chart</a> <a class="dropdown-item" href="mini-charts.html">Mini
										Chart</a>
								</div>
							</div>
							<div class="sub-dropdown-menu show-on-hover">
								<a href="#" class="dropdown-toggle dropdown-item">Maps</a>
								<div class="dropdown-menu open-right-side">
									<a class="dropdown-item" href="google-map.html">Google Map</a>
									<a class="dropdown-item" href="vector-map.html">Vector Map</a>
								</div>
							</div>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						href="documentation.html">Documentation</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Log<span
							class="badge badge-green badge-sm badge-pill ml-10">v 1.0</span></a>
					</li>
				</ul>
				<form class="navbar-search-alt">
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><span class="feather-icon"><i
									data-feather="search"></i></span></span>
						</div>
						<input class="form-control" type="search" placeholder="Search"
							aria-label="Search">
					</div>
				</form>
			</div>
			<ul class="navbar-nav hk-navbar-content">
				<li class="nav-item"><a id="settings_toggle_btn"
					class="nav-link nav-link-hover" href="javascript:void(0);"><span
						class="feather-icon"><i data-feather="settings"></i></span></a></li>
				<li class="nav-item dropdown dropdown-notifications"><a
					class="nav-link dropdown-toggle no-caret" href="#" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span
						class="feather-icon"><i data-feather="bell"></i></span><span
						class="badge-wrap"><span
							class="badge badge-success badge-indicator badge-indicator-sm badge-pill pulse"></span></span></a>
					<div class="dropdown-menu dropdown-menu-right"
						data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
						<h6 class="dropdown-header">
							Notifications <a href="javascript:void(0);" class="">View all</a>
						</h6>
						<div class="notifications-nicescroll-bar">
							<a href="javascript:void(0);" class="dropdown-item">
								<div class="media">
									<div class="media-img-wrap">
										<div class="avatar avatar-sm">
											<img src="/resources/dist/img/avatar1.jpg" alt="user"
												class="avatar-img rounded-circle">
										</div>
									</div>
									<div class="media-body">
										<div>
											<div class="notifications-text">
												<span class="text-dark text-capitalize">Evie Ono</span>
												accepted your invitation to join the team
											</div>
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
											<img src="/resources/dist/img/avatar2.jpg" alt="user"
												class="avatar-img rounded-circle">
										</div>
									</div>
									<div class="media-body">
										<div>
											<div class="notifications-text">
												New message received from <span
													class="text-dark text-capitalize">Misuko Heid</span>
											</div>
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
												<span class="initial-wrap"><span><i
														class="zmdi zmdi-account font-18"></i></span></span>
											</span>
										</div>
									</div>
									<div class="media-body">
										<div>
											<div class="notifications-text">
												You have a follow up with<span
													class="text-dark text-capitalize"> Scrooge head</span> on <span
													class="text-dark text-capitalize">friday, dec 19</span> at
												<span class="text-dark">10.00 am</span>
											</div>
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
											<div class="notifications-text">
												Application of <span class="text-dark text-capitalize">Sarah
													Williams</span> is waiting for your approval
											</div>
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
												<span class="initial-wrap"><span><i
														class="zmdi zmdi-notifications font-18"></i></span></span>
											</span>
										</div>
									</div>
									<div class="media-body">
										<div>
											<div class="notifications-text">Last 2 days left for
												the project</div>
											<div class="notifications-time">15d</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					</div></li>
				<li class="nav-item dropdown dropdown-authentication"><a
					class="nav-link dropdown-toggle no-caret" href="#" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<div class="media">
							<div class="media-img-wrap">
								<div class="avatar">
									<img src="/resources/dist/img/avatar5.jpg" alt="user"
										class="avatar-img rounded-circle">
								</div>
								<span class="badge badge-success badge-indicator"></span>
							</div>
							<div class="media-body">
								<span>Aash Bill<i class="zmdi zmdi-chevron-down"></i></span>
							</div>
						</div>
				</a>
					<div class="dropdown-menu dropdown-menu-right"
						data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
						<a class="dropdown-item" href="profile.html"><i
							class="dropdown-icon zmdi zmdi-account"></i><span>Profile</span></a>
						<a class="dropdown-item" href="#"><i
							class="dropdown-icon zmdi zmdi-card"></i><span>My balance</span></a>
						<a class="dropdown-item" href="inbox.html"><i
							class="dropdown-icon zmdi zmdi-email"></i><span>Inbox</span></a> <a
							class="dropdown-item" href="#"><i
							class="dropdown-icon zmdi zmdi-settings"></i><span>Settings</span></a>
						<div class="dropdown-divider"></div>
						<div class="sub-dropdown-menu show-on-hover">
							<a href="#" class="dropdown-toggle dropdown-item no-caret"><i
								class="zmdi zmdi-check text-success"></i>Online</a>
							<div class="dropdown-menu open-left-side">
								<a class="dropdown-item" href="#"><i
									class="dropdown-icon zmdi zmdi-check text-success"></i><span>Online</span></a>
								<a class="dropdown-item" href="#"><i
									class="dropdown-icon zmdi zmdi-circle-o text-warning"></i><span>Busy</span></a>
								<a class="dropdown-item" href="#"><i
									class="dropdown-icon zmdi zmdi-minus-circle-outline text-danger"></i><span>Offline</span></a>
							</div>
						</div>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"><i
							class="dropdown-icon zmdi zmdi-power"></i><span>Log out</span></a>
					</div></li>
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
										<a href="javascript:void(0)" id="emailapp_sidebar_move"
											class="emailapp-sidebar-move"> <span class="feather-icon"><i
												data-feather="menu"></i></span>
										</a> <span class="">Inbox</span> <a href="javascript:void(0)"
											class="email-compose" data-toggle="modal"
											data-target="#exampleModalEmail"> <span
											class="feather-icon"><i data-feather="edit"></i></span>
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
												<a href="javascript:void(0);" class="media" id="modal-link">
													<div class="media-img-wrap">
														<div class="avatar">
															<img src="/resources/dist/img/avatar1.jpg" alt="user"
																class="avatar-img rounded-circle">
														</div>
													</div>
													<div class="media-body">
														<div>
															<div class="email-head">${noteVO.userNo}번회원</div>
															<div class="email-head">${noteVO.roomNo}번매물</div>
															<div class="email-subject">${noteVO.noteSubject}</div>
															<div class="email-text">${noteVO.noteText1}</div>
														</div>
														<div>
															<div class="last-email-details">
																<span class="badge badge-danger badge-indicator"></span>
																2:30 PM
															</div>
															<span class="email-star"><span
																class="feather-icon"><i data-feather="star"></i></span></span>
															<a href="javascript:void(0);"
																class="btn btn-danger btn-delete"
																data-note-no="${noteVO.noteNo}"> 삭제 </a>
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
										<a id="back_email_list" href="javascript:void(0)"
											class="back-email-list"> <span class="feather-icon"><i
												data-feather="chevron-left"></i></span>
										</a>
										<div class="email-options-wrap">
											<a href="javascript:void(0)" class=""><span
												class="feather-icon"><i data-feather="printer"></i></span></a> <a
												href="javascript:void(0)" class=""><span
												class="feather-icon"><i data-feather="trash"></i></span></a> <a
												href="javascript:void(0)" class="text-smoke"><span
												class="feather-icon"><i data-feather="more-vertical"></i></span></a>
										</div>
									</header>
									<div class="email-body">
										<div class="nicescroll-bar">
											<div>
												<div class="email-subject-head">
													<h4>Application for the post of Managing Director</h4>
													<div class="d-flex align-items-center">
														<span class="badge badge-secondary">inbox</span> <a
															href="javascript:void(0)" class="email-star starred"><span
															class="feather-icon"><i data-feather="star"></i></span></a>
													</div>
												</div>
												<hr class="mt-10 mb-20">
												<div class="email-head">
													<div class="media">
														<div class="media-img-wrap">
															<div class="avatar">
																<img src="/resources/dist/img/avatar1.jpg" alt="user"
																	class="avatar-img rounded-circle">
															</div>
														</div>
														<div class="media-body">
															<span class="text-capitalize sender-name d-inline-block">Evie
																ono</span> <span class="sender-email d-inline-block">(evieono@Scrooge.com)</span>
															<span class="d-block"> to <span>me</span>
															</span>
														</div>
													</div>
													<div class="head-other-wrap">
														<div class="d-inline-block mr-5">
															<span class="d-inline-block">10:06 AM</span> <span
																class="d-inline-block">(2 hours ago)</span>
														</div>
														<div class="d-inline-block dropdown">
															<a class="dropdown-toggle no-caret"
																data-toggle="dropdown" href="#" aria-expanded="false"
																role="button"><i class="zmdi   zmdi-more-vert"></i></a>
															<div class="dropdown-menu bullet dropdown-menu-right"
																role="menu">
																<a class="dropdown-item" href="javascript:void(0)"
																	role="menuitem"><i class="icon wb-reply"
																	aria-hidden="true"></i>Reply</a> <a class="dropdown-item"
																	href="javascript:void(0)" role="menuitem"><i
																	class="icon wb-share" aria-hidden="true"></i>Forward</a> <a
																	class="dropdown-item" href="javascript:void(0)"
																	role="menuitem"><i class="icon wb-trash"
																	aria-hidden="true"></i>Delete</a>
															</div>
														</div>
													</div>
												</div>
												<div class="email-text-wrap mt-30">
													<span class="d-block email-title text-capitalize mb-30">dear
														sir,</span>
													<p class="mb-30">Faucibus rutrum. Phasellus sodales
														vulputate urna, vel accumsan augue egestas ac. Donec vitae
														leo at sem lobortis porttitor eu consequat risus. Mauris
														sed congue orci. Donec ultrices faucibus rutrum. Phasellus
														sodales vulputate urna, vel accumsan augue egestas ac.
														Donec vitae leo at sem lobortis porttitor eu consequat
														risus.</p>
													<p>Donec vitae leo at sem lobortis porttitor eu
														consequat risus. Mauris sed congue orci.Mauris sed congue
														orci. Donec ultrices faucibus rutrum. Phasellus sodales
														vulputate urna, vel accumsan augue egestas ac</p>
													<p class="mt-30">Thank you for your time.</p>
													<div class="email-end-detail mt-35">
														<span class="text-capitalize d-block">evie one</span> <span
															class="d-block">+12 234 443</span> <span class="d-block">evieone@Scrooge.com</span>
													</div>
												</div>
												<hr class="hr-light">
												<div class="email-attachment-wrap">
													<div class="email-attachment-block">
														<a href="javascript:void(0)">
															<div class="card card-sm w-200p">
																<div class="card-body d-flex align-items-center">
																	<img src="/resources/dist/img/jpgicon.png"
																		class="d-inline-block mr-10" alt="attachicon" /> <span
																		class="d-inline-block mnw-0"> <span
																		class="d-block file-name text-truncate">concept_design.jpg</span>
																		<small class="d-block file-size text-truncate">5.78
																			MB</small>
																	</span>
																</div>
															</div>
														</a> <a href="javascript:void(0)">
															<div class="card card-sm w-200p">
																<div class="card-body d-flex align-items-center">
																	<img src="/resources/dist/img/pdficon.png"
																		class="d-inline-block mr-10" alt="attachicon" /> <span
																		class="d-inline-block mnw-0"> <span
																		class="d-block file-name text-truncate">Design-titleccv.pdf</span>
																		<small class="d-block file-size text-truncate">2.1
																			MB</small>
																	</span>
																</div>
															</div>
														</a>
													</div>
													<div class="d-flex ml-auto">
														<a href="javascript:void(0)"><i
															class="zmdi zmdi-download"></i></a> <a
															href="javascript:void(0)"><i class="zmdi zmdi-more"></i></a>
													</div>
												</div>

												<hr class="hr-light">
												<div class="email-reply-block">
													Click here to <a href="javascript:void(0)"
														class="text-capitalize">reply</a> or <a
														href="javascript:void(0)" class="text-capitalize">forwrd</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Compose email -->
							<div class="modal fade" id="exampleModalEmail" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalEmail"
								aria-hidden="true">
								<div class="modal-dialog modal-lg" role="document">
									<div class="modal-content">
										<div class="modal-header bg-grey-dark-5">
											<h6 class="modal-title text-white"
												id="exampleModalPopoversLabel">New Email</h6>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">×</span>
											</button>
										</div>
										<div class="modal-body">
											<form>
												<div class="form-group">
													<div class="input-group input-group-sm">
														<div class="input-group-prepend">
															<span class="input-group-text">To</span>
														</div>
														<input type="text" class="form-control">
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
													<div class="fileinput fileinput-new input-group"
														data-provides="fileinput">
														<div class="input-group-prepend">
															<span class="input-group-text">Upload</span>
														</div>
														<div class="form-control text-truncate"
															data-trigger="fileinput">
															<i class="glyphicon glyphicon-file fileinput-exists"></i>
															<span class="fileinput-filename"></span>
														</div>
														<span class="input-group-append"> <span
															class=" btn btn-danger btn-file"><span
																class="fileinput-new">Select file</span><span
																class="fileinput-exists">Change</span> <input
																type="file" name="..."> </span> <a href="#"
															class="btn btn-secondary fileinput-exists"
															data-dismiss="fileinput">Remove</a>
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
                .catch(function (error) {
                    console.error('Error:', error);
                });
            }
        });
    });

</script>
	 <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Jasny-bootstrap  JavaScript -->
    <script src="vendors/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>

    <!-- Slimscroll JavaScript -->
    <script src="dist/js/jquery.slimscroll.js"></script>

    <!-- Fancy Dropdown JS -->
    <script src="dist/js/dropdown-bootstrap-extended.js"></script>

    <!-- Tinymce JavaScript -->
    <script src="vendors/tinymce/tinymce.min.js"></script>

    <!-- Tinymce Wysuhtml5 Init JavaScript -->
    <script src="dist/js/tinymce-data.js"></script>

    <!-- FeatherIcons JavaScript -->
    <script src="dist/js/feather.min.js"></script>

    <!-- Toggles JavaScript -->
    <script src="vendors/jquery-toggles/toggles.min.js"></script>
    <script src="dist/js/toggle-data.js"></script>

    <!-- Init JavaScript -->
    <script src="dist/js/init.js"></script>

	
</body>

</html>