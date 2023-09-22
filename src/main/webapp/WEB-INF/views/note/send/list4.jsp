<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web Mail</title>
    <style>
        /* 공통 스타일 */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        /* 메일 리스트 스타일 */
        .mail-list {
            background-color: #fff;
            border: 1px solid #ddd;
            margin: 20px;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        .mail-list ul {
            list-style: none;
            padding: 0;
        }

        .mail-list li {
            margin-bottom: 10px;
        }

        .mail-link {
            text-decoration: none;
            color: #333;
        }

        /* 상세 메일 스타일 */
        .mail-detail {
            background-color: #fff;
            border: 1px solid #ddd;
            margin: 20px;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            display: none;
        }

        .mail-detail h2 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .mail-detail p {
            margin: 5px 0;
        }

        /* 메일 내용 스타일 */
        #content {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        /* 반응형 스타일 */
        @media screen and (max-width: 768px) {
            .mail-list, .mail-detail {
                margin: 10px;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <!-- 메일 리스트 -->
    <div class="mail-list">
        <ul>
            <li><a href="#" class="mail-link" data-mail-id="1">메일 제목 1</a></li>
            <li><a href="#" class="mail-link" data-mail-id="2">메일 제목 2</a></li>
            <!-- 여기에 더 많은 메일 항목 추가 -->
        </ul>
    </div>

    <!-- 상세 메일 내용 -->
    <div class="mail-detail">
        <h2>메일 제목</h2>
        <p>보낸 사람: <span id="sender"></span></p>
        <p>날짜: <span id="date"></span></p>
        <hr>
        <p>메일 내용:</p>
        <div id="content"></div>
        <!-- 여기에 더 많은 메일 세부 정보 추가 -->
    </div>

    <!-- JavaScript를 이용하여 메일 클릭 시 상세 메일 표시 및 데이터 로딩을 구현하세요 -->
    <script>
        const mailLinks = document.querySelectorAll('.mail-link');
        const mailDetail = document.querySelector('.mail-detail');
        const senderElement = document.querySelector('#sender');
        const dateElement = document.querySelector('#date');
        const contentElement = document.querySelector('#content');

        mailLinks.forEach(link => {
            link.addEventListener('click', (e) => {
                e.preventDefault();
                const mailId = link.getAttribute('data-mail-id');

                // 여기서 AJAX 또는 데이터 불러오기를 수행하고 상세 메일 내용을 업데이트하세요
                // 예를 들어, fetch() 또는 jQuery.ajax()를 사용하여 서버에서 메일 데이터를 가져오세요

                // 받은 메일 데이터를 사용하여 상세 메일을 업데이트하세요
                const mailData = {
                    sender: '보낸 사람 이름',
                    date: '2023-09-20',
                    content: '메일 내용이 여기에 들어갑니다.'
                };

                // 업데이트된 정보로 상세 메일을 표시
                senderElement.textContent = mailData.sender;
                dateElement.textContent = mailData.date;
                contentElement.textContent = mailData.content;

                // 상세 메일 영역 표시
                mailDetail.style.display = 'block';
            });
        });
    </script>
</body>
</html>
