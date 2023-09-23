<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="UTF-8" />
    <jsp:include page="../header.jsp"></jsp:include>
    <!-- Custom CSS -->
<link rel="stylesheet" href="/resources/dist/css/style.css"/>
</head>
<body>
    <!-- HK Wrapper -->
    <div class="hk-wrapper">

        <!-- Main Content -->
        <div class="hk-pg-wrapper hk-auth-wrapper">
            <header class="d-flex justify-content-between align-items-center">
                <a class="d-flex font-24 font-weight-500 auth-brand" href="#">
                    IRE-InRealEstate
                </a>
                <div class="btn-group btn-group-sm">
                    <a href="#" class="btn btn-outline-secondary">Help</a>
                    <a href="#" class="btn btn-outline-secondary">About Us</a>
                </div>
            </header>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-7 pa-0">
                        <div class="auth-form-wrap py-xl-0 py-50">
                            <div class="auth-form w-xxl-55 w-xl-75 w-sm-90 w-100">
                                <form method="post">
                                    <h1 class="display-5 mb-10">회원 가입</h1>
                                    <p class="mb-30">Create your account and start your free trial today</p>
                                        <div class="form-group">
                                           <input class="form-control" type="text" name="userId" placeholder="ID(e-Mail)를 입력하세요"/>
                                        </div>
                                    <div class="form-group">
                                        <input class="form-control"  type="password" name="userPw" placeholder="비밀번호를 입력하세요" />
                                    </div>
                                
                                    <div class="form-group">
                                        <input class="form-control" type="text" name="userName"  placeholder="이름를 입력하세요" />
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" type="text" name="phone" placeholder="전화번호를 입력하세요"/>
                                    </div>
                                    
                                    <div class="custom-control custom-checkbox checkbox-success mb-25">
                                        <input class="custom-control-input" id="same-address" type="checkbox" checked>
                                        <label class="custom-control-label font-14" for="same-address">
                                            I have read and agree to the <a href="#"><u>term and conditions</u></a>
                                        </label>
                                    </div>
                                    <button class="btn btn-success btn-block" type="submit">Register</button>
                                    <div class="option-sep">or</div>
                                    <div class="form-row">
                                        <div class="col-sm-6 mb-20">
                                            <button class="btn btn-indigo btn-block btn-wth-icon">
                                                <span class="icon-label">
                                                    <i class="fa fa-facebook"></i>
                                                </span>
                                                <span class="btn-text">Login with facebook</span>
                                            </button>
                                        </div>
                                        <div class="col-sm-6 mb-20">
                                            <button class="btn btn-sky btn-block btn-wth-icon">
                                                <span class="icon-label">
                                                    <i class="fa fa-twitter"></i>
                                                </span>
                                                <span class="btn-text">Login with Twitter</span>
                                            </button>
                                        </div>
                                    </div>
                                    <p class="text-center">Already have an account? <a href="login.html">Sign In</a></p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
    
    <!-- Init JavaScript -->
    <script src="/resources/dist/js/init.js"></script>
</body>
</html>
