<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <jsp:include page="../header.jsp"></jsp:include>
  
  </head>
  <body>
    <div class="col-xl-7 pa-0">
      <div class="auth-form-wrap py-xl-0 py-50">
        <div class="auth-form w-xxl-55 w-xl-75 w-sm-90 w-100">
          <form method="post">
            <h1 class="display-5 mb-10">Sign up for free</h1>
            <p class="mb-30">
              Create your account and start your free trial today
            </p>
            <div class="form-row">
              <div class="col-md-6 form-group">
                <input class="form-control" type="text" name="userId" placeholder="E-Mail을 입력하세요"/>
              </div>
              <div class="col-md-6 form-group">
                <input class="form-control"  type="password" name="userPw" placeholder="비밀번호를 입력하세요" />
              </div>
              <div class="form-group">
                <div class="input-group">
                  <input class="form-control" placeholder="비밀번호를 확인하세요" type="password"/>
                  <div class="input-group-append">
                    <span class="input-group-text"><span class="feather-icon"><i data-feather="eye-off"></i></span></span>
                  </div>
                </div>
              </div>
              <div class="col-md-6 form-group">
                <input class="form-control" type="text" name="userName"  placeholder="이름를 입력하세요" />
              </div>
              <div class="col-md-6 form-group">
                <input class="form-control" type="text" name="phone" placeholder="전화번호를 입력하세요"/>
              </div>
              <div class="custom-control custom-checkbox mb-25">
                <input class="custom-control-input" id="same-address" type="checkbox" checked/>
                <label class="custom-control-label font-14" for="same-address">I have read and agree to the
                  <a href=""><u>term and conditions</u></a>
				  </label>
              </div>
              <div>
                <button class="btn btn-danger btn-block">등록</button>
                <div class="option-sep">or</div>
                <div class="form-row">
                  <div class="col-sm-6 mb-20">
                    <button class="btn btn-indigo btn-block btn-wth-icon">
                      <span class="icon-label"><i class="fa fa-facebook"></i> 
						</span><span class="btn-text">Login with facebook</span>
                    </button>
                  </div>
                  <div class="col-sm-6 mb-20">
                    <button class="btn btn-sky btn-block btn-wth-icon">
                      <span class="icon-label"><i class="fa fa-twitter"></i> 
					</span><span class="btn-text">Login with Twitter</span>
                    </button>
                  </div>
                </div>	
                <p class="text-center"> Already have an account? <a href="/login.do">Sign In</a></p>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
