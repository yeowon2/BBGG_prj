<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<jsp:include page="../head.jsp"></jsp:include>
</head>
<jsp:include page="../navPartner.jsp"></jsp:include>
<body>
	<!-- Page Banner Start -->
	<div id="page-banner-area" class="page-banner">
		<div class="page-banner-title">
			<div class="text-center">
				<h2>매물 관리</h2>
				<a href="#"><i class="lni-home"></i> Home</a> <span
					class="crumbs-spacer"><i class="lni-chevron-right"></i></span> <span
					class="current">매물 보기</span>
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
										<td class="image"><a href="/itemDetail/${item.itemNo}"><img
												alt="my-properties-3" src="/upload/${item.fileVO.savedName}"
												class="img-fluid" style="height: 113px"></a></td>
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
												<figure>
													<i class="lni-map-marker"></i>${item.address}</figure>
												<c:choose>
													<c:when test="${item.leaseOrMonth == 'lease'}">
														<div style="font-weight: bold;">전세
															${item.leasePrice}</div>
													</c:when>
													<c:otherwise>
														<div style="font-weight: bold;">월세
															${item.depositFee} / ${item.monthPrice}</div>
													</c:otherwise>
												</c:choose>
											</div>
										</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd"
												value="${item.registDate}" /></td>
										<td>${item.viewCount}</td>
										<td class="actions">
											<div class="row">
												<div class="col-4 mr-20">
													<c:if test="${item.useAt == 'Y'}">
														<button aria-expanded="false"
															class="btn btn-sm btn-green item-status" type="button"
															data-status="${item.useAt}">거래 가능</button>
													</c:if>
													<c:if test="${item.useAt == 'C'}">
														<button aria-expanded="false"
															class="btn btn-sm btn-yellow item-status" type="button"
															data-status="${item.useAt}">거래 완료</button>
													</c:if>
												</div>
												<div class="col-4">
													<a href="/partner/itemUpdate/${item.itemNo}" class="edit"><i
														class="lni-pencil"></i>수정</a>
												</div>
												<div class="col-2">
													<a class="delete" href="#"><i class="delete lni-trash"></i></a>
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
									<li class="page-item"><a class="btn btn-common" href="#"><i
											class="lni-chevron-left"></i> Previous </a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="btn btn-common" href="#">Next
											<i class="lni-chevron-right"></i>
									</a></li>
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
		$(document).ready(
				function() {
					// 각 버튼에 대한 이벤트 처리
					$(".item-status").click(
							function(event) {
								event.preventDefault(); // 기본 이벤트 처리 방지

								var itemNo = $(this).closest("tr").find(
										"td:first").text(); // 상태를 변경할 항목의 ID 또는 식별자를 가져옵니다.
								var button = $(this); // 현재 클릭된 버튼을 저장
								var status = button.data("status");

								// AJAX 요청을 보냅니다.
								$.ajax({
									type : "POST",
									url : "/updateStatus",
									data : {
										itemNo : itemNo
									},
									success : function(response) {
										// 클라이언트에서 상태를 변경합니다.
										if (status === 'Y') {
											status = 'C'; // 현재 상태가 거래 가능이면 거래 완료로 변경
											button.removeClass("btn-green")
													.addClass("btn-yellow");
											button.text("거래 완료");
										} else if (status === 'C') {
											status = 'Y'; // 현재 상태가 거래 완료이면 거래 가능으로 변경
											button.removeClass("btn-yellow")
													.addClass("btn-green");
											button.text("거래 가능");
										}
										// 버튼의 data-status 속성도 변경합니다.
										button.data("status", status);
									},
									error : function(error) {
										alert("error 발생");
									}
								});
							});

					// 각 버튼에 대한 이벤트 처리
					$(".delete").click(
							function(event) {
								event.preventDefault(); // 기본 이벤트 처리 방지

								var itemNo = $(this).closest("tr").find(
										"td:first").text(); // 삭제할 항목의 ID 또는 식별자를 가져옵니다.
								var button = $(this); // 현재 클릭된 버튼을 저장

								// AJAX 요청을 보냅니다.
								$.ajax({
									type : "POST",
									url : "/deleteItem", // 업데이트를 처리할 서버의 URL로 변경해야 합니다.
									data : {
										itemNo : itemNo
									},
									success : function(response) {
										// 서버로부터의 응답을 받아올 수 있습니다.
										// 삭제에 성공한 경우 해당 행을 삭제하거나 다른 작업을 수행할 수 있습니다.
										if (response === 'Success') {
											// 삭제에 성공한 경우 해당 행을 삭제
											button.closest("tr").remove();
										} else {
											// 삭제에 실패한 경우 적절한 오류 처리를 수행합니다.
											alert("삭제 실패");
										}
									},
									error : function(error) {
										// 오류 처리를 위한 코드를 여기에 추가합니다.
										alert("error 발생");
									}
								});
							});

				});
	</script>
	<jsp:include page="../js.jsp"></jsp:include>
</body>
</html>
