<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<jsp:include page="../head.jsp"></jsp:include>
</head>
<jsp:include page="../nav.jsp"></jsp:include>
<body>
 <!-- Page Banner Start -->
    <div id="page-banner-area" class="page-banner">
      <div class="page-banner-title">
        <div class="text-center">
          <h2>매물 관리</h2>
          <a href="#"><i class="lni-home"></i> Home</a>
          <span class="crumbs-spacer"><i class="lni-chevron-right"></i></span>
          <span class="current">매물 보기</span>
        </div>
      </div>
    </div>
    <!-- Page Banner End -->

    <!-- Ueser Section Start -->
    <section class="user-page section-padding">
	    <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-7 col-xs-12">
            <div class="my-properties">
              <table class="table table-responsive">
                <thead> 
                  <tr>
                    <th colspan="3" class="col-md-4">매물</th>
                    <th class="col-md-1">등록일</th>
                    <th class="col-md-1">조회수</th>
                    <th class="col-md-2">관리</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${partItemList}">
                  <tr>
                  	<td>${item.itemNo}</td>
                    <td class="image">
                      <a href="property.html"><img alt="my-properties-3" src="/resources/assets/img/property/house-1.jpg" class="img-fluid"></a>
                    </td>
                    <td>
                      <div class="inner">
                       		<c:choose>
                       			<c:when test="${item.itemType == 'O'}">                       				
                        			<span>원룸 | ${item.address2}</span>
                       			</c:when>
                       			<c:when test="${item.itemType == 'T'}">                       				
                        			<span>투룸 | ${item.address2}</span>
                       			</c:when>
                       			<c:when test="${item.itemType == 'H'}">                       				
                        			<span>쓰리룸 | ${item.address2}</span>
                       			</c:when>
                       			<c:otherwise>
                        			<span>오피스텔 | ${item.address2}</span>
                       			</c:otherwise>
                       		</c:choose>
                        <figure><i class="lni-map-marker"></i>${item.address}</figure>
                        <c:choose>
                        	<c:when test="${item.depositFee == null}">
		                        <div style="font-weight:bold;">전세 ${item.price}</div>
                        	</c:when>
                        	<c:otherwise>
		                        <div style="font-weight:bold;">월세 ${item.depositFee} / ${item.price}</div>
                        	</c:otherwise>
                        </c:choose>
                      </div>
                    </td>
                    <td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.registDate}"/></td>
                    <td>421</td>
                    <td class="actions">
                    	<div class="row">
                           <div class="col-4 mr-20">
                               <button aria-expanded="false" class="btn btn-sm btn-green" type="button">거래가능</span></button>
                           </div>
							<div class="col-4">
		                      <a href="#" class="edit"><i class="lni-pencil"></i>수정</a>
							</div>                    		
							<div class="col-2">
		                      <a href="#"><i class="delete lni-trash"></i></a>
							</div>                    	
                    	</div>
                    </td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
              <div class="pagination-container">
                <nav>
                  <ul class="pagination">
                    <li class="page-item"><a class="btn btn-common" href="#"><i class="lni-chevron-left"></i> Previous </a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="btn btn-common" href="#">Next <i class="lni-chevron-right"></i></a></li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
	      </div>
	    </div>
	  </section>
    <!-- Ueser Section End -->
<%-- <jsp:include page="../footer.jsp"></jsp:include> --%>
<script>
    $(document).ready(function () {
        // 활성화 또는 거래완료 링크를 클릭할 때
        $(".item-status").click(function (event) {
            event.preventDefault(); // 기본 이벤트 처리 방지

            var status = $(this).data("status"); // 데이터 속성에서 상태 값을 가져옵니다.
            var itemNo = $(this).closest("tr").find("td:first").text(); // 상태를 변경할 항목의 ID 또는 식별자를 가져옵니다.

            // AJAX 요청을 보냅니다.
            $.ajax({
                type: "POST", // 또는 "GET" 또는 다른 HTTP 메소드
                url: "/update-status", // 상태를 업데이트하는 서버의 엔드포인트 URL
                data: {
                    itemNo: itemNo,
                    status: status
                },
                success: function (response) {
                    // 서버에서 응답을 처리하는 코드를 여기에 추가합니다.
                    // 예를 들어, 성공적으로 업데이트되었을 때 화면을 업데이트하거나 메시지를 표시할 수 있습니다.
                },
                error: function (error) {
                    // 오류 처리를 위한 코드를 여기에 추가합니다.
                }
            });
        });
    });
</script>
<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>
