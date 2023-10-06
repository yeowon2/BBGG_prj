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

<script>
//1. 서버에서 문의 count 데이터 가져오기 (예시)
$.ajax({
    type: "GET", // GET 또는 원하는 HTTP 메서드 사용
    url: "/api/getInquiryCount", // 실제 서버 엔드포인트로 대체해야 함
    success: function (data) {
        // 2. 가져온 데이터를 차트 데이터로 구성
        var inquiryData = data.inquiryData; // 서버에서 전달하는 실제 데이터 필드에 따라 수정해야 합니다.

        // 아래는 예시 데이터
        var xAxisData = []; // X 축 데이터
        var seriesData = []; // 시리즈 데이터

        for (var i = 0; i < inquiryData.length; i++) {
            xAxisData.push(inquiryData[i].date); // 날짜 데이터를 X 축 데이터에 추가
            seriesData.push(inquiryData[i].count); // 문의 count 데이터를 시리즈 데이터에 추가
        }

        // 3. 차트 업데이트
        if ($('#e_chart_5').length > 0) {
            var eChart_5 = echarts.init(document.getElementById('e_chart_5'));
            var option4 = {
                color: ['#90d7a3', '#3fb95f'],
                tooltip: {
                    show: true,
                    trigger: 'axis',
                    backgroundColor: '#fff',
                    borderRadius: 6,
                    padding: 6,
                    axisPointer: {
                        lineStyle: {
                            width: 0,
                        }
                    },
                    textStyle: {
                        color: '#324148',
                        fontFamily: '"Poppins", sans-serif',
                        fontSize: 12
                    }
                },
                grid: {
                    top: '3%',
                    left: '3%',
                    right: '3%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: [
                    {
                        type: 'category',
                        data: xAxisData, // X 축 데이터 설정
                        axisLine: {
                            show: false
                        },
                        axisTick: {
                            show: false
                        },
                        axisLabel: {
                            textStyle: {
                                color: '#5e7d8a'
                            }
                        }
                    }
                ],
                yAxis: [
                    {
                        type: 'value',
                        axisLine: {
                            show: false
                        },
                        axisTick: {
                            show: false
                        },
                        axisLabel: {
                            textStyle: {
                                color: '#5e7d8a'
                            }
                        },
                        splitLine: {
                            lineStyle: {
                                color: 'transparent',
                            }
                        }
                    }
                ],
                series: [
                    {
                        name: '문의 Count',
                        type: 'bar',
                        barMaxWidth: 30,
                        data: seriesData, // 시리즈 데이터 설정
                        itemStyle: {
                            normal: {
                                barBorderRadius: [6, 6, 0, 0],
                            }
                        },
                    }
                ]
            };

            eChart_5.setOption(option4);
            eChart_5.resize();
        }
    },
    error: function (error) {
        console.error("에러 발생:", error);
    }
});


</script>


<jsp:include page="js.jsp"></jsp:include>
      <!-- EChartJS JavaScript -->
    <script src="/resources/vendors/echarts/dist/echarts-en.min.js"></script>
    <script src="/resources/dist/js/barcharts-data2.js"></script>
    <script src="/resources/dist/js/piecharts-data.js"></script>
    
    
  </body>
</html>

