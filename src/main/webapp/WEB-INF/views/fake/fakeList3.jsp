<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매물 신고 목록</title>
	<jsp:include page="../head.jsp"></jsp:include>
	
    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    
	<!-- Bootstrap table CSS -->
	<link href="/resources/vendors/bootstrap-table/dist/bootstrap-table.min.css" rel="stylesheet" type="text/css" />
	
	<!-- vector map CSS -->
    <link href="/resources/vendors/vectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" type="text/css" />
	
	<!-- Morris Charts CSS -->
    <link href="vendors/morris.js/morris.css" rel="stylesheet" type="text/css" />
	
</head>
<body>
	<jsp:include page="../navAdmin.jsp"></jsp:include>
	
	<!-- HK Wrapper -->
	<div class="hk-wrapper hk-alt-nav">
	
        <!-- Main Content -->
        <div class="hk-pg-wrapper">
			<!-- Container -->
            <div class="container mt-xl-50 mt-sm-30 mt-15">
                <!-- Title -->
				<div class="hk-pg-header align-items-top">
					<div>
						<h2 class="hk-pg-title font-weight-600 mb-10">Data Analytics</h2>
						<p>Questions about onboarding lead data? <a href="#">Learn more.</a></p>
					</div>
					<div class="d-flex">
						<button class="btn btn-sm btn-outline-light btn-wth-icon icon-wthot-bg mr-15 mb-15"><span class="icon-label"><i class="fa fa-envelope-o"></i> </span><span class="btn-text">Email </span></button>
						<button class="btn btn-sm btn-outline-light btn-wth-icon icon-wthot-bg mr-15 mb-15"><span class="icon-label"><i class="fa fa-print"></i> </span><span class="btn-text">Print </span></button>
						<button class="btn btn-sm btn-danger btn-wth-icon icon-wthot-bg mb-15"><span class="icon-label"><i class="fa fa-download"></i> </span><span class="btn-text">Download </span></button>
					</div>
				</div>
				<!-- /Title -->
				<!-- Row -->
                <div class="row">
                    <div class="col-xl-12">
						<div class="hk-row">
							<div class="col-sm-12">
								<div class="card-group hk-dash-type-2">
									<div class="card card-sm">
										<div class="card-body">
											<div class="d-flex justify-content-between mb-5">
												<div>
													<span class="d-block font-15 text-dark font-weight-500">Visits</span>
												</div>
												<div>
													<span class="text-danger font-14 font-weight-500">-15%</span>
												</div>
											</div>
											<div>
												<span class="d-block display-4 text-dark mb-5">18M</span>
												<small class="d-block">12,458 Target Users</small>
											</div>
										</div>
									</div>
								
									<div class="card card-sm">
										<div class="card-body">
											<div class="d-flex justify-content-between mb-5">
												<div>
													<span class="d-block font-15 text-dark font-weight-500">Media Leads</span>
												</div>
												<div>
													<span class="text-danger font-14 font-weight-500">-15.5%</span>
												</div>
											</div>
											<div>
												<span class="d-block display-4 text-dark mb-5"><span class="counter-anim">468,856</span></span>
												<small class="d-block">72,458 Targeted</small>
											</div>
										</div>
									</div>
								
									<div class="card card-sm">
										<div class="card-body">
											<div class="d-flex justify-content-between mb-5">
												<div>
													<span class="d-block font-15 text-dark font-weight-500">New Users</span>
												</div>
												<div>
													<span class="text-warning font-14 font-weight-500">-2.8%</span>
												</div>
											</div>
											<div>
												<span class="d-block display-4 text-dark mb-5">73</span>
												<small class="d-block">100 Targeted</small>
											</div>
										</div>
									</div>
								
									<div class="card card-sm">
										<div class="card-body">
											<div class="d-flex justify-content-between mb-5">
												<div>
													<span class="d-block font-15 text-dark font-weight-500">Win/Loss Ratio</span>
												</div>
												<div>
													<span class="text-danger font-14 font-weight-500">-75%</span>
												</div>
											</div>
											<div>
												<span class="d-block display-4 text-dark mb-5">48:65</span>
												<small class="d-block">42:32 Targeted</small>
											</div>
										</div>
									</div>
								</div>
							</div>	
						</div>
					
						<div class="hk-row">
							<div class="col-lg-8">
								<div class="card card-refresh">
									<div class="refresh-container">
										<div class="loader-pendulums"></div>
									</div>
									<div class="card-header card-header-action">
										<h6>sales analytics</h6>
										<div class="d-flex align-items-center card-action-wrap">
											<a href="#" class="inline-block refresh mr-15">
												<i class="ion ion-md-radio-button-off"></i>
											</a>
											<div class="inline-block dropdown">
												<a class="dropdown-toggle no-caret" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="ion ion-md-more"></i></a>
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
										<div class="mb-20">
											<div class="d-inline-block mb-15 mr-60">
												<span class="d-block text-capitalize">Traffic</span>
												<span class="d-block font-weight-600 font-18">124,222</span>
												<span class="d-block text-success mt-5">
													<i class="zmdi zmdi-caret-up pr-5 font-20"></i><span class="weight-500">+15%</span>
												</span>
											</div>
											<div class="d-inline-block mb-15 mr-60">
												<span class="d-block text-capitalize">Order</span>
												<span class="d-block font-weight-600 font-18">24,222</span>
												<span class="d-block text-danger mt-5">
													<i class="zmdi zmdi-caret-down pr-5 font-20"></i><span class="weight-500">-11%</span>
												</span>
											</div>
											<div class="d-inline-block">
												<span class="d-block text-capitalize">Revenue</span>
												<span class="d-block font-weight-600 font-18">$124,222</span>
												<span class="d-block text-danger mt-5">
													<i class="zmdi zmdi-caret-up pr-5 font-20"></i><span class="weight-500">-13%</span>
												</span>
											</div>
										</div>
										<div id="chart_1" class="morris-chart" style="height:345px;"></div>
									</div>
								</div>
								<div class="card">
									<div class="card-header card-header-action">
										<h6>New Visitors</h6>
										<div class="d-flex align-items-center card-action-wrap">
											<a href="#" class="inline-block refresh mr-15">
												<i class="ion ion-md-arrow-down"></i>
											</a>
											<a href="#" class="inline-block full-screen">
												<i class="ion ion-md-expand"></i>
											</a>
										</div>
									</div>
									<div class="card-body pa-0">
										<div class="table-wrap">
											<div class="table-responsive">
												<table class="table table-striped table-sm table-hover mb-0">
													<thead class="">
														<tr>
															<th class="w-25">Country</th>
															<th>Sessions</th>
															<th>Goals</th>
															<th>Goals Rate</th>
															<th>Bounce Rate</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>Canada</td>
															<td>55,555</td>
															<td>210</td>
															<td>2.46%</td>
															<td>0.26%</td>
														</tr>
														<tr>
															<td>India</td>
															<td>24,152</td>
															<td>135</td>
															<td>0.58%</td>
															<td>0.43%</td>
														</tr>
														<tr>
															<td>UK</td>
															<td>15,640</td>
															<td>324</td>
															<td>5.15%</td>
															<td>2.47%</td>
														</tr>
														<tr>
															<td>UK</td>
															<td>15,640</td>
															<td>324</td>
															<td>5.15%</td>
															<td>2.47%</td>
														</tr>
														<tr>
															<td>Botswana</td>
															<td>12,148</td>
															<td>854</td>
															<td>4.19%</td>
															<td>0.1%</td>
														</tr>
														<tr>
															<td>UAE</td>
															<td>11,258</td>
															<td>453</td>
															<td>8.15%</td>
															<td>0.14%</td>
														</tr>
														<tr>
															<td>Australia</td>
															<td>10,786</td>
															<td>376</td>
															<td>5.48%</td>
															<td>0.45%</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
									<div class="card card-sm border-bottom-0">
									<div class="card-header card-header-action">
										<h6>Device Stats</h6>
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
									<div class="card-body pa-0">
										<div class="pa-15">
											<div class="row">
												<div class="col-4">
													<span class="d-block text-capitalize">desktop</span>
													<span class="d-block text-dark font-weight-500 font-20">15%</span>
													<span class="d-block font-weight-600 font-13">201,434</span>
												</div>
												<div class="col-4">
													<span class="d-block text-capitalize">mobile</span>
													<span class="d-block text-dark font-weight-500 font-20">34.5%</span>
													<span class="d-block font-weight-600 font-13">101,434</span>
												</div>
												<div class="col-4">
													<span class="d-block text-capitalize">tablet</span>
													<span class="d-block text-dark font-weight-500 font-20">60.8%</span>
													<span class="d-block font-weight-600 font-13">101,434</span>
												</div>
											</div>
										</div>
										<div class="progress-wrap">
											<div class="progress rounded-bottom-left rounded-bottom-right">
												<div class="progress-bar bg-red w-15" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
												<div class="progress-bar bg-red-light-2 w-35" role="progressbar" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
												<div class="progress-bar bg-red-light-4 w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header card-header-action">
										<h6>Users by Gendar & Age</h6>
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
										<div id="e_chart_4" class="echart" style="height:250px;"></div>
										<div class="hk-legend-wrap mt-20">
											<div class="hk-legend">
												<span class="d-10 bg-red rounded-circle d-inline-block"></span><span>18-24</span>
											</div>
											<div class="hk-legend">
												<span class="d-10 bg-red-light-1 rounded-circle d-inline-block"></span><span>25-34</span>
											</div>
											<div class="hk-legend">
												<span class="d-10 bg-red-light-4 rounded-circle d-inline-block"></span><span>35-44</span>
											</div>
										</div>
									</div>
								</div>
								
								<div class="card">
									<div class="card-header card-header-action">
										<h6>Twitter Metrics</h6>
										<div class="d-flex align-items-center card-action-wrap">
											<a href="#" class="inline-block refresh mr-15">
												<i class="ion ion-md-arrow-down"></i>
											</a>
											<a href="#" class="inline-block full-screen mr-15">
												<i class="ion ion-md-expand"></i>
											</a>
											<a class="inline-block card-close" href="#" data-effect="fadeOut">
												<i class="ion ion-md-close"></i>
											</a>
										</div>
									</div>
									<div class="card-body pa-0">
										<div class="table-wrap">
											<div class="table-responsive">
												<table class="table table-sm table-hover mb-0">
													<thead>
														<tr>
															<th>Metrics</th>
															<th class="w-40">Period</th>
															<th class="w-25">Past</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>Clicks</td>
															<td>1,234</td>
															<td><div id="sparkline_1"></div></td>
														</tr>
														<tr>
															<td>Visits</td>
															<td>3,458</td>
															<td><div id="sparkline_2"></div></td>
														</tr>
														<tr>
															<td>Views</td>
															<td>53,637</td>
															<td><div id="sparkline_3"></div></td>
														</tr>
														<tr>
															<td>Returns</td>
															<td>20,596</td>
															<td><div id="sparkline_4"></div></td>
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
	
	<!-- Morris Charts JavaScript -->
    <script src="/resources/vendors/raphael/raphael.min.js"></script>
    <script src="/resources/vendors/morris.js/morris.min.js"></script>
	
	<!-- EChartJS JavaScript -->
    <script src="/resources/vendors/echarts/dist/echarts-en.min.js"></script>
    
	<!-- Sparkline JavaScript -->
    <script src="/resources/vendors/jquery.sparkline/dist/jquery.sparkline.min.js"></script>
	
	<!-- Owl JavaScript -->
    <script src="/resources/vendors/owl.carousel/dist/owl.carousel.min.js"></script>
	
	<!-- Init JavaScript -->
    <script src="/resources/dist/js/init.js"></script>
	<script src="/resources/dist/js/ecStat.min.js"></script>
	<script src="/resources/dist/js/dashboard5-data.js"></script>    
    

	<%-- <jsp:include page="../footer.jsp"> --%>
</body>
</html>