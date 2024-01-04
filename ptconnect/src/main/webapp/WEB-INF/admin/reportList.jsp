<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>신고 내역</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/admin/css/sb-admin-2.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/admin/normal_css/index.css" rel="stylesheet">

</head>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="./trainerRegisterList.jsp">
                <div class="sidebar-brand-icon "> <!-- rotate-n-15 -->
                    <i class="fas fa-wrench"></i> <!-- fa-laugh-wink -->
                </div>
                <div class="sidebar-brand-text mx-3">관리자 페이지</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">
            
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item ">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
                    aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>승인 요청 관리</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Custom Components:</h6> -->
                        <a class="collapse-item " href="./trainerRegisterList.jsp">트레이너 등록 요청</a>
                        <a class="collapse-item " href="./centerRegisterList.jsp">센터 등록 요청</a>
                    </div>
                </div>
            </li>
            
            <!-- <i class="fas fa-fw fa-chart-area"></i> -->
            <!-- <i class="fas fa-fw fa-cog"></i> -->
            <!-- <i class="fas fa-fw fa-tachometer-alt"></i> -->
            

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <!-- <div class="sidebar-heading">
                Interface
            </div> -->
            
            <!-- Nav Item - Charts -->
            <li class="nav-item active">
                <a class="nav-link" href="./reportList.jsp">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>신고 관리</span></a>
            </li>
            
            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities1"
                    aria-expanded="true" aria-controls="collapseUtilities1">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>상품 관리</span>
                </a>
                <div id="collapseUtilities1" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Custom Utilities:</h6> -->
                        <a class="collapse-item" href="./registeredProductList.jsp">등록 상품 리스트</a>
                        <a class="collapse-item" href="./tradedProductList.jsp">상품 거래 내역</a>
                        <!-- <a class="collapse-item" href="utilities-animation.html">센터 신고 내역</a>
                        <a class="collapse-item" href="utilities-other.html">Other</a> -->
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities2"
                    aria-expanded="true" aria-controls="collapseUtilities2">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>채팅 관리</span>
                </a>
                <div id="collapseUtilities2" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Custom Utilities:</h6> -->
                        <a class="collapse-item" href="./managerChatList.jsp">관리자 채팅 내역</a>
                        <a class="collapse-item" href="./customerChatList.jsp">고객 채팅 내역</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Heading -->
            <!-- <div class="sidebar-heading">
                Addons
            </div> -->
            
            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities3"
                    aria-expanded="false" aria-controls="collapseUtilities3">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>회원 관리</span>
                </a>
                <div id="collapseUtilities3" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Custom Utilities:</h6> -->
                        <a class="collapse-item" href="./userManagement.jsp">회원 관리</a>
                        <a class="collapse-item" href="./penaltyUserManagement.jsp">패널티 회원 관리</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="./reviewManagement.jsp">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>리뷰 관리</span></a>
            </li>
            
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePage3"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>포인트 관리</span>
                </a>
                <div id="collapsePage3" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Login Screens:</h6> -->
                        <a class="collapse-item" href="./pointList.jsp">포인트 내역</a>
                        <a class="collapse-item" href="./pointManagement.jsp">포인트 관리</a>
                        <!-- <a class="collapse-item" href="forgot-password.html">1:1 문의</a> -->
                        <!-- <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Other Pages:</h6>
                        <a class="collapse-item" href="404.html">404 Page</a>
                        <a class="collapse-item" href="blank.html">Blank Page</a> -->
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePage4"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>쿠폰 관리</span>
                </a>
                <div id="collapsePage4" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Login Screens:</h6> -->
                        <a class="collapse-item" href="./couponList.jsp">쿠폰 내역</a>
                        <a class="collapse-item" href="./couponProvide.jsp">쿠폰 발급하기</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePage5"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>고객지원</span>
                </a>
                <div id="collapsePage5" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Login Screens:</h6> -->
                        <a class="collapse-item" href="./noticeList.jsp">공지사항</a>
                        <a class="collapse-item" href="./FAQList.jsp ">자주묻는 질문</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 my-5 pl-3 text-gray-800 font-weight-bold">신고 내역</h1>

                    <div class="row">

                        <div class="col-lg-12">

                            <!-- Circle Buttons -->
                            <div class="card shadow mb-4">
                            	<table class="table tb1">
                            		<tr>
                            			<th>
                            				<input type="checkbox" class="selectAll">
                            			</th>
                            			<th>신고번호</th>
                            			<th>누적 신고</th>
                            			<th>분류</th>
                            			<th>유형</th>
                            			<th>닉네임</th>
                            			<th>내용</th>
                            			<th>패널티여부</th>
                            			<th>글삭제여부</th>
                            			<th>신고날짜</th>
                            		</tr>
                            		<c:forEach var="i" begin="0" end="9" step="1">
                            			<tr>
                            				<td>
                            					<input type="checkbox" class="selectOne" value="${i}" data-code="${i*3}">
                            				</td>
	                            			<td>${i}</td>
	                            			<td>누적 신고${i}</td>
	                            			<td>분류${i}</td>
	                            			<td>유형${i}</td>
	                            			<td>닉네임${i}</td>
	                            			<td>
	                            				<a href="#">내용${i}</a>
	                            			</td>
	                            			<td></td>
	                            			<td></td>
	                            			<td>2023-12-1${i}</td>
	                            		</tr>
                            		</c:forEach>
                            	</table>


                            	<!-- 삭제, 복구 버튼 영역 -->
                            	<div class="row my-4">
                            		<div class="col-lg-12 d-flex justify-content-center">
                            			<a href="javascript:updateState('Y');" class="btn btn-secondary btn-icon-split btn-scale-125">
                            				<span class="icon">
                            					<i class="fas fa-trash"></i>
                            				</span>
                            				<span class="text">삭제하기</span>
                            			</a>
                            			<a href="javascript:updateState('N');" class="btn btn-light btn-icon-split btn-scale-125">
                            				<span class="icon text-gray-600">
                            					<i class="fas fa-undo"></i>
                            				</span>
                            				<span class="text">복구하기</span>
                            			</a>
                            		</div>
                            	</div>
                            	<!-- 삭제, 복구 버튼 영역 -->
                            	

                            	<!-- 페이징 영역 시작 -->
                            	<div class="row my-4">
                            		<div class="col-lg-12">
                            			<div class="pagination-area">
                            				<ul class="pagination">
                            					<li class="paginate_button page-item previous disabled">
                            						<a href="#" aria-controls="dataTable" class="page-link">
                            							◀
                            						</a>
                            					</li>
                            					<c:forEach var="i" begin="1" end="5" step="1">
                            						<c:choose>
                            							<c:when test="${i eq 1}">
                            								<li class="paginate_button page-item active">
			                            						<a href="#" aria-controls="dataTable" class="page-link">
			                            							${i}
			                            						</a>
			                            					</li>
                            							</c:when>
                            							<c:otherwise>
                            								<li class="paginate_button page-item">
			                            						<a href="#" aria-controls="dataTable" class="page-link">
			                            							${i}
			                            						</a>
			                            					</li>
                            							</c:otherwise>
                            						</c:choose>
		                            						
                            					</c:forEach>
	                            					
                            					<li class="paginate_button page-item next">
                            						<a href="#" aria-controls="dataTable" class="page-link">
                            							▶
                            						</a>
                            					</li>
                            				</ul>
                            			</div>
									</div>
                            	</div>
								<!-- 페이징 영역 끝-->
								
                            </div>

                        </div>

                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/css/admin/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/css/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/css/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/css/admin/js/sb-admin-2.min.js"></script>

</body>
<script>
	
	//사이드바 활성화 표시
	function activeNavItem(){
		
		let currentNav = $(".nav-item");
		for(let i = 0; i < currentNav.length; i++){
			$(currentNav[i]).removeClass("active");
		}
		if($(".collapse").hasClass("show")){
			$(".collapse").removeClass("show");
		}
		if($(".collapse-item").hasClass("active")){
			$(".collapse-item").removeClass("active");
		}
		
		//사이드바  선택된 메뉴에 활성화 & 강조표시(위에서부터(0부터) n번째)
		$(currentNav[1]).addClass("active");
	}
	activeNavItem();
	
	//매개변수 값 체크 - true : undefined 또는 빈 값, false : 값이 있음
	function isEmpty(value){
		if(typeof value == "undefined" || value == null || value == "" || value.length == 0){
			return true;
		}else{
			return false;
		}
	}
	
	//전체 선택 or 해제
	var selectAll = document.querySelector(".selectAll");
	var selectOneArr = document.querySelectorAll(".selectOne");
	
	selectAll.addEventListener("click", function(){
		var isChecked = selectAll.checked;
		if(isChecked){
			for(let i = 0; i < selectOneArr.length; i++){
				selectOneArr[i].checked = true;
			}
		}else{
			for(let i = 0; i < selectOneArr.length; i++){
				selectOneArr[i].checked = false;
			}
		}
	});
	
	for(let selectOne of selectOneArr){
		selectOne.addEventListener("click", function(){
			let totalCount = selectOneArr.length;
			let checkedCount = document.querySelectorAll(".selectOne:checked").length;
			if(totalCount == checkedCount){
				selectAll.checked = true;
			}else{
				selectAll.checked = false;
			}
		});
	}
	
	
	function updateState(YN){
		
		let delYN = YN;
		
		let rpno = $(".selectOne:checked");
		if(isEmpty(rpno)){
			alert("변경할 글을 선택해주세요");
			return;
		}else{
			let rpnoArr = [];
			let rpbdnoArr = [];
			for(let i = 0; i < rpno.length; i++){
				rpnoArr.push(rpno[i].value);
				rpbdnoArr.push(rpno[i].dataset['code']);
			}
			console.log(delYN);
			console.log(rpnoArr);
			console.log(rpbdnoArr);
			
			$.ajax({
				type: "post",
				url: "${pageContext.request.contextPath}/",
				traditional: true,
				data: {"delYN" : delYN,
						"rpnoArr" : JSON.stringify(rpnoArr),
						"rpbdnoArr" : JSON.stringify(rpbdnoArr)
				},
				cache: false,
				success: function(data){
					if(data.value != 0){
						if(delYN == 'Y'){
							alert(data.value + "개의 글이 삭제 되었습니다.");
							location.reload();
						}else{
							alert(data.value + "개의 글이 복구 되었습니다.");
							location.reload();
						}
					}else if(data.value == 0){
						alert("변경된 글이 없습니다.")
					}
				},
				error: function(){
					alert("글 변경 에러");
				}
			});	//ajax 끝
			
		}
			
	}//updateState() 끝
	
		
	$(document).ready(function(){
		
		//신고목록에서 신고된 원본글 삭제 & 복구
// 		function updateState(YN){
			
// 			let delYN = YN;
			
// 			let rpno = $(".selectOne:checked");
// 			alert(rpno.length());
// 			for(let i = 0; i < rpno.length; i++){
// 				console.log(rpno[i]);
// 			}
			
// 			let rpnoArr = [];	//rpno들을 담는 배열
// 			let reportedBoardNum = [];
// 			reportedBoardNum = $(".deleteBox:checked").parent(".delCheck").siblings(".reportedBdno").children(".rptNum");
// 			let reportedBoardNumArr = [];	//신고된 글들의 번호를 담는 배열
			
// 			if(rpno.length == 0){
// 				alert("삭제할 글을 선택해주세요");
// 				return;
// 			}else{
				
// 				$(rpno).each(function(){
// 					rpnoArr.push($(this).val());
// 				});
				
// 				for (var i = 0; i < reportedBoardNum.length; i++) {
// 					reportedBoardNumArr.push(reportedBoardNum[i].value);
// 					console.log(reportedBoardNumArr[i]);
// 				}			
				
// 				if (confirm('정말 변경 하시겠습니까?')) {
// 					$.ajax({
// 						type : "post",
// 						url : "${pageContext.request.contextPath}/report/reportedBoardDeleteUpdate.do",
// 						traditional : true,
// 						data : {"delYN" : delYN,
// 								"rpnoArr" : JSON.stringify(rpnoArr),
// 								"reportedBoardNumArr" : JSON.stringify(reportedBoardNumArr)},
// 						dataType : "json",
// 						cache : false,
// 						success : function(data){
// 							if(data.value != 0){
// 								if(delYN == 'Y'){
// 									alert(data.value + " 개의 글이 삭제 됐습니다.");
// 									location.reload();
// 								}else{
// 									alert(data.value + " 개의 글이 삭제 취소 됐습니다.");
// 									location.reload();
// 								}
// 							}else if(data.value == 0){
// 								alert("삭제된 글이 없습니다.");
// 							}
// 						},
// 						error : function(){
// 							alert("삭제 에러");
// 						}
// 					});
// 				}else {
// 					return;
// 				}
// 			}
// 		}
		
		
	});
	
	
	
</script>
</html>