<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Scrooge I Invoice</title>

    <!-- Toggles CSS -->
    <link href="/resources/vendors/jquery-toggles/css/toggles.css" rel="stylesheet" type="text/css">
    <link href="/resources/vendors/jquery-toggles/css/themes/toggles-light.css" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<!-- HK Wrapper -->
	<div class="hk-wrapper hk-alt-nav">

        <!-- Main Content -->
        <div class="hk-pg-wrapper">
            <!-- Breadcrumb -->
            <nav class="hk-breadcrumb" aria-label="breadcrumb">
                <ol class="breadcrumb breadcrumb-light bg-transparent">
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Invoice</li>
                </ol>
            </nav>
            <!-- /Breadcrumb -->

            <!-- Container -->
            <div class="container">
            
 <!-- Row -->
                <div class="row">
                    <div class="col-xl-12">
                        <section class="hk-sec-wrapper">
                            <h3 class="hk-sec-title d-flex justify-content-center pa-50">쪽지 보내기</h3>
                            <div class="row">
                                <div class="col-sm">
                                    <form method="post" >
                                        
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">제목</span>
                                            </div>
                                            <input type="text" name="noteSubject" class="form-control" placeholder="제목을 입력하세요">
                                        </div>
                                        <section class="hk-sec-wrapper">
                                            <h5 class="hk-sec-title">문의 내용을 선택하세요</h5>
                                            <div class="row">
                                                <div class="col-sm">
                                                    <div class="row">
                                                        <div class="col-md-6 mt-15">
                                                            <div class="custom-control custom-checkbox checkbox-teal ">
                                                                <input type="checkbox" class="custom-control-input" id="customCheck1" >
                                                                <label class="custom-control-label" for="customCheck1">
                                                                    	<span>현재 선택된 매물에 대해 상담받고 싶습니다.</span>
                                                                    	<span>매물번호: </span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 mt-15">
                                                            <div class="custom-control custom-checkbox checkbox-teal ">
                                                                <input type="checkbox" class="custom-control-input" id="customCheck2" >
                                                                <label class="custom-control-label" for="customCheck2">
                                                                	<span>해당 매물 바로 볼 수 있는지 문의드립니다.</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 mt-15">
                                                            <div class="custom-control custom-checkbox checkbox-teal ">
                                                                <input type="checkbox" class="custom-control-input" id="customCheck3" >
                                                                <label class="custom-control-label" for="customCheck3">
                                                                	<span>해당 매물 거래 시, 중개수수료가 어떻게 될까요?</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 mt-15">
                                                            <div class="custom-control custom-checkbox checkbox-teal ">
                                                                <input type="checkbox" class="custom-control-input" id="customCheck4" >
                                                                <label class="custom-control-label" for="customCheck4">
                                                                	<span>보증금 또는 월세 조정이 가능한가요?</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 mt-15">
                                                            <div class="custom-control custom-checkbox checkbox-teal ">
                                                                <input type="checkbox" class="custom-control-input" id="customCheck5" >
                                                                <label class="custom-control-label" for="customCheck5">
                                                                	<span>방 내부 컨디션이 궁금합니다.</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 mt-15">
                                                            <div class="custom-control custom-checkbox checkbox-teal ">
                                                                <input type="checkbox" class="custom-control-input" id="customCheck6" >
                                                                <label class="custom-control-label" for="customCheck6">
                                                                	<span>계약하고 싶은데 입주일 조정이 가능한가요?</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                        <div class="form-group">
                                            <h5 class="mb-10" >내용</h5>
                                            <textarea class="form-control" rows="15" name="noteContent" ></textarea>
                                        </div>

                                        
                                        <hr>
                                        <button class="btn btn-danger" type="submit">전송</button>
                                    </form>
                                </div>
                            </div>
                        </section>
                        </div>
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

    <!-- Toggles JavaScript -->
    <script src="/resources/vendors/jquery-toggles/toggles.min.js"></script>
    <script src="/resources/dist/js/toggle-data.js"></script>

    <!-- FeatherIcons JavaScript -->
    <script src="/resources/dist/js/feather.min.js"></script>

    <!-- Init JavaScript -->
    <script src="/resources/dist/js/init.js"></script>

</body>

</html>