<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
	<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63c0f4f3e00e8d6c49088160aa0fdd64&libraries=services,clusterer,drawing"></script>
  <style>
  	body, #content  {
  		background-color: #F5F5F5;
  	}
  </style>
    <link rel="stylesheet" href="/resources/assets/css/sublet.css">
	<jsp:include page="../head.jsp"></jsp:include>
  </head>
  <body>
	<jsp:include page="../nav.jsp"></jsp:include>
 <!-- Page Banner Start -->
    <div id="page-banner-area" class="page-banner">
      <div class="page-banner-title">
        <div class="text-center">
          <h2>단기 임대</h2>
          <a href="/"><i class="lni-home"></i> 거래 게시판</a>
          <span class="crumbs-spacer"><i class="lni-chevron-right"></i></span>
          <span class="current">거래 게시판</span>
        </div>
      </div>
    </div>
    <!-- Page Banner End -->
    <!-- Main Content -->
<div class="hk-pg-wrapper">
    <!-- Container -->
    <div class="container">
        <div id="contents">
            <div id="primaryContent" class="primary_content bbs_list_board">
                <strong class="screen_out">카페 게시글 리스트</strong>
                <div class="cont_boardlist">
                    <div class="bbs_tit_g">
                        <div class="tit_info">
                                <h4>단기 임대 전용 게시판</h4>
                            <p class="desc_item">
                                단기 임대를 위한 매물 거래 게시판 
                            </p>
                        </div>
                        <div class="add_info">
                            <div class="link_item">
                                새글
                                <span class="num_item">
                                    <span class="screen_out">새글 갯수</span>
                                    10
                                </span>
                                /
                                <span class="screen_out">총 글 갯수</span>
                                30
                            </div>
                            <div class="link_item"></div>
                        </div>
                        <div class="list_board">
                            <table class="tbl_board_g board_check">
                                <caption>게시판 리스트입니다</caption>
                                <thead>
                                    <tr>
                                        <th class="td_board" scope="col"> <span class="screen_out">글번호</span></th>
                                        <th class="td_title t_c" scope="col">제목</th>
                                        <th class="td_writer" scope="col"> 글쓴이</th>
                                        <th class="td_date" scope="col"> 작성일</th>
                                        <th class="td_look" scope="col"> 조회</th>
                                    </tr>
                                </thead>
                                <tbody id="article-list">
                                    <tr class="state_info">
                                        <td scope="row" class="td_board td_state">
                                            <div class="board_state">
                                                <span class="tag_g tag_notice">공지</span>
                                            </div>
                                        </td>
                                        <td scope="row" colspan class="td_title">
                                            <span class="link_board" style="line-height:20px; font-size:13px">
                                                <strong class="title_wrapper">
                                                    <a href="#" class="txt_item">공지입니다</a>
                                                </strong>
                                            </span>
                                        </td>
                                        <td scope="row" class="td_writer">
                                            <a href="#" class="txt_writer">이름</a>
                                        </td>
                                        <td scope="row" class="td_date">
                                            <a href="#" class="tbl_txt_date">23.10.18</a>
                                        </td>
                                        <td scope="row" class="td_look">
                                            <a href="#" class="tbl_txt_look">30</a>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td scope="row" class="td_board">
                                            <div class="board_state">
                                                <div class="wrap_num">1</div>
                                            </div>
                                        </td>
                                        <td scope="row" colspan class="td_title">
                                            <span class="link_board" style="line-height:20px;">
                                                <strong class="tit_board">
                                                    <span class="title_wrapper">
                                                        <a href="#" class="txt_item">
                                                            <span class="txt_preface">구해요</span>
                                                            제목2
                                                        </a>
                                                    </span>
                                                </strong>
                                            </span>
                                        </td>
                                        <td scope="row" class="td_writer">
                                            <a href="#" class="txt_writer">이름2</a>
                                        </td>
                                        <td scope="row" class="td_date">
                                            <a href="#" class="tbl_txt_date">23.10.18</a>
                                        </td>
                                        <td scope="row" class="td_look">
                                            <a href="#" class="tbl_txt_look">40</a>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td scope="row" class="td_board">
                                            <div class="board_state">
                                                <div class="wrap_num">1</div>
                                            </div>
                                        </td>
                                        <td scope="row" colspan class="td_title">
                                            <span class="link_board" style="line-height:20px;">
                                                <strong class="tit_board">
                                                    <span class="title_wrapper">
                                                        <a href="#" class="txt_item">
                                                            <span class="txt_preface">팝니다</span>
                                                            제목2
                                                        </a>
                                                    </span>
                                                </strong>
                                            </span>
                                        </td>
                                        <td scope="row" class="td_writer">
                                            <a href="#" class="txt_writer">이름2</a>
                                        </td>
                                        <td scope="row" class="td_date">
                                            <a href="#" class="tbl_txt_date">23.10.18</a>
                                        </td>
                                        <td scope="row" class="td_look">
                                            <a href="#" class="tbl_txt_look">40</a>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td scope="row" class="td_board">
                                            <div class="board_state">
                                                <div class="wrap_num">3</div>
                                            </div>
                                        </td>
                                        <td scope="row" colspan class="td_title">
                                            <span class="link_board" style="line-height:20px;">
                                                <strong class="tit_board">
                                                    <span class="title_wrapper">
                                                        <a href="#" class="txt_item">
                                                            <span class="txt_preface">팝니다</span>
                                                            제목3
                                                        </a>
                                                    </span>
                                                </strong>
                                            </span>
                                        </td>
                                        <td scope="row" class="td_writer">
                                            <a href="#" class="txt_writer">이름3</a>
                                        </td>
                                        <td scope="row" class="td_date">
                                            <a href="#" class="tbl_txt_date">23.10.18</a>
                                        </td>
                                        <td scope="row" class="td_look">
                                            <a href="#" class="tbl_txt_look">40</a>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td scope="row" class="td_board">
                                            <div class="board_state">
                                                <div class="wrap_num">4</div>
                                            </div>
                                        </td>
                                        <td scope="row" colspan class="td_title">
                                            <span class="link_board" style="line-height:20px;">
                                                <strong class="tit_board">
                                                    <span class="title_wrapper">
                                                        <a href="#" class="txt_item">
                                                            <span class="txt_preface">팝니다</span>
                                                            제목4
                                                        </a>
                                                    </span>
                                                </strong>
                                            </span>
                                        </td>
                                        <td scope="row" class="td_writer">
                                            <a href="#" class="txt_writer">이름4</a>
                                        </td>
                                        <td scope="row" class="td_date">
                                            <a href="#" class="tbl_txt_date">23.10.18</a>
                                        </td>
                                        <td scope="row" class="td_look">
                                            <a href="#" class="tbl_txt_look">40</a>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td scope="row" class="td_board">
                                            <div class="board_state">
                                                <div class="wrap_num">5</div>
                                            </div>
                                        </td>
                                        <td scope="row" colspan class="td_title">
                                            <span class="link_board" style="line-height:20px;">
                                                <strong class="tit_board">
                                                    <span class="title_wrapper">
                                                        <a href="#" class="txt_item">
                                                            <span class="txt_preface">팝니다</span>
                                                            제목5
                                                        </a>
                                                    </span>
                                                </strong>
                                            </span>
                                        </td>
                                        <td scope="row" class="td_writer">
                                            <a href="#" class="txt_writer">이름5</a>
                                        </td>
                                        <td scope="row" class="td_date">
                                            <a href="#" class="tbl_txt_date">23.10.18</a>
                                        </td>
                                        <td scope="row" class="td_look">
                                            <a href="#" class="tbl_txt_look">40</a>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td scope="row" class="td_board">
                                            <div class="board_state">
                                                <div class="wrap_num">6</div>
                                            </div>
                                        </td>
                                        <td scope="row" colspan class="td_title">
                                            <span class="link_board" style="line-height:20px;">
                                                <strong class="tit_board">
                                                    <span class="title_wrapper">
                                                        <a href="#" class="txt_item">
                                                            <span class="txt_preface">팝니다</span>
                                                            제목6
                                                        </a>
                                                    </span>
                                                </strong>
                                            </span>
                                        </td>
                                        <td scope="row" class="td_writer">
                                            <a href="#" class="txt_writer">이름6</a>
                                        </td>
                                        <td scope="row" class="td_date">
                                            <a href="#" class="tbl_txt_date">23.10.18</a>
                                        </td>
                                        <td scope="row" class="td_look">
                                            <a href="#" class="tbl_txt_look">40</a>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td scope="row" class="td_board">
                                            <div class="board_state">
                                                <div class="wrap_num">7</div>
                                            </div>
                                        </td>
                                        <td scope="row" colspan class="td_title">
                                            <span class="link_board" style="line-height:20px;">
                                                <strong class="tit_board">
                                                    <span class="title_wrapper">
                                                        <a href="#" class="txt_item">
                                                            <span class="txt_preface">팝니다</span>
                                                            제목7
                                                        </a>
                                                    </span>
                                                </strong>
                                            </span>
                                        </td>
                                        <td scope="row" class="td_writer">
                                            <a href="#" class="txt_writer">이름7</a>
                                        </td>
                                        <td scope="row" class="td_date">
                                            <a href="#" class="tbl_txt_date">23.10.18</a>
                                        </td>
                                        <td scope="row" class="td_look">
                                            <a href="#" class="tbl_txt_look">40</a>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td scope="row" class="td_board">
                                            <div class="board_state">
                                                <div class="wrap_num">8</div>
                                            </div>
                                        </td>
                                        <td scope="row" colspan class="td_title">
                                            <span class="link_board" style="line-height:20px;">
                                                <strong class="tit_board">
                                                    <span class="title_wrapper">
                                                        <a href="#" class="txt_item">
                                                            <span class="txt_preface">팝니다</span>
                                                            제목8
                                                        </a>
                                                    </span>
                                                </strong>
                                            </span>
                                        </td>
                                        <td scope="row" class="td_writer">
                                            <a href="#" class="txt_writer">이름8</a>
                                        </td>
                                        <td scope="row" class="td_date">
                                            <a href="#" class="tbl_txt_date">23.10.18</a>
                                        </td>
                                        <td scope="row" class="td_look">
                                            <a href="#" class="tbl_txt_look">40</a>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td scope="row" class="td_board">
                                            <div class="board_state">
                                                <div class="wrap_num">9</div>
                                            </div>
                                        </td>
                                        <td scope="row" colspan class="td_title">
                                            <span class="link_board" style="line-height:20px;">
                                                <strong class="tit_board">
                                                    <span class="title_wrapper">
                                                        <a href="#" class="txt_item">
                                                            <span class="txt_preface">팝니다</span>
                                                            제목9
                                                        </a>
                                                    </span>
                                                </strong>
                                            </span>
                                        </td>
                                        <td scope="row" class="td_writer">
                                            <a href="#" class="txt_writer">이름9</a>
                                        </td>
                                        <td scope="row" class="td_date">
                                            <a href="#" class="tbl_txt_date">23.10.18</a>
                                        </td>
                                        <td scope="row" class="td_look">
                                            <a href="#" class="tbl_txt_look">40</a>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td scope="row" class="td_board">
                                            <div class="board_state">
                                                <div class="wrap_num">10</div>
                                            </div>
                                        </td>
                                        <td scope="row" colspan class="td_title">
                                            <span class="link_board" style="line-height:20px;">
                                                <strong class="tit_board">
                                                    <span class="title_wrapper">
                                                        <a href="#" class="txt_item">
                                                            <span class="txt_preface">팝니다</span>
                                                            제목10
                                                        </a>
                                                    </span>
                                                </strong>
                                            </span>
                                        </td>
                                        <td scope="row" class="td_writer">
                                            <a href="#" class="txt_writer">이름10</a>
                                        </td>
                                        <td scope="row" class="td_date">
                                            <a href="#" class="tbl_txt_date">23.10.18</a>
                                        </td>
                                        <td scope="row" class="td_look">
                                            <a href="#" class="tbl_txt_look">40</a>
                                        </td>
                                    </tr>
                               
                                </tbody>
                            </table>
                        </div>
                        <div class="paging_g">
                            <div class="inner_paging_number">
                                <span class="screen_out">페이지 위치정보</span>
                                <ol class="list_paging">
                                    <li class="on">
                                        <a href="#" class="link_num">
                                            <span class="screen_out">현재 페이지</span>
                                            <span class="num_item">1</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="link_num">
                                            <span class="num_item">2</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="link_num">
                                            <span class="num_item">3</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="link_num">
                                            <span class="num_item">4</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="link_num">
                                            <span class="num_item">5</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="link_num">
                                            <span class="screen_out">마지막 페이지</span>
                                            <span class="num_item">10</span>
                                        </a>
                                    </li>
                                </ol>
                                <button type="button" disabled="disabled" class="btn_g_ico btn_item btn_prev">
                                    <span class="ico_bbs">이전 목록으로 이동</span>
                                </button>
                                <button type="button" class="btn_g_ico btn_item btn_next">
                                    <span class="ico_bbs">다음 목록으로 이동</span>
                                </button>
                            </div>
                            <div class="box_btn">
                                <button id="article-write-btn" type="button" class="btn_g type2" style="font-size:13px;">글쓰기</button>
                            </div>
                            <div class="box_btn posi_r">
                                <a href="#" id="my-article-btn" class="btn_g" style="font-size:13px;">내글보기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Container -->
</div>
<!-- /HK Wrapper -->
</body>
</html>