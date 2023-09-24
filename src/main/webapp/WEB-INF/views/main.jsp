<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="UTF-8" />
     
    
    <jsp:include page="header.jsp"></jsp:include>
  
    <!-- Main Content -->
        <div class="hk-pg-wrapper">
            <!-- Breadcrumb -->
            <nav class="hk-breadcrumb" aria-label="breadcrumb">
               
            </nav>
            <!-- /Breadcrumb -->

            <!-- Container -->
            <div class="container">
                <!-- Title -->
                <div class="hk-pg-header pa-20">
                    <h4 class="hk-pg-title"><span class="pg-title-icon"><span class="feather-icon"><i data-feather="map-pin"></i></span></span>Current Location</h4>
                </div>
                <!-- /Title -->

                <!-- Row -->
                <div class="row">
                    <div class="col-xl-12">
                        <section class="hk-sec-wrapper">
                            <h5 class="hk-sec-title">Map</h5>
                            <div class="row">
                                <div class="col-sm">
                                    <div id="world_map_marker_1" style="height: 400px"></div>
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

    <!-- FeatherIcons JavaScript -->
    <script src="/resources/dist/js/feather.min.js"></script>

    <!-- Toggles JavaScript -->
    <script src="/resources/vendors/jquery-toggles/toggles.min.js"></script>
    <script src="/resources/dist/js/toggle-data.js"></script>
	
    
    <!-- Init JavaScript -->
    <script src="/resources/dist/js/init.js"></script>
	<script src="/resources/dist/js/dashboard-data.js"></script>
	
	
	
</body>

</html>