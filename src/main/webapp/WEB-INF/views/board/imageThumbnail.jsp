<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
.m_box {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
	grid-gap: 10px;
}

.m_tm_20 {
	margin-top: 20px;
}
</style>
<meta charset="UTF-8">
<title>이미지 리스트</title>
</head>

<body>

	<div class="container m_box">

		<c:forEach var='image' items='${imagesEntity}'>
			<!-- 카드글 시작 -->
			<div class="card">
				<img class="card-img-top" src="${image.content}">
				<div class="card-body">
					<h4 class="card-title">${image.title}</h4>
				</div>
			</div>
			<!-- 카드글 끝 -->
		</c:forEach>


	</div>

</body>
</html>