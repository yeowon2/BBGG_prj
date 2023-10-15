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
  	
  	.button_guide {
    position: relative;
    box-sizing: border-box;
    display: block;
}
#notice_button {
    position: relative;
    box-sizing: border-box;
    display: block;
}
.button_guide .button_title {
    display: block;
    padding: 15px 10px;
    height: 85px;
    font-weight: 100;
    font-size: 14px;
    line-height: 25px;
    letter-spacing: -0.5px;
    color: #222;
}
.button_guide .button_title .button_point {
    font-size: 18px;
    font-weight: 700;
    box-sizing: border-box;
}
.button_guide .button_title .lni-market {
    position: absolute;
    top: 6px;
    right: 15px;
    background-position: -770px -362px;
    width: 88px;
    height: 65px;
    vertical-align: middle;
    display: inline-block;
    overflow: hidden;
    font-size: 1px;
    line-height: 100px;
    box-sizing: border-box;
    font-style: normal;
}


  </style>
	<jsp:include page="head.jsp"></jsp:include>
  </head>
  <body>
	<jsp:include page="navPartner.jsp"></jsp:include>
    <!-- Main Content -->
        <div class="hk-pg-wrapper" style="padding-top:10px;">
             <!-- Container -->
             <!-- Container -->
            <div class="container mt-xl-20 mt-sm-30 mt-15">
				<!-- Title -->
                <div class="hk-pg-header">
                    <h4 class="hk-pg-title font-weight-bold"><span class="pg-title-icon"><span class="feather-icon"><i data-feather="pie-chart"></i></span></span>대시보드</h4>
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
											<div class="agent-inner" style="padding:10px;">
							                  <div class="agent-title" style="margin-bottom:10px;">
							                    <div class="agent-photo">
							                    	<c:if test="${partnerVO.fileVO == null}">
									                      <img src="/resources/assets/img/productinfo/agent.jpg" alt="">
							                    	</c:if>
									                      <img src="/upload/${partnerVO.fileVO.savedName}" alt="">
							                    </div>
							                    <div class="agent-details">
							                      <h3 class="pb-1"><a href="#">${partnerVO.compName}</a></h3>
							                      <span><i class="lni-phone-handset"></i>(123) 123-456</span>
							                    </div>
							                  </div>
							                    <div class="row">
												  <div class="col-lg-12 info-row pb-1">
												    <span>대표명: ${partnerVO.partnerName}</span>
												  </div>
												   <div class="col-lg-12 info-row pb-1">
												    <span><i class="lni-map-marker"></i>주소: ${partnerVO.compAddress}</span>
												  </div>
												  <div class="col-lg-12 info-row pb-1">
												    <span>중개등록번호: ${partnerVO.registNum}</span>
												  </div>
												</div>
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
												<span class="d-10 rounded-circle d-inline-block" style="background-color:#9b6c61;"></span><span style="font-weight:bold;">예약 완료</span>
											</div>
											<div class="hk-legend">
												<span class="d-10 rounded-circle d-inline-block"  style="background-color:#c3a098;"></span><span style="font-weight:bold;">잔여 매물</span>
											</div>
										</div>
										<div id="itemChart" class="echart" style="height:291px;"></div>
									</div>
								</div>
							</div>
							<div class="col-lg-8 col-md-6">
								<div class="hk-row">
									<div class="col-lg-4">
										<div class="card card-sm">
											<div class="card-body">
												<div class="partner_button">
													<div class="button_guide">
											            <a href="/partner/${partnerVO.partnerNo}/itemAdd" class="button_title">
											                쉽고 빠른 등록을 위한 
											                <br>
											                <span class="button_point">매물 등록하기</span>
											                <i class="lni-market"></i>
											            </a>
											        </div>
										        </div>
											</div>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="card card-sm">
											<div class="card-body">
												<div class="partner_button">
													<div class="button_guide">
											            <a href="/partner/${partnerVO.partnerNo}/itemList" class="button_title">
											                간편한 매물 관리를 위한
											                <br>
											                <span class="button_point">매물 목록보기</span>
											                <i class="lni-market"></i>
											            </a>
											        </div>
										        </div>
											</div>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="card card-sm">
											<div class="card-body">
												<div class="partner_button">
													<div class="button_guide">
											            <a href="/note/receiveList/${partnerVO.partnerNo}" class="button_title">
											                효율적인 소통을 위한
											                <br>
											                <span class="button_point">받은 문의함 가기</span>
											                <i class="lni-market"></i>
											            </a>
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
												<span class="d-10 rounded-circle d-inline-block" style="background-color:#c3a098;"></span><span style="font-weight:bold;">문의 접수</span>
											</div>
											<div class="hk-legend">
												<span class="d-10 rounded-circle d-inline-block" style="background-color:#9b6c61;"></span><span style="font-weight:bold; ">응답 완료</span>
											</div>
										</div>
										<div id="e_chart_5" class="echart" style="height:345px;"></div>
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
	$(document).ready(function() {
	    // 페이지 로드 시 실행될 코드
	    echartsConfig();
	});
</script>
<jsp:include page="js.jsp"></jsp:include>
      <!-- EChartJS JavaScript -->
    <script src="/resources/vendors/echarts/dist/echarts-en.min.js"></script>
   <script src="/resources/dist/js/barcharts-data2.js"></script> 
    <script src="/resources/dist/js/piecharts-data2.js"></script>
    
  </body>
</html>

