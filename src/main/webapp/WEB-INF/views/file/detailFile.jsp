<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>이미지 상세 정보</title>
</head>
<body>
    <h1>이미지 상세 정보</h1>
    <p><strong>파일명:</strong> ${fileVO.originalName}</p>
    <p><strong>파일 경로:</strong> ${fileVO.filePath}</p>
    <p><strong>파일 확장자:</strong> ${fileVO.fileExt}</p>
    
    <!-- 이미지 출력 -->
    <img src="/upload/${fileVO.savedName}" alt="이미지">
    
    <!-- 뒤로 가기 버튼 -->
    <a href="/file">뒤로 가기</a>
</body>
</html>
