<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<style>
section {
	background-color:#F5F5F5;
}
section div {
	background-color:#fff;
}
.submit-form {
	margin:50px;
}	
#moveInDate {
    padding: 30px 15px !important;
    border: 1px solid lightgrey !important;
  
    box-sizing: border-box;
    background-color: #fff !important;
    color: #4CAF50 !important;
    font-size: 18px !important;
    letter-spacing: 1px;
    position: relative;
    font-weight: bold !important;
}

#moveInDate:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: 1px solid #512DA8;
    outline-width: 0;
}

::placeholder {
    color: #BDBDBD;
    opacity: 1;
}

:-ms-input-placeholder {
    color: #BDBDBD;
}

::-ms-input-placeholder {
    color: #BDBDBD;
}

button:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    outline-width: 0;
}

.datepicker {
  background-color: #fff;
  border-radius: 0 !important;
  padding: 15px 20px !important;
  align-content: center !important;
}

.datepicker-dropdown {
  top: 0;
  left: calc(50% - 161px) !important;
}

.datepicker-dropdown.datepicker-orient-left:before {
  left: calc(50% - 6px) !important;
}

.datepicker-dropdown.datepicker-orient-left:after {
  left: calc(50% - 5px) !important;
}

.datepicker table tr td.today, span.focused {
  border-radius: 50% !important;
  background-image: linear-gradient(#FFF3E0, #FFE0B2);
}

.datepicker table tr td.today.range {
  background-image: linear-gradient(#eeeeee, #eeeeee) !important;
  border-radius: 0 !important;
}

/*Weekday title*/
thead tr:nth-child(3) th {
  font-weight: bold !important;
  padding-top: 10px;
  padding-bottom: 10px;
}

.old, .day, .new {
  width: 40px !important;
  height: 40px !important;
  border-radius: 0px !important;
  border: 1px solid lightgrey !important;
}

.day.old, .day.new {
  background-color: #F5F5F5 !important;
  color: #E0E0E0 !important;
}

.day.old:hover, .day.new:hover {
  border-radius: 0px !important;
}

.old-day:hover, .day:hover, .new-day:hover, .month:hover, .year:hover, .decade:hover, .century:hover {
  border-radius: 50% !important;
  background-color: #eee;
}

.input-group.active {
  border-radius: 50% !important;
  background-image: linear-gradient(#90CAF9, #64B5F6) !important;
  color: #fff !important;
}

.range-start, .range-end {
  border-radius: 50% !important;
  background-image: linear-gradient(#4CAF50, #4CAF50) !important;
}

.range {
  color: #4CAF50 !important;
}

.prev, .next, .datepicker-switch {
  border-radius: 0 !important;
  padding: 10px 10px 10px 10px !important;
  font-size: 18px;
  opacity: 0.7;
  color: #4CAF50;
}

.prev:hover, .next:hover, .datepicker-switch:hover {
  background-color: inherit !important;
  opacity: 1;
}

@media screen and (max-width: 500px) {
  .datepicker-dropdown.datepicker-orient-right:before {
    right: calc(50% - 6px) !important;
  }

  .datepicker-dropdown.datepicker-orient-right:after {
    right: calc(50% - 5px) !important;
  }

}	
.fileBox {
	height:300px;
}
      .drop-file {
        position: relative; /* 부모로부터 상대 위치 설정 */
        min-height: 220px;
    }

    .drop-image {
        width: 100%; /* 이미지의 너비를 100%로 설정하여 부모 크기에 맞춤 */
        height: auto; /* 이미지의 높이는 자동으로 조정됩니다. */
        max-height: 100%; /* 이미지의 최대 높이를 100%로 설정하여 부모 크기를 초과하지 않도록 합니다. */
        position: absolute; /* 이미지를 절대 위치로 설정하여 부모 요소 내에 위치하도록 합니다. */
        top: 0; /* 부모의 맨 위에 위치하도록 합니다. */
        left: 0; /* 부모의 맨 왼쪽에 위치하도록 합니다. */
    }
</style>
<jsp:include page="../head.jsp"></jsp:include>
</head>
<jsp:include page="../navPartner.jsp"></jsp:include>
<body>
 <!-- Page Banner Start -->
    <div id="page-banner-area" class="page-banner">
      <div class="page-banner-title">
        <div class="text-center">
          <h2>매물 등록하기</h2>
          <a href="#"><i class="lni-home"></i> Home</a>
          <span class="crumbs-spacer"><i class="lni-chevron-right"></i></span>
          <span class="current">매물 등록하기</span>
        </div>
      </div>
    </div>
    <!-- Page Banner End -->

    <!-- Ueser Section Start -->
    <section class="user-page submit-property section-padding">
      <div class="container">
        <div class="row"">
          <div class="col-lg-10" style="margin:0 auto;">
            <div class="submit-form">
              <form method="post" enctype="multipart/form-data">
                <h3 class="heading">위치 정보</h3>
                <div class="row mb-3">
                  <div class="col-lg-10 col-md-6">
                    <div class="form-group">
                      <label>주소</label>
                      <input type="text" name="address" class="form-control" value="${itemVO.address}" placeholder="" id="sample5_address" readonly>
                      <input type="hidden" name="lat" id="latInput" value="${itemVO.lat}">
                      <input type="hidden" name="lng" id="lngInput" value="${itemVO.lng}">
                      <input type="hidden" name="partnerNo" value="${itemVO.partnerNo}">
                    </div>
                  </div>
                  <div class="col-lg-2 col-md-6">
                    <div class="form-group">
                      <input type="button" class="btn btn-lg btn-success" onclick="sample5_execDaumPostcode()" value="주소 검색" style="margin-top:30px;">
                    </div>
                  </div>
                  <div class="col-lg-12 col-md-6">
                    <div class="form-group">
                      <label>상세 주소</label>
                      <input type="text" name="address2" value="${itemVO.address2}" class="form-control" placeholder="상세 주소를 입력하세요">
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6">
                    <div class="form-group">
                      <label>동</label>
                      <input type="text" name="dong" value="${itemVO.dong}" class="form-control" placeholder="ex 101동">
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6">
                    <div class="form-group">
                      <label>호수</label>
                      <input type="text" name="ho" value="${itemVO.ho}" class="form-control" placeholder="ex 1001호">
                    </div>
                  </div>
                </div>
                <h3 class="heading">기본 정보</h3>
                <div class="row mb-3">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>방 타입</label>
                     <select name="itemType" class="classic">
					    <option value="" selected>선택</option>
					    <c:forEach var="type" items="O,T,H,F">
					        <option value="${type}" <c:if test="${type == itemVO.itemType}">selected</c:if>>
					            <c:out value="${type eq 'O' ? '원룸' : type eq 'T' ? '투룸' : type eq 'H' ? '쓰리룸' : '오피스텔'}"/>
					        </option>
					    </c:forEach>
					</select>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>거래 타입</label>
                      <select name="leaseOrMonth" id="transactionType" class="classic">
                      	<option value="" selected>선택</option>
					    <option value="month" <c:if test="${itemVO.leaseOrMonth == 'month'}">selected</c:if>>월세</option>
					    <option value="lease" <c:if test="${itemVO.leaseOrMonth == 'lease'}">selected</c:if>>전세</option>
					</select>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6" id="depositFeeField" style="display:none">
                    <div class="form-group">
                      <label>보증금</label>
                      <input type="number" name="depositFee" value="${itemVO.depositFee}" class="form-control" placeholder="">
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6" id="monthPriceField" style="display:none">
                    <div class="form-group">
                      <label>월세</label>
                      <input type="number" name="monthPrice" value="${itemVO.price}" class="form-control" placeholder="">
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6" id="leasePriceField" style="display:none">
                    <div class="form-group">
                      <label>전세금</label>
                      <input type="number" name="leasePrice" value="${itemVO.price}" class="form-control" placeholder="">
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6" id="noneField" style="display:none">
                    <div class="form-group">
                      <label></label>
                      <input type="hidden" name="none" class="form-control" placeholder="">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                    <div class="form-group">
                      <label>건물 층수</label>
                      <input type="number" name="buildingFloor" value="${itemVO.buildingFloor}" class="form-control"  placeholder="">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                    <div class="form-group">
                      <label>매물 층수</label>
                      <input type="number" name="itemFloor" value="${itemVO.itemFloor}" class="form-control" placeholder="">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                    <div class="form-group">
                      <label>방 수</label>
                      <input type="number" name="itemCount" value="${itemVO.itemCount}" class="form-control" value="1" placeholder="">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                    <div class="form-group">
                      <label>욕실 수</label>
                      <input type="number" name="bathAt" value="${itemVO.bathAt}" class="form-control" value="1" placeholder="">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                    <div class="form-group">
                      <label>평 수(평)</label>
                      <input type="number" name="itemSize" value="${itemVO.itemSize}" class="form-control" id="itemSizeInput">
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                    <div class="form-group">
                      <label>전용 면적(m²)</label>
                      <input type="number" name="itemSizeArea" value="${itemVO.itemSizeArea}" class="form-control" id="itemSizeAreaInput" readonly>
                    </div>
                  </div>
                </div>
                
                <h3 class="heading">추가 정보</h3>
                <div class="row mb-3">
                  <div class="col-lg-6">
                    <div class="form-group message">
                      <label>관리비 여부</label>
                      <select class="classic" name="manageFeeAt">
                      	<option value="" selected>선택</option>
		                <option value="Y" <c:if test="${itemVO.manageFeeAt == 'Y'}">selected</c:if>>있음</option>
		                <option value="N" <c:if test="${itemVO.manageFeeAt == 'N'}">selected</c:if>>없음</option>
		            </select>
                    </div>
                  </div>
                  <div class="col-lg-6" id="manageFeeField">
                    <div class="form-group message">
                      <label style="display:none;">관리비</label>
                      <input type="hidden" name="manageFee" value="${itemVO.manageFee}" class="form-control">
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-4">
                    <div class="form-group">
                      <label>주차</label>
                      <select class="classic" name="parkingAt">
                      	<option value="" selected>선택</option>
		                <option value="Y" <c:if test="${itemVO.parkingAt == 'Y'}">selected</c:if>>가능</option>
		                <option value="N" <c:if test="${itemVO.parkingAt == 'N'}">selected</c:if>>불가</option>
		            </select>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-4">
                    <div class="form-group">
                      <label>엘리베이터</label>
                      <select class="classic" name="elevatorAt">
                      	<option value="" selected>선택</option>
		                <option value="Y" <c:if test="${itemVO.elevatorAt == 'Y'}">selected</c:if>>있음</option>
		                <option value="N" <c:if test="${itemVO.elevatorAt == 'N'}">selected</c:if>>없음</option>
		            </select>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-4">
                    <div class="form-group">
                      <label>즉시 입주</label>
                       <select class="classic" name="moveInAt">
			                <option value="Y" <c:if test="${itemVO.moveInAt == 'Y'}">selected</c:if>>가능</option>
			                <option value="N" <c:if test="${itemVO.moveInAt == 'N'}">selected</c:if>>불가</option>
			            </select>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-4" id="moveInDateField" style="display:none;">
                    <div class="form-group">
                      <label>입주 가능일</label>
                      <input type="date" name="moveInDate" value="${itemVO.moveInDate}" class="form-control">
                    </div>
                  </div>
                </div>

                <h3 class="heading">상세 설명</h3>
                <div class="row mb-3">
                  <div class="col-lg-4">
                    <div class="form-group message">
                      <label>태그1</label>
                      <input class="form-control" name="tag1" value="${itemVO.tag1}" placeholder="ex #반려동물 가능" />
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <div class="form-group message">
                      <label>태그2</label>
                      <input class="form-control" name="tag2" value="${itemVO.tag2}" placeholder="ex #번화가 앞" />
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <div class="form-group message">
                      <label>태그3</label>
                      <input class="form-control" name="tag3" value="${itemVO.tag3}" placeholder="ex #대학교 인근" />
                    </div>
                  </div>
                  <div class="col-lg-12">
                    <div class="form-group message">
                      <label>상세 설명</label>
                      <textarea class="form-control tinymce" name="memoDetail" placeholder="ex 대형마트와 쇼핑몰 앞에 위치한 방입니다"> ${itemVO.memoDetail}</textarea>
                    </div>
                  </div>
                  <div class="col-lg-12">
                    <div class="form-group message">
                      <label>비공개 메모</label>
                      <textarea class="form-control" name="memoPrivate" placeholder="ex LH 임대 아파트 전세 계약 가능 + 협의 필요"></textarea>
                    </div>
                  </div>
                </div>

                <h3 class="heading">기본 옵션</h3>
                <div class="row mb-3">
                  <div class="col-lg-3 col-md-4">
                    <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="air-condition" checked>
                        <label class="form-check-label" for="air-condition">침대</label>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="closet" checked>
                        <label class="form-check-label" for="closet">옷장</label>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="sofa">
                        <label class="form-check-label" for="sofa">소파</label>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-4">
                    <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="laundry-room" checked>
                        <label class="form-check-label" for="laundry-room">가스레인지</label>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="window-covering">
                        <label class="form-check-label" for="window-covering">인덕션</label>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="places" checked>
                        <label class="form-check-label" for="places">냉장고</label>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-4">
                    <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="places" checked>
                        <label class="form-check-label" for="places">전자레인지</label>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="alarm" checked>
                        <label class="form-check-label" for="alarm">세탁기</label>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="central-heating">
                        <label class="form-check-label" for="central-heating">건조기</label>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-4">
                    <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="central-heating" checked>
                        <label class="form-check-label" for="central-heating">에어컨</label>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="central-heating" checked>
                        <label class="form-check-label" for="central-heating">화재경보기</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                <div class="col-lg-8 text-left">
                  <h3 class="heading">사진 업로드</h3>
                </div>
                <div class="col-lg-4 text-right">
                  <button type="button" id="add-pic" class="btn btn-light mb-4">사진 추가하기</button>
                </div>
              </div>
                <div class="row mb-3 pic-list">
                	<c:if test="${itemVO.fileVOList == null}">
	                  <div class="col-lg-4 pic-item">
	                    <label id="label1" for="file1" class="drop-file mb-5">
	                      <input type="file" name="file1" id="file1" style="display:none;">
	                      <img id="img1" class="drop-image mb-5" src="" alt="">
	                      <div class="drop-message"><span>사진 올리기</span></div>
	                     </label> 
	                  </div>
	                  <div class="col-lg-4 pic-item">
	                    <label id="label2" for="file2" class="drop-file mb-5">
	                      <input type="file" name="file2" id="file2" style="display:none;">
	                      <img id="img2" class="drop-image mb-5" src="" alt="">
	                      <div class="drop-message"><span>사진 올리기</span></div>
	                     </label> 
	                  </div>
	                  <div class="col-lg-4 pic-item">
	                    <label id="label3" for="file3" class="drop-file mb-5">
	                      <input type="file" name="file3" id="file3" style="display:none;">
	                      <img id="img3" class="drop-image mb-5" src="" alt="">
	                      <div class="drop-message"><span>사진 올리기</span></div>
	                     </label> 
	                  </div>
             		</c:if>	
             		<c:if test="${itemVO.fileVOList != null}">
					    <c:forEach var="fileVO" items="${itemVO.fileVOList}" varStatus="loop">
					        <div class="col-lg-4 pic-item">
					            <label id="label${loop.index + 1}" for="file${loop.index + 1}" class="drop-file mb-5">
					                <input type="file" name="file${loop.index + 1}" id="file${loop.index + 1}" style="display:none;">
					                <img src="/upload/${fileVO.savedName}" alt="" style="width:250px; height:215px;">
					            </label> 
					        </div>
					    </c:forEach>
					</c:if>
                </div>
                <div class="col-lg-12 mt-3 text-right">
                  <button type="submit" class="btn btn-success">등록하기</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Ueser Section End -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    $(document).ready(function() {
      $('#add-pic').on('click', function() {
          var newIndex = $('.pic-item').length + 1;
          var newDiv = $('<div>').addClass('col-lg-4 pic-item');
          var input = $('<input>').attr('type', 'file').attr('name', 'file' + newIndex).attr('id', 'file' + newIndex).css('display', 'none').on('change', function() {
              // 미리보기 이미지 표시 코드 추가
              showPreview(this, newIndex);
          });
        var label = $('<label>').attr('id', 'label' + newIndex).addClass('drop-file mb-5').attr('for', 'file' + newIndex);
        var dropImage = $('<img>').attr('id', 'img' + newIndex).addClass('drop-image mb-5').attr('src', '');
        var dropMessage = $('<div>').addClass('drop-message').append($('<span>').text('사진 올리기'));

        label.append(input, dropImage, dropMessage);
        newDiv.append(label);
        $('.pic-list').append(newDiv);
    });

    // 모든 파일 입력란에 대해 미리보기 기능 적용
    $('input[type="file"]').on('change', function() {
        var index = $(this).attr('id').replace('file', '');
        if (this.files && this.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                // 비동기적으로 이미지 미리보기 표시
                $('#label' + index).find('img').attr('src', e.target.result);
                $('#label' + index).find('span').hide(); // label 내의 메시지 숨기기
            };

            reader.readAsDataURL(this.files[0]);
        }
    });
});
    
    document.addEventListener('DOMContentLoaded', function () {
        const transactionTypeSelect = document.getElementById('transactionType');
        const depositFeeField = document.getElementById('depositFeeField');
        const monthPriceField = document.getElementById('monthPriceField');
        const leasePriceField = document.getElementById('leasePriceField');
        const noneField = document.getElementById('noneField');

        transactionTypeSelect.addEventListener('change', function () {
            if (transactionTypeSelect.value === 'month') {
                depositFeeField.style.display = 'block';
                monthPriceField.style.display = 'block';
                leasePriceField.style.display = 'none';
                noneField.style.display = 'none';
            } else if (transactionTypeSelect.value === 'lease') {
                depositFeeField.style.display = 'none';
                monthPriceField.style.display = 'none';
                leasePriceField.style.display = 'block';
                noneField.style.display = 'block';
            } 
        });
    });
    
    // 평 수(input)의 변경을 감지하고 계산된 값을 전용 면적(input)에 할당
    document.getElementById('itemSizeInput').addEventListener('input', function() {
      // 입력된 평 수 가져오기
      var itemSize = parseFloat(this.value);
      
      // 평 수를 3.3으로 곱해서 전용 면적 계산
      var itemSizeArea = itemSize * 3.3;
      
   // 계산된 값을 전용 면적(input)에 할당 (정수값으로 표시)
      document.getElementById('itemSizeAreaInput').value = Math.round(itemSizeArea); // 정수값으로 반올림
    });

    
 // 관리비 여부(select)의 변경을 감지하고 관리비 입력란을 숨기거나 표시함
    document.querySelector('select[name="manageFeeAt"]').addEventListener('change', function() {
      var manageFeeFieldLabel = document.querySelector('#manageFeeField label');
      var manageFeeInput = document.querySelector('input[name="manageFee"]');
      
      if (this.value === 'Y') { // 'Y' 값과 비교
        manageFeeFieldLabel.style.display = 'block'; // 관리비 라벨이 보이도록 설정
        manageFeeInput.type = 'number'; // 입력란 타입을 number로 변경
      } else {
        manageFeeFieldLabel.style.display = 'none'; // 관리비 라벨 숨김
        manageFeeInput.type = 'hidden'; // 입력란 숨김
      }
    });

    // 즉시 입주(select)의 변경을 감지하고 입주 가능일 입력란을 숨기거나 표시함
    document.querySelector('select[name="moveInAt"]').addEventListener('change', function() {
      var moveInDateField = document.querySelector('#moveInDateField');
      
      if (this.value === 'Y') { // 'Y' 값과 비교
        moveInDateField.style.display = 'none'; // 즉시 입주 가능할 때 입력란 표시
      } else {
        moveInDateField.style.display = 'block'; // 즉시 입주가 불가능할 때 입력란 숨김
      }
    });

    
    

      </script>
<%-- <jsp:include page="../footer.jsp"></jsp:include> --%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63c0f4f3e00e8d6c49088160aa0fdd64&libraries=services,clusterer,drawing"></script>
<script>
 

    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = addr;
                
                // 주소를 좌표로 변환하는 Geocoder 객체 생성
		        var geocoder = new kakao.maps.services.Geocoder();
		
		        // 주소를 좌표로 변환
		        geocoder.addressSearch(addr, function (result, status) {
		            if (status === kakao.maps.services.Status.OK) {
		                var lat = result[0].y; // 위도
		                var lng = result[0].x; // 경도
		
		                // 위도와 경도를 숨겨진 입력 필드에 채워 넣기
		                document.getElementById('latInput').value = lat;
		                document.getElementById('lngInput').value = lng;
		
		            } else {
		                alert('주소를 찾을 수 없습니다.');
		            }
		        });
            }
        }).open();
    }
    
 
</script>

<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>