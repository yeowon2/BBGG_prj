<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
  <style>
  	.card span.btn-text {
  	color:#ffffff;
  	}
 
  	.card span {
  	color:#333333;
  	}
  </style>
	<jsp:include page="head.jsp"></jsp:include>
  </head>
  <body>
	<jsp:include page="navPartner.jsp"></jsp:include>
    <!-- Main Content -->
        <div class="hk-pg-wrapper">
             <!-- Container -->
             <!-- Container -->
            <div class="container mt-xl-20 mt-sm-30 mt-15">
				<!-- Title -->
                <div class="hk-pg-header">
                    <h4 class="hk-pg-title"><span class="pg-title-icon"><span class="feather-icon"><i data-feather="pie-chart"></i></span></span>Dashboard</h4>
                </div>
                <!-- /Title -->
				<!-- Row -->
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hk-row">
							<div class="col-lg-4 col-md-6">
								<div class="card card-sm">
									<div class="card-header card-header-action">
										<h6 style="font-weight:bold;">중개사무소 정보 </h6>
									</div>
									<div class="card-body">
										<div id="partner-card" class="header clearfix" >
											<div class="row mx-10">
							                	<span id="comp-name" ><c:out value="${partnerVO.compName}"/></span>
						                	</div>
											<div class="row mx-10">
							                	<span id="comp-address" ><c:out value="${partnerVO.compAddress}"/></span>
						                	</div>
											<div class="row mx-10">
							                	<span id="partner-name" ><c:out value="${partnerVO.partnerName}"/></span>
						                	</div>
											<div class="row mx-10">
							                	<span id="regist-num" ><c:out value="${partnerVO.registNum}"/></span>
						                	</div>
											<div class="row mx-10">
							                	<span id="phone"><c:out value="${partnerVO.phone}"/></span>
						                	</div>
					
					              		</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header card-header-action">
										<h6 style="font-weight:bold;">매물 등록 현황</h6>
									</div>
									<div class="card-body">
										<div class="hk-legend-wrap mb-20">
											<div class="hk-legend">
												<span class="d-10 bg-green-light-3 rounded-circle d-inline-block"></span><span style="font-weight:bold;">예약 완료</span>
											</div>
											<div class="hk-legend">
												<span class="d-10 bg-green rounded-circle d-inline-block"></span><span style="font-weight:bold;">잔여 매물</span>
											</div>
										</div>
										<div id="e_chart_2" class="echart" style="height:291px;"></div>
									</div>
								</div>
							</div>
							<div class="col-lg-8 col-md-6">
								<div class="hk-row">
									<div class="col-lg-4">
										<div class="card card-sm">
											<div class="card-body">
												<span class="d-block font-11 font-weight-500 text-dark text-uppercase mb-10">Budget</span>
												<div class="d-flex align-items-center justify-content-between position-relative">
													<div>
														<span class="d-block">
															<a href="/partner/${partnerVO.partnerNo}/itemList">
																<button class="btn btn-success btn-wth-icon icon-wthot-bg btn-rounded icon-right">
																<span class="btn-text">매물 목록</span><span class="icon-label"><i class="fa fa-angle-right"></i></span>
																</button>
															</a>
														</span>
													</div>
													
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="card card-sm">
											<div class="card-body">
												<span class="d-block font-11 font-weight-500 text-dark text-uppercase mb-10">Revenue</span>
												<div class="d-flex align-items-end justify-content-between">
													<div>
														<span class="d-block">
															<a href="/partner/${partnerVO.partnerNo}/itemAdd">
																<button class="btn btn-success btn-wth-icon icon-wthot-bg btn-rounded icon-right">
																<span class="btn-text">매물 등록</span><span class="icon-label"><i class="fa fa-angle-right"></i></span>
																</button>
															</a>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="card card-sm">
											<div class="card-body">
												<span class="d-block font-11 font-weight-500 text-dark text-uppercase mb-10">Genrated Invoices</span>
												<div class="d-flex align-items-end justify-content-between">
													<div>
														<span class="d-block">
															<button class="btn btn-success btn-wth-icon icon-wthot-bg btn-rounded icon-right">
															<span class="btn-text">문의 리스트</span><span class="icon-label"><i class="fa fa-angle-right"></i></span>
															</button>
														</span>
													</div>
													
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header card-header-action">
										<h6 style="font-weight:bold;">고객 문의 현황</h6>
										<div class="d-flex align-items-center card-action-wrap">
										</div>
									</div>
									<div class="card-body">
										<div class="hk-legend-wrap mb-20">
											<div class="hk-legend">
												<span class="d-10 bg-green-light-3 rounded-circle d-inline-block"></span><span style="font-weight:bold;">문의 접수</span>
											</div>
											<div class="hk-legend">
												<span class="d-10 bg-green-light-2 rounded-circle d-inline-block"></span><span style="font-weight:bold;">응답 완료</span>
											</div>
										</div>
										<!--<div id="flot_line_chart_moving" class="" style="height:234px;"></div>-->
										<div id="e_chart_5" class="echart" style="height:345px;"></div>
										<!-- <div class="row mt-20 text-center">
											<div class="col-4">
												<span class="d-block text-capitalize">Weekly Users</span>
												<span class="d-block text-dark font-weight-500 font-20">324,222</span>
											</div>
											<div class="col-4">
												<span class="d-block text-capitalize">Monthly Users</span>
												<span class="d-block text-dark font-weight-500 font-20">123,432</span>
											</div>
											<div class="col-4">
												<span class="d-block text-capitalize">Trend</span>
												<span class="d-block">
												<i class="zmdi zmdi-trending-up text-success font-24"></i>
											</span>
											</div> -->
										</div>
									</div>
								</div>
							</div>
						</div>
				
					</div>
                </div>
                <!-- /Row -->
            </div>
        </div>
        <!-- /Main Content -->
    

<jsp:include page="footer.jsp"></jsp:include>


<jsp:include page="js.jsp"></jsp:include>
      <!-- EChartJS JavaScript -->
    <script src="/resources/vendors/echarts/dist/echarts-en.min.js"></script>
    <script src="/resources/dist/js/barcharts-data.js"></script>
    <script src="/resources/dist/js/piecharts-data.js"></script>
    
    
  </body>
</html>

