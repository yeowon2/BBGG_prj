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
          <span class="current">중개사무소 정보 수정</span>
        </div>
      </div>
    </div>
    <!-- Page Banner End -->

    <!-- Ueser Section Start -->
    <section class="user-page section-padding">
	    <div class="container">
	      <div class="row">
          
          <div class="col-lg-12 col-md-7 col-xs-12">
            <div class="my-address">
              <h3 class="heading">중개사무소 정보</h3>
              <form method="post" action="/partner/update/${partnerVO.partnerNo}" enctype="multipart/form-data">
                <div class="row">
                  <div class="col-lg-4 col-md-5 col-xs-12 mb-10">
		             <div class="widget mt3">
		                    <div class="agent-photo col-lg-12">
		                    	<label for="fileInput">대표이미지</label>
			                      <img id="imagePreview" src="#" alt="미리보기 이미지" style="max-width: 100%; height: auto; display: none;">	
			                       <input type="file" id="fileInput" name="file" >
			                      	<button id="uploadBtn" class="btn btn-outline-info btn-sm">업로드</button>
		                      </div>
		              </div>
		          </div>
                  <div class="col-lg-12 mt-10">
                    <div class="form-group">
                      <label>상호명</label>
                      <input type="text" name="compName" class="form-control" value="${partnerVO.compName}">
                    </div>
                  </div>
                  <div class="col-lg-12">
                    <div class="form-group">
                      <label>주소</label>
                      <input type="text" name="compAddress" class="form-control" value="${partnerVO.compAddress}">
                    </div>
                  </div>
                  <div class="col-lg-12 ">
                    <div class="form-group">
                      <label>중개등록번호</label>
                       <input type="text" name="registNum" class="form-control" value="${partnerVO.registNum}">
                    </div>
                  </div>
                  <div class="col-lg-12 ">
                    <div class="form-group">
                      <label>사업자등록번호</label>
                      <input type="text" name="compNum" class="form-control" value="${partnerVO.compNum}">
                    </div>
                  </div>
                  <div class="col-lg-12 ">
                    <div class="form-group">
                      <label>대표번호</label>
                      <input type="text" name="phone" class="form-control" value="${partnerVO.phone}">
                    </div>
                  </div>
                  <div class="col-lg-12">
                    <div class="form-group">
                      <label>소개글</label>
                      <textarea class="form-control" rows="5" name="memo">${partnerVO.memo}</textarea>
                    </div>
                  </div>
                  <div class="col-lg-12">
                    <div class="send-btn float-right">
                      <button type="submit" class="btn btn-success">수정하기</button>
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
<!-- 이미지 미리보기 스크립트를 JSTL 코드 밖으로 이동 -->
/*   window.onload = function () {
    document.getElementById("uploadBtn").addEventListener("click", function () {
      document.getElementById("fileInput").click();
    });

    document.getElementById("fileInput").addEventListener("change", function () {
      
    	var selectedFile = this.files[0];

      // 선택한 이미지 파일의 미리보기 표시
      var reader = new FileReader();
      reader.onload = function (e) {
        var imagePreview = document.getElementById("imagePreview");
        imagePreview.src = e.target.result;
        imagePreview.style.display = "block";
        var defaultImage = document.getElementById("defaultImage");
        defaultImage.style.display = "none";
      };
      reader.readAsDataURL(selectedFile);
    });
  }; */
</script>
<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>
