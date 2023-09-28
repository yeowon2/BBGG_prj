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
               	회원 가입
              </h3>
              <form class="login-form" method="post">
                <div class="form-group">
                  <div class="input-icon">
                    <i class="lni-user"></i>
                    <input type="text" class="form-control" name="userId" placeholder="이메일">
                  </div>
                </div> 
                <div class="form-group">
                  <div class="input-icon">
                    <i class="lni-lock"></i>
                    <input type="password" class="form-control" name="userPw" placeholder="비밀번호">
                  </div>
                </div>  
                <div class="form-group">
                  <div class="input-icon">
                    <i class="lni-envelope"></i>
                    <input type="text" class="form-control" name="userName" placeholder="이름">
                  </div>
                </div> 
                <div class="form-group">
                  <div class="input-icon">
                    <i class="lni-envelope"></i>
                    <input type="text" class="form-control" name="phone" placeholder="폰 번호">
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
<%-- <jsp:include page="../footer.jsp"></jsp:include> --%>
<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>
