<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLDecoder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>컨텐츠 리스트 페이지</title>
<link rel="stylesheet" type="text/css" href="../source/css/contents/contentsList.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	


</head>
</head>
<body>

<jsp:include page="../source/include/header.jsp"/>
	


	
		
<div class="container">

	<div class="container-title">
			<h1>CONTENTS</h1>
		</div>
	
		
		<div class="buttonBox">
		
			<button type="submit" class="contentsbutton" id="contentTypeId">
				<img src="../source/images/contents1.png">전체
			</button>
			<button type="submit" class="contentsbutton" id="contentTypeId12">
				<img src="../source/images/contents1.png">관광지
			</button>
			<button type="submit" class="contentsbutton" id="contentTypeId14">
				<img src="../source/images/contents2.png">문화시설
			</button>
			<button type="submit" class="contentsbutton" id="contentTypeId39">
				<img src="../source/images/contents3.png">음식점
			</button>
			<button type="submit" class="contentsbutton" id="contentTypeId32">
				<img src="../source/images/contents4.png">숙박
			</button>
			<button type="submit" class="contentsbutton" id="contentTypeId15">
				<img src="../source/images/contents5.png">축제공연
			</button>	
	
		</div>
	
	
	
		<div class="search">
				<c:choose>
				<c:when test="${not empty param.keyword}">
		        	<input type="text" placeholder="검색" name="keyword" maxlength="20" value="<%=URLDecoder.decode(request.getParameter("keyword"),"UTF-8")%>">
		        </c:when>
		        <c:otherwise>
		       		<input type="text" placeholder="검색" name="keyword" maxlength="20">
		        </c:otherwise>
		        </c:choose>
		        <button type="button" name="sbt">
		            <i class="fas fa-search"></i> <!-- 돋보기 아이콘 -->
		        </button>
		</div>
   		<c:if test="${not empty mbno}">
		<div><button onclick="getLike(${mbno});">라이크버튼</button></div>
		</c:if>
		<div class="contentsbox">
			<c:forEach var="cv" items="${aryList}">
			    <button type="button" class="listbutton" value="${cv.contentid}" id="${cv.contentid}" onclick="ContentsDetail(${cv.contentid})">
				    <div class="content-info">
				    
				    	<c:choose>
				    		<c:when test="${not empty cv.firstimage}">
				            	<img src="${cv.firstimage}">
				            </c:when>
				            <c:otherwise>
				            	<img src="../source/images/commentbtn.png">
				            </c:otherwise>
				        </c:choose>
				        <div class="contents-title">
				        	<p class="title">${cv.title}</p>
				        	<p class="cmtCnt">(0)</p>
				        </div>
				        <c:choose>
				    		<c:when test="${cv.contentLikeYN eq 'Y'}">
								<div class="likeStar">★</div>
				            </c:when>
				            <c:otherwise>
				       			<div class="likeStar">☆</div>
				            </c:otherwise>
				        </c:choose>
				    </div>
				</button>
				
		   		<c:if test="${not empty mbno}">
				<div><button onclick="getLike(${cv.contentid});">라이크버튼${cv.contentid}</button></div>
				</c:if>
			</c:forEach>
<!-- 			<button type="button" class="listbutton" id="158458"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck3.jpg" alt="14"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">전주동물원</p> -->
<!-- 			        	<p class="cmtCnt">(5454)</p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
<!-- 			<button type="button" class="listbutton" id="215484"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck2.png" alt="32"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">한옥마을</p> -->
<!-- 			        	<p class="cmtCnt"></p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
<!-- 			<button type="button" class="listbutton" id="151542"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck1.png" alt="32"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">한옥마을</p> -->
<!-- 			        	<p class="cmtCnt">(5454)</p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
<!-- 			<button type="button" class="listbutton" id="121548"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck5.jpg" alt="12"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">한옥마을</p> -->
<!-- 			        	<p class="cmtCnt">(5454)</p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
<!-- 			<button type="button" class="listbutton" id="953215"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck4.jpg" alt="14"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">전주박물관</p> -->
<!-- 			        	<p class="cmtCnt">(5454)</p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
<!-- 			<button type="button" class="listbutton" id="127548"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck4.jpg" alt="39"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">전주맛집</p> -->
<!-- 			        	<p class="cmtCnt">(5454)</p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
<!-- 			<button type="button" class="listbutton" id="261541"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck4.jpg" alt="39"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">비빔밥</p> -->
<!-- 			        	<p class="cmtCnt">(5454)</p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
<!-- 			<button type="button" class="listbutton" id="451242"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck4.jpg" alt="15"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">불꽃놀이</p> -->
<!-- 			        	<p class="cmtCnt">(5454)</p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
<!-- 			<button type="button" class="listbutton" id="127574"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck4.jpg" alt="39"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">비빔밥</p> -->
<!-- 			        	<p class="cmtCnt">(5454)</p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
<!-- 			<button type="button" class="listbutton" id="154824"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck4.jpg" alt="15"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">불꽃놀이</p> -->
<!-- 			        	<p class="cmtCnt">(5454)</p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
<!-- 			<button type="button" class="listbutton" id="482154"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck4.jpg" alt="39"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">비빔밥</p> -->
<!-- 			        	<p class="cmtCnt">(5454)</p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
<!-- 			<button type="button" class="listbutton" id="215482"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck4.jpg" alt="15"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">불꽃놀이</p> -->
<!-- 			        	<p class="cmtCnt">(5454)</p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
<!-- 			<button type="button" class="listbutton" id="button8"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck4.jpg" alt="39"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">비빔밥</p> -->
<!-- 			        	<p class="cmtCnt">(5454)</p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
<!-- 			<button type="button" class="listbutton" id="215721"> -->
<!-- 			    <div class="content-info"> -->
<!-- 			            <img src="../source/images/duck4.jpg" alt="15"> -->
<!-- 			        <div class="contents-title"> -->
<!-- 			        	<p class="title">불꽃놀이</p> -->
<!-- 			        	<p class="cmtCnt">(5454)</p> -->
<!-- 			        </div> -->
<!-- 			        <div class="likeStar">★</div> -->
<!-- 			    </div> -->
<!-- 			</button> -->
			
		
		   
		    
		  
			</div>
			<div class="page">
				<c:if test="${pm.prev}">
				<button type="button" class="page-prev" onclick="page(1);">|◀</button>
				<button type="button" class="page-back" onclick="page(${pm.startPage - 1});">◀</button>
				</c:if>
							<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}" step="1">
								<c:choose>
								<c:when test="${pm.scri.page==i}">
				<button type="button" class="page-current" onclick="page(${i});">${i}</button>
							  	</c:when>
							    <c:otherwise>
				<button type="button" onclick="page(${i});">${i}</button>
					    	    </c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${pm.next&&pm.endPage>0}">
				<button type="button" class="page-forward" onclick="page(${pm.endPage + 1});">▶</button>
				<button type="button" class="page-forward" onclick="page(${pm.totalEndPage});">▶|</button>
							</c:if>
				
				
<!-- 				<table class="page-num"> -->
						<td class="prev_btn">
<!-- 					<tr> -->
<!-- 						</td> -->
<!-- 						<td class="page_btn"> -->
<%-- 							<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}" step="1"> --%>
<%-- 								<c:choose> --%>
<%-- 									<c:when test="${pm.scri.page==i}"> --%>
<%-- 								    	<a class="page_num" href="${pageContext.request.contextPath}/contents/contentsList.do?page=${i}${parm}" style="font-weight:bold">${i}</a> &nbsp; --%>
<%-- 								    </c:when> --%>
<%-- 								    <c:otherwise> --%>
<%-- 								    	<a class="page_num" href="${pageContext.request.contextPath}/contents/contentsList.do?page=${i}${parm}">${i}</a> &nbsp; --%>
<%-- 								    </c:otherwise> --%>
<%-- 								</c:choose> --%>
								
<%-- 							</c:forEach> --%>
<!-- 						</td> -->
<!-- 						<td class="next_btn"> -->
<%-- 								<a href="${pageContext.request.contextPath}/contents/contentsList.do?page=${pm.endPage+1}${parm}">▶</a> --%>
<!-- 						</td> -->
<!-- 					</tr> -->
<!-- 				</table> -->
			</div>
	

</div>	


	
	<script>
		document.addEventListener("DOMContentLoaded", function () {
		function showContents(contentType) {
			// 파라미터값을 가져옴
			var url = new URL(window.location.href)
			var urlParams = url.searchParams;
			// 파라미터 서치값 추출
			var contenttypeid = urlParams.get("contenttypeid");
			var keyword = urlParams.get("keyword");
			var page = urlParams.get("page")
			// 파라미터 서치값중 컨텐츠타입값을 클릭한 값으로 변경, 페이지는 1페이지로 변경, 키워드는 변경 x
			urlParams.set("contenttypeid",contentType);
			urlParams.set("page","1");
			// 해당 컨텐츠리스트로 이동
			location.href="${pageContext.request.contextPath}/contents/contentsList.do?"+urlParams;
		// 모든 컨텐츠를 숨김
// 		var allContents = document.querySelectorAll(".listbutton");
// 		allContents.forEach(function (content) {
// 		content.style.display = "none";
// 		});

		// 해당 컨텐츠 유형만 보이도록 함
// 		var contentsToShow = document.querySelectorAll(".listbutton img[alt='" + contentType + "']");
// 		contentsToShow.forEach(function (content) {
// 		content.closest(".listbutton").style.display = "block";
// 		});
		}
		// 전체 클릭시
		document.querySelector("#contentTypeId").addEventListener("click", function () {
		showContents("");
		});
		// "관광지" 버튼 클릭 시
		document.querySelector("#contentTypeId12").addEventListener("click", function () {
		showContents("12");
		});

		// "문화시설" 버튼 클릭 시
		document.querySelector("#contentTypeId14").addEventListener("click", function () {
		showContents("14");
		});

		// "음식점" 버튼 클릭 시
		document.querySelector("#contentTypeId39").addEventListener("click", function () {
		showContents("39");
		});

		// "숙박" 버튼 클릭 시
		document.querySelector("#contentTypeId32").addEventListener("click", function () {
		showContents("32");
		});

		// "축제공연" 버튼 클릭 시
		document.querySelector("#contentTypeId15").addEventListener("click", function () {
		showContents("15");
		});

		// 검색어가 2자 이상인 경우에만 검색 수행
		document.querySelector("button[name='sbt']").addEventListener("click", function () {
			var keyword = document.querySelector("input[name='keyword']").value.trim().toLowerCase();
			if (keyword.length >= 2) {
				// 파라미터값을 가져옴
				var url = new URL(window.location.href);
				var urlParams = url.searchParams;
				// 파라미터 서치값 추출
				var contenttypeid = urlParams.get("contenttypeid");
				var page = urlParams.get("page")
				// 파라미터 서치값의 키워드값을 검색한 값으로 변경, 페이지는 1페이지로 변경, 컨텐츠타입는 변경 x
				urlParams.set("keyword",keyword);
				urlParams.set("page","1");
				var newParams = encodeURI(urlParams);
				// 해당 컨텐츠리스트로 이동
				location.href="${pageContext.request.contextPath}/contents/contentsList.do?"+newParams;
				
				// 검색어가 2자 이상인 경우 검색 수행
// 				var allContents = document.querySelectorAll(".listbutton");
// 				allContents.forEach(function (content) {
// 					var title = content.querySelector(".title").innerText.toLowerCase();
// 					if (title.includes(keyword)) {
// 						content.style.display = "block";
// 					} else {
// 						content.style.display = "none";
// 					}
// 				});
			} else {
			// 2자 미만인 경우에는 알림창 띄우기
				alert("검색어는 2자 이상 입력하셔야 합니다.");
		}
	});
});
		function page(e){
			// 파라미터값을 가져옴
			var url = new URL(window.location.href)
			var urlParams = url.searchParams;
			// 파라미터 서치값 추출
			// 파라미터 서치값중 컨텐츠타입값을 클릭한 값으로 변경, 페이지는 1페이지로 변경, 키워드는 변경 x
			urlParams.set("page",e);
			// 해당 컨텐츠리스트로 이동
			location.href="${pageContext.request.contextPath}/contents/contentsList.do?"+urlParams;
		}
		function ContentsDetail(e){
			// 해당 컨텐츠리스트로 이동
			location.href="${pageContext.request.contextPath}/contents/contentsDetail.do?contentid="+e;
		}
		
</script>
<script>
	function getLike(e){
		var contentid = e;
// 		$(".listbutton").each(function(index,item){
// 			contentid.push($(this).val());
// 		});
			console.log(contentid);
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/contents/getLike.do",
			data:{"contentidList":contentid,"mbno":${mbno}},
			dataType:"json",
			success:function(data){
				console.log(data);
			},
			error:function(){
				console.log("error");
			}
		});
	}
</script>
	
	
	
	
	
	
	<jsp:include page="../source/include/footer.jsp"/>
	
</body>
</html>