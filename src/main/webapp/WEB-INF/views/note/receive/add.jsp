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
                            <h5 class="hk-sec-title">쪽지 보내기</h5>
                            <div class="row">
                                <div class="col-sm">
                                    <form method="post" action="/note/add">
                                        <div class="form-group">
                                            <label for="noteSubject">제목</label>
                                            <input class="form-control" name="noteSubject" placeholder="제목을 입력하세요" type="text">
                                        </div>

                                        <div class="form-group">
                                            <label for="noteText1">Text1</label>
                                            <input class="form-control" name="noteText1" placeholder="Text1" type="text">
                                        </div>

                                        <div class="form-group">
                                            <label for="noteText2">Text2</label>
                                            <input class="form-control" name="noteText2" placeholder="Text2" type="text">
                                        </div>
                                        <div class="form-group">
                                            <label for="noteText3">Text3</label>
                                            <input class="form-control" name="noteText3" placeholder="Text3" type="text">
                                        </div>
                                        <div class="form-group">
                                            <label for="noteContent">내용</label>
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