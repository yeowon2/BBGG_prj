<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <style>
  	body, #content {
  		background-color: #F5F5F5;
  	}
  </style>
<jsp:include page="../head.jsp"></jsp:include>
</head>
<jsp:include page="../nav.jsp"></jsp:include>
<body>
	 <!-- Page Banner Start -->
    <div id="page-banner-area" class="page-banner">
      <div class="page-banner-title">
        <div class="text-center">
          <h2>회원가입</h2>
          <a href="#"><i class="lni-home"></i> 홈</a>
          <span class="crumbs-spacer"><i class="lni-chevron-right"></i></span>
          <span class="current">회원가입</span>
        </div>
      </div>
    </div>
    <!-- Page Banner End -->

    <!-- Content section Start --> 
    <section id="content" class="section-padding">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-5 col-md-6 col-xs-12">
            <div class="page-login-form box">
              <h3>
               	중개사무소 2차 인증
              </h3>
              <form class="login-form" method="post">
              	<div class="form-group">
                	<div class="row">
	                	<div class="input-icon">
		                	<span class="feather-icon"><i class="lni-search"></i></span>
		                </div>
                    	<input class="col-lg-8 ml-20" type="text" id="search" value="" placeholder="중개사무소명을 입력하세요" required="" >
                    	<button id="searchBtn" type="button" class="btn btn-common"><i class="lni-search"></i></button>
                	</div>
                </div>
                <div class="form-group">
                  <div class="input-icon">
                    <i class="lni-envelope"></i>
                    <input type="text" class="form-control" name="compName" placeholder="상호명">
                  </div>
                </div> 
                <div class="form-group">
                  <div class="input-icon">
                    <i class="lni-envelope"></i>
                    <input type="text" class="form-control" name="compAddress" placeholder="주소">
                  </div>
                </div> 
                <div class="form-group">
                  <div class="input-icon">
                    <i class="lni-envelope"></i>
                    <input type="text" class="form-control" name="registNum" placeholder="중개등록번호">
                  </div>
                </div> 
                <div class="form-group">
                  <div class="input-icon">
                    <i class="lni-envelope"></i>
                    <input type="text" class="form-control" name="compNum" placeholder="사업자등록번호">
                  </div>
                </div> 
                <button class="btn btn-common log-btn mt-3" type="submit">가입</button>
                <p class="text-center">이미 계정이 있으신가요?<a href="/login"> 로그인</a></p>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Content section End --> 
<script>
// 조회 버튼 클릭 시
$('#searchBtn').click(function() {
    // 중개사무소명 입력값 가져오기
    var medOfficeName = $('#search').val();

    var url = 'http://api.data.go.kr/openapi/tn_pubr_public_med_office_api'; /* URL */
    var queryParams = {
        'serviceKey': 'MxaUXwUlSXW2YGaS6AXQZDkmHv86ZlGeE1Xx1%2FXEdDTng2iZGmm1%2BpY%2BJyop800Rbsa95sl0Kq2KXtIuFc2wpQ%3D%3D', /* Service Key */
        'type': 'json', // JSON 형식으로 요청
        'MED_OFFICE_NM': medOfficeName,
    };

    $.ajax({
        url: url,
        type: 'GET',
        dataType: 'json', // JSON 형식으로 응답 받음
        data: queryParams,
        success: function(data) {
            // JSON 형식의 API 응답 데이터를 사용하는 코드를 작성합니다.
            console.log(data);
        },
        error: function(xhr, textStatus, errorThrown) {
            console.error('There was a problem with the request:', errorThrown);
        }
    });

});

// 가입 버튼 클릭 시 폼 제출
$('#joinBtn').click(function() {
    $('#searchForm').submit();
});


</script>    

<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>
