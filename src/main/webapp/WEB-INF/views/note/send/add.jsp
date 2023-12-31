<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
	<jsp:include page="../../head.jsp"></jsp:include>
  </head>
  <body>
	<jsp:include page="../../nav.jsp"></jsp:include>
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
                                                                    	<span id="roomNo">매물번호: </span>
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


		    <%-- <jsp:include page="../../footer.jsp"></jsp:include> --%>
        </div>
        <!-- /Main Content -->

    </div>
    <!-- /HK Wrapper -->
    <script>
    document.addEventListener("DOMContentLoaded", function() {
        // 체크박스 요소들과 textarea 요소를 가져옵니다.
        const checkboxes = document.querySelectorAll('input[type="checkbox"]');
        const textarea = document.querySelector('textarea[name="noteContent"]');

        // 체크박스가 변경될 때마다 실행되는 함수를 정의합니다.
        function updateTextarea() {
            // textarea의 내용을 초기화합니다.
            textarea.value = "";

            // 체크된 체크박스의 내용을 textarea에 추가합니다.
            checkboxes.forEach(checkbox => {
                if (checkbox.checked) {
                    const labelText = checkbox.nextElementSibling.querySelector('span').textContent;
                    textarea.value += labelText + "\n\n";
                }
            });
        }

        // 체크박스 상태가 변경될 때 updateTextarea 함수를 실행합니다.
        checkboxes.forEach(checkbox => {
            checkbox.addEventListener('change', updateTextarea);
        });
    });
</script>
   
<jsp:include page="../../js.jsp"></jsp:include>
</body>

</html>