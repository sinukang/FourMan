<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="../source/css/home.css" type="text/css" rel="stylesheet">
	<link href="../source/css/gallery/galleryWrite.css" type="text/css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../source/include/header.jsp"/>
	<div class="wrap">
		<div class="gallery">
			<h1>GALLERY</h1>
		</div>
		<div class="container">
			<div class="inner-table">
				<div>
					<label id="back-btn" for="input-write">뒤로가기</label>
					<input type="button" id="input-write" name="btn" style="display:none;" onclick="location.href='${pageContext.request.contextPath}/board/galleryList.do';">
				</div>
				<table class="table-cont" style=" cursor: pointer;" onclick="location.href='목적지 링크주소(URL);">
					<tr style="height:20px;">
						<td>
							<!-- 사진파일 업로드 -->
							<div class="upload-box">
								<div id="drop-file" class="drag-file">
									<img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
									<p class="message">Drag files to upload</p>
									<img src="" alt="미리보기 이미지" class="preview">
								</div>
							</div>
							<div class="upload-btn">
								<label class="file-label" for="chooseFile">사진 선택</label>
								<input class="file" id="chooseFile"
									type="file" 
									onchange="dropFile.handleFiles(this.files)"
									accept="image/png, image/jpeg, image/gif">
							</div>
						</td>
					</tr>
					<tr style="height:30px;">
						<td >
							<input type="text" id="input-sub" name="subject" placeholder=" 제목을 입력하세요.">
						</td>
					</tr>
					<tr style="height:200px;">
						<td>
							<textarea id="input-cont" name="contents" placeholder="내용을 입력해주세요."></textarea>
						</td>
					</tr>
					<tr style="height:20px;">
						<td class="write-btn">
							<div class="write-btn">
								<label id="write-label" for="input-write">글쓰기</label>
								<input type="button" id="input-write" name="btn" style="display:none;" onclick="check();">
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<jsp:include page="../source/include/footer.jsp"/>
	
	
	
	<!-- 사진파일 업로드 -->
	<script type="text/javascript">
		

	function DropFile(dropAreaId, fileListId) {
		let dropArea = document.getElementById(dropAreaId);
		let fileList = document.getElementById(fileListId);
		
		/* 기본 이벤트 막기 */
		function preventDefaults(e) {
			e.preventDefault();
			e.stopPropagation();
		}
		/* 드래그해서 상자로 가져갔을 때 상자 하이라이트 */
		function highlight(e) {
			preventDefaults(e);
			dropArea.classList.add("highlight");
		}

		function unhighlight(e) {
			preventDefaults(e);
			dropArea.classList.remove("highlight");
		}

		function handleDrop(e) {
			unhighlight(e);
			let dt = e.dataTransfer;
			let files = dt.files;

			handleFiles(files);

			const fileList = document.getElementById(fileListId);
			if (fileList) {
				fileList.scrollTo({ top: fileList.scrollHeight });
			}
		}

		function handleFiles(files) {
			files = [...files];
			// files.forEach(uploadFile);
			files.forEach(previewFile);
		}

		  function previewFile(file) {
			console.log(file);
			renderFile(file);
		}

		function renderFile(file) {
			let reader = new FileReader();
			reader.readAsDataURL(file);
			reader.onloadend = function () {
				let img = dropArea.getElementsByClassName("preview")[0];
				img.src = reader.result;
				img.style.display = "block";
			};
		}

		dropArea.addEventListener("dragenter", highlight, false);
		dropArea.addEventListener("dragover", highlight, false);
		dropArea.addEventListener("dragleave", unhighlight, false);
		dropArea.addEventListener("drop", handleDrop, false);

		return {
			handleFiles
		};
	}

	const dropFile = new DropFile("drop-file", "files");

	
	</script>
</body>
</html>