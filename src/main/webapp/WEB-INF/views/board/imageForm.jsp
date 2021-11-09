<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<meta charset="UTF-8">
<title>이미지 폼 - 썸머노트</title>
</head>
<body>

<div class="container">
	<form action="/board/imageUpload" method="post">
		<div class="form-group">
			<input type="text" name="title" class="form-control">
		</div>
		<div class="form-group">
			<textarea id="summernote" name="content" class="form-control" rows="5" ></textarea>

		</div>
		<button type="submit" class="btn btn-primary">글쓰기</button>
	</form>
</div>
</body>

<script>
	$(document).ready(function() {
	  $('#summernote').summernote();
	});

</script>

</html>