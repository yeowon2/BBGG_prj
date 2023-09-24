<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../header.jsp"></jsp:include>
<title>허위 매물 신고</title>
<link rel="stylesheet" href="/resources/dist/css/modal.css" />
<style>
#modal {
	display: none;
}
</style>
<!-- Toggles CSS -->
<link href="vendors/jquery-toggles/css/toggles.css" rel="stylesheet" type="text/css">
<link href="vendors/jquery-toggles/css/themes/toggles-light.css" rel="stylesheet" type="text/css">
<!-- Custom CSS -->
<link href="/resources/dist/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

	<!-- HK Wrapper -->
	<div class="hk-wrapper hk-alt-nav">

		<!-- Top Navbar -->
 		<nav class="navbar navbar-expand-xl navbar-light fixed-top hk-navbar hk-navbar-alt">
     		<a class="navbar-toggle-btn nav-link-hover navbar-toggler" href="javascript:void(0);" data-toggle="collapse" data-target="#navbarCollapseAlt" aria-controls="navbarCollapseAlt" aria-expanded="false" aria-label="Toggle navigation"><span class="feather-icon"><i data-feather="menu"></i></span></a>
     		<a class="navbar-brand text-red" href="/main">
         		BangBangGogGog
     		</a>
     		<div class="collapse navbar-collapse" id="navbarCollapseAlt">
         		<ul class="navbar-nav">
             		<li class="nav-item dropdown show-on-hover">
                 		<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							매물보기
						</a>
                 		<div class="dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                     		<a class="dropdown-item" href="dashboard1.html">샘플1</a>
							<a class="dropdown-item" href="dashboard2.html">샘플2</a>
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
		                            	<a class="dropdown-item" href="calendar.html">Calendar</a>
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
		                         </div>
		                     </div>
		                 </div>
		             </li>
		             <li class="nav-item dropdown show-on-hover active">
		                 <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							TIPS
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
		                             <a class="dropdown-item active" href="modal.html">Modal</a>
		                             <a class="dropdown-item" href="nav.html">Nav</a>
		                             <a class="dropdown-item" href="navbar.html">Navbar</a>
		                             <a class="dropdown-item" href="nestable.html">Nestable</a>
		                             <a class="dropdown-item" href="pagination.html">Pagination</a>
		                             <a class="dropdown-item" href="popovers.html">Popovers</a>
		                             <a class="dropdown-item" href="progress.html">Progress</a>
		                             <a class="dropdown-item" href="tooltip.html">Tooltip</a>
		                         </div>
		                     </div>
		                 </div>
		             </li>
		             <li class="nav-item">
		                 <a class="nav-link" href="documentation.html" >고객센터</a>
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
	<div class="hk-pg-wrapper">
	    <!-- Breadcrumb -->
	    <nav class="hk-breadcrumb" aria-label="breadcrumb">
	        <ol class="breadcrumb breadcrumb-light bg-transparent">
	            <li class="breadcrumb-item"><a href="#">Components</a></li>
	            <li class="breadcrumb-item active" aria-current="page">Modal</li>
	        </ol>
	    </nav>
	    <!-- /Breadcrumb -->
	
	    <!-- Container -->
	    <div class="container">
	        
	        <!-- Row -->
	        <div class="row">
                <div class="col-xl-12">
					<section class="hk-sec-wrapper">
						<h5 class="hk-sec-title">허위 매물 신고에 대한 안내</h5>
							<p class="mb-25">
					· 개인정보 수집 및 이용 목적(개인정보보호법 제15조)<br>
					▫ 부동산매물클린관리센터는 관계 법령에 따라 소관 업무를 수행하기 위하여 개인정보를 수집 및 이용 합니다.<br>
					  수집된 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.<br><br>
					
					· 수집하는 개인정보의 항목<br>
					▫ 부동산매물클린관리센터는 아래와 같은 최소한의 개인정보를 수집하고 있습니다.<br>
					- 필수항목 : 신고자의 성명, 성별, 휴대폰 번호, 생년월일 / 증빙자료 내 신고인의 기타 정보<br>
					▫ 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br>
					- IP Address, 방문 일시, 서비스 이용기록<br><br>
					
					· 개인정보 파일 보유 및 기간<br>
					▫ 부동산매물클린관리센터는 원칙적으로 개인정보 보존기관이 경과하거나 처리목적이 달성된 경우 개인정보를 파기합니다.<br>
					- 보존 기간 : 수집일로부터 1년<br>
					- 증빙자료 보존기간 : 수집일로부터 60일<br><br>
					
					· 동의 거부 권리 및 거부에 따른 불이익<br>
					▫ 신고 처리를 위하여 수집하는 최소한의 정보 이외에 개인정보 수집에 동의를 거부할 권리가 있으나 최소한의 개인정보 수집동의 거부 시에는 부동산매물클린관리센터 서비스를 제공 받을 수 없습니다.<br>
							<input type="checkbox" id="agreeAt" ><label>허위 매물 신고에 대한 안내에 동의합니다.</label><br>
							</p>
						<div class="row">
						    <div class="col-sm">
						    
						        <!-- Button trigger modal -->
						        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModalLong">
						            허위 매물 신고하기
						        </button>
						        
						        <br><br>
						        <form action="" method="post" enctype="multipart/form-data" target="form_if">
							        <input type="checkbox" id="reportCheck1"><label>실제 매물이 해당 내용과 불일치 (위치, 정보 등)</label><br> 
									<input type="checkbox" id="reportCheck2"><label>실제 소유자가 사이트의 내용과 불일치</label><br>
									<input type="checkbox" id="reportCheck3"><label>기타 (체크 후 아래에 기입해주세요)</label><br>
									<textarea id="reportDetail" rows="10" cols="50" placeholder="신고할 내용을 입력해주세요(200자)" maxlength="200" ></textarea><br>
									<input type="file" name="file1" multiple />
									<input type="file" name="file2" multiple />
									<button type="submit" class="btn btn-danger" onsubmit="">제출하기</button>
						        </form>
						        <iframe name="form_if" style="display:none"></iframe>
						        
								
			
					        <!-- Modal -->
					            <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
					                <div class="modal-dialog" role="document">
					                    <div class="modal-content">
					                        <div class="modal-header">
				                            	<h5 class="modal-title" id="exampleModalLongTitle">허위 매물 신고</h5>
				                            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                                	<span aria-hidden="true">&times;</span>
				                            	</button>
				                        	</div>
					                        <div class="modal-body">														
												<textarea id="reportContent" rows="10" cols="50"></textarea>
												
												<p>검증 기준이 아닌 사유를 들어 반복적으로 신고하실 경우, 신고자 패널티를 부과할 수 있습니다.<br>
												이러한 행위는 공인중개사법 제 33조2항 ('시세에 부당한 영향을 줄 목적으로 중개사업무를 방해해서는 안된다')을 <br>
												위배해 고소, 고발의 대상이 될 수 있으므로 주의부탁드립니다.</p>

												<input type="checkbox" id="reportCheck1"><label>실제 매물이 해당 내용과 불일치 (위치, 정보 등)</label><br> 
												<input type="checkbox" id="reportCheck2"><label>실제 소유자가 사이트의 내용과 불일치</label><br>
												<input type="checkbox" id="reportCheck3"><label>기타 (체크 후 아래에 기입해주세요)</label>	
																					
					                        </div>
					                        <div class="modal-footer">
					                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					                            <button type="button" class="btn btn-danger">신고하기</button>	
					                        </div>
					                    </div>
					                </div>
					            </div>
					        </div>
					    </div>
					</section>
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
                           <p>Pampered by<a href="https://bangbanggoggog.com/" class="text-dark" target="_blank">BANGBANGGOGGOG</a> © 2023</p>
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
    <script src="resources/vendors/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Slimscroll JavaScript -->
    <script src="resources/dist/js/jquery.slimscroll.js"></script>

    <!-- Fancy Dropdown JS -->
    <script src="resources/dist/js/dropdown-bootstrap-extended.js"></script>

    <!-- Owl JavaScript -->
    <script src="resourcesvendors/owl.carousel/dist/owl.carousel.min.js"></script>

    <!-- FeatherIcons JavaScript -->
    <script src="resourcesdist/js/feather.min.js"></script>

    <!-- Tinymce JavaScript -->
    <script src="resources/vendors/tinymce/tinymce.min.js"></script>

    <!-- Tinymce Wysuhtml5 Init JavaScript -->
    <script src="resources/dist/js/tinymce-data.js"></script>

    <!-- Toggles JavaScript -->
    <script src="resources/vendors/jquery-toggles/toggles.min.js"></script>
    <script src="resources/dist/js/toggle-data.js"></script>

    <!-- Init JavaScript -->
    <script src="resources/dist/js/init.js"></script>		
    
    <!-- modal-data JavaScript -->
    <script src="resources/dist/js/modal-data.js"></script>		
    
    <script type="text/javascript">
    const form = document.querySelector("form");
    const submitBtn = document.querySelector("submit");
    
    const reportCheck1 = document.querySelector("#reportCheck1");
    const reportCheck2 = document.querySelector("#reportCheck2");
    const reportCheck3 = document.querySelector("#reportCheck3");
    const reportDetail = document.querySelector("#reportDetail");
    const file1 = document.querySelector("#file1");
    const file2 = document.querySelector("#file2");

    submitBtn.addEventListener('click', function () {
    	form.submit();
    });
    
    
    
    
    </script>
    

</body>
</html>