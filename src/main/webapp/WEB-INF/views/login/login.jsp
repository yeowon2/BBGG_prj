<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
	<jsp:include page="../head.jsp"></jsp:include>
  </head>
  <body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<!-- HK Wrapper -->
	<div class="hk-wrapper">

        <!-- Page Banner Start -->
    <div id="page-banner-area" class="page-banner">
      <div class="page-banner-title">
        <div class="text-center">
          <h2>Log</h2>
          <a href="#"><i class="lni-home"></i> Home</a>
          <span class="crumbs-spacer"><i class="lni-chevron-right"></i></span>
          <span class="current">Log</span>
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
                로그인
              </h3>
              <form class="login-form" method="post" action="/actionLogin">
                <div class="form-group">
                  <div class="input-icon">
                    <i class="lni-user"></i>
                    <input type="text" id="sender-email" class="form-control" name="userId" placeholder="이메일 아이디를 입력하세요">
                  </div>
                </div> 
                <div class="form-group">
                  <div class="input-icon">
                    <i class="lni-lock"></i>
                    <input type="password" class="form-control" name="userPw" placeholder="비밀번호를 입력하세요">
                  </div>
                </div> 
                <div class="form-group">
                  <input type="checkbox" name="rememberme" value="true"> 아이디 저장
                </div> 
                <button class="btn btn-common log-btn" type="submit">로그인</button>
              </form>
              <ul class="form-links">
                <li class="text-center"><a href="/user/add">회원 가입 하시겠습니까?</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Content section End --> 
    </div>
	<!-- /HK Wrapper -->
<%-- <jsp:include page="../footer.jsp"></jsp:include> --%>

<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>

