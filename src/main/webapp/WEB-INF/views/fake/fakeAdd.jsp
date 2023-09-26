<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../head.jsp"></jsp:include>
<title>허위 매물 신고</title>

<style>
#modal {
	display: none;
}
</style>
<!-- modal-window CSS -->
<link rel="stylesheet" href="/resources/dist/css/modal-window.css" type="text/css">
<!-- Toggles CSS -->
<link href="vendors/jquery-toggles/css/toggles.css" rel="stylesheet" type="text/css">
<link href="vendors/jquery-toggles/css/themes/toggles-light.css" rel="stylesheet" type="text/css">
<!-- Custom CSS -->
<link href="/resources/dist/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<!-- HK Wrapper -->
	<div class="hk-wrapper hk-alt-nav">

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
					▫ 신고 처리를 위하여 수집하는 최소한의 정보 이외에 개인정보 수집에 동의를 거부할 권리가 있으나 <br>
					  최소한의 개인정보 수집동의 거부 시에는 부동산매물클린관리센터 서비스를 제공 받을 수 없습니다.<br>
							<input type="checkbox" id="agreeAt" name="agreeAt"><label>허위 매물 신고에 대한 안내에 동의합니다.</label><br>
							</p>
						<div class="row">
						    <div class="col-sm">
						    
						        <!-- Button trigger modal -->
						        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal" style="float: right;">
						            허위 매물 신고하기
						        </button>
		
			
					        <!-- Modal -->
					            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalTitle" aria-hidden="true">
					                <div class="modal-dialog" role="document">
					                    <div class="modal-content">
					                        <div class="modal-header">
				                            	<h5 class="modal-title" id="exampleModalTitle">허위 매물 신고</h5>
				                            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                                	<span aria-hidden="true">&times;</span>
				                            	</button>
				                        	</div>
					                        <div class="modal-body">														
												
												<p>검증 기준이 아닌 사유를 들어 반복적으로 신고하실 경우, <br>
												신고자 패널티를 부과할 수 있습니다.<br>
												이러한 행위는 공인중개사법 제 33조2항 <br>
												('시세에 부당한 영향을 줄 목적으로 중개사업무를 방해해서는 안된다')을 <br>
												위배해 고소, 고발의 대상이 될 수 있으므로 주의부탁드립니다.</p>
												<br>
												<%-- <c:set var="contextPath" value="${pageContext.request.contextPath}" />
												 action="<%=request.getContextPath()%>/${roomNo}" --%>
												
												<form method="post" enctype="multipart/form-data">
													<input type="hidden" id="roomNo" value="${result.roomNo}">
													<input type="checkbox" id="fakeCheck1" name="fakeCheck"><label>실제 매물이 해당 내용과 불일치 (위치, 정보 등)</label><br> 
													<input type="checkbox" id="fakeCheck2" name="fakeCheck"><label>실제 소유자가 사이트의 내용과 불일치</label><br>
													<input type="checkbox" id="fakeCheck3" name="fakeCheck"><label>기타 (체크 후 아래에 기입해주세요)</label><br>
													<textarea id="fakeDetail" name="fakeDetail" rows="10" cols="60" placeholder="신고할 내용을 입력해주세요(200자)" maxlength="200" ></textarea><br>
													<input type="file" name="file" multiple>
													<button type="submit" class="btn btn-teal" id="submitBtn" style="float: right;">신고하기</button>	
										        </form>
																					
					                        </div>
					                        <div class="modal-footer">
					                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> 
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
    <script src="resources/dist/js/feather.min.js"></script>

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
    
    <script>
    const submitBtn = document.querySelector("#submitBtn");
    if(document.getElementById("fakeCheck").checked) {
    	document.getElementById("")
    }
    

    submitBtn.addEventListener('click', function () {
    	form.submit();
    }); 
    </script>
    <script>
    	
    </script>
    

</body>
</html>