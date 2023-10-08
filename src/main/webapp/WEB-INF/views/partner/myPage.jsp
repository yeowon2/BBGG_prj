<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
  <style>
  .agent-photo img {
    max-width: 100%; /* 이미지의 최대 너비를 100%로 설정하여 부모 요소에 맞춤 */
    height: auto; /* 높이를 자동으로 조절하여 가로 세로 비율 유지 */
}
  .agent-inner {
    overflow: hidden; /* 내부 컨텐츠가 부모 요소를 벗어나지 않도록 함 */
}
  
  </style>
	<jsp:include page="../head.jsp"></jsp:include>
  </head>
  <body>
	<jsp:include page="../navPartner.jsp"></jsp:include>
	 <!-- Page Banner Start -->
    <div id="page-banner-area" class="page-banner">
      <div class="page-banner-title">
        <div class="text-center">
          <h2>My Profile</h2>
          <a href="#"><i class="lni-home"></i> Home</a>
          <span class="crumbs-spacer"><i class="lni-chevron-right"></i></span>
          <span class="current">내 정보 수정</span>
        </div>
      </div>
    </div>
    <!-- Page Banner End -->

    <!-- Ueser Section Start -->
    <section class="user-page section-padding">
	    <div class="container">
	      <div class="row">
          <div class="col-lg-4 col-md-5 col-xs-12">
             <div class="widget mt3">
                <div class="agent-inner row">
                    <div class="agent-photo col-lg-12">
                      <a href="#"><img src="/resources/assets/img/productinfo/agent.jpg" alt=""></a>
                    </div>
                    
                </div>
              </div>
          </div>
          <div class="col-lg-8 col-md-7 col-xs-12">
            <div class="my-address">
              <h3 class="heading">My Account</h3>
              <form>
                <div class="row">
                  <div class="col-lg-12 ">
                    <div class="form-group">
                      <label>Your Name</label>
                      <input type="text" name="name" class="form-control" placeholder="John Deo">
                    </div>
                  </div>
                  <div class="col-lg-12">
                    <div class="form-group">
                      <label>Your Title</label>
                      <input type="text" name="title" class="form-control" placeholder="Your Title">
                    </div>
                  </div>
                  <div class="col-lg-12 ">
                    <div class="form-group">
                      <label>Phone</label>
                       <input type="text" name="phone" class="form-control" placeholder="Phone">
                    </div>
                  </div>
                  <div class="col-lg-12 ">
                    <div class="form-group">
                      <label>Email</label>
                      <input type="email" name="email" class="form-control" placeholder="Email">
                    </div>
                  </div>
                  <div class="col-lg-12">
                    <div class="form-group">
                      <label>About Me</label>
                      <textarea class="form-control" rows="5" name="message">Maecenas quis consequat libero, a feugiat eros. Nunc ut lacinia tortor morbi ultricies laoreet ullamcorper phasellus semper</textarea>
                    </div>
                  </div>
                  <div class="col-lg-12">
                    <div class="send-btn">
                      <button type="submit" class="btn btn-common">Send Changes</button>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
	    </div>
	  </section>
    <!-- Ueser Section End -->
<jsp:include page="../footer.jsp"></jsp:include>
<script>
</script>
<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>
