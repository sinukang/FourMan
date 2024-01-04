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

    <title>상품 거래 상세</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/normal_css/index.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/normal_css/tradedProductViewDetail.css" rel="stylesheet">

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
            <li class="nav-item">
                <a class="nav-link" href="./reportList.jsp">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>신고 관리</span></a>
            </li>
            
            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item active">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities1"
                    aria-expanded="true" aria-controls="collapseUtilities1">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>상품 관리</span>
                </a>
                <div id="collapseUtilities1" class="collapse show" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Custom Utilities:</h6> -->
                        <a class="collapse-item" href="registeredProductList.jsp">등록 상품 리스트</a>
                        <a class="collapse-item active" href="./tradedProductList.jsp">상품 거래 내역</a>
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
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePage1"
                    aria-expanded="false" aria-controls="collapsePage1">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>포인트 관리</span>
                </a>
                <div id="collapsePage1" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
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
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePage2"
                    aria-expanded="false" aria-controls="collapsePage2">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>쿠폰 관리</span>
                </a>
                <div id="collapsePage2" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Login Screens:</h6> -->
                        <a class="collapse-item" href="./couponList.jsp">쿠폰 내역</a>
                        <a class="collapse-item" href="./couponProvide.jsp">쿠폰 발급하기</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePage3"
                    aria-expanded="false" aria-controls="collapsePage3">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>고객지원</span>
                </a>
                <div id="collapsePage3" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Login Screens:</h6> -->
                        <a class="collapse-item" href="./noticeList.jsp">공지사항</a>
                        <a class="collapse-item" href="./FAQList.jsp">자주묻는 질문</a>
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
                    <h1 class="h3 my-5 text-gray-800 font-weight-bold text-center">상품 거래 상세</h1>
                    

	                    

                    <div class="row">

                        <div class="col-lg-6 div-receipt">

                            <div class="card shadow mb-5">
                            	<div class="card-header py-3">
                            		<a href="./tradedProductList.jsp" class="btn btn-icon-split btn-discord">
                            			<span class="icon">
	                            			<i class="fas fa-arrow-left"></i>
                            			</span>
                            			<span class="text font-weight-bold">상품 거래 내역</span>
                            		</a>
                            		
                            	</div>
                            	<div class="card-body p-5">
                            		<div class="my-4 d-flex jc-between">
                            			<span class="text-gray-800 text-lg font-weight-bold">주문번호</span>
                            			<span class="">202318280000001</span>
                            		</div>
                            		<div class="my-4 d-flex jc-between">
                            			<span class="text-gray-800 text-lg font-weight-bold">결제일</span>
                            			<span class="">2023-12-28 13:58:40</span>
                            		</div>
                            		<div class="my-4 d-flex jc-between">
                            			<span class="text-gray-800 text-lg font-weight-bold">판매자</span>
                            			<span class="">둘리</span>
                            		</div>
                            		<div class="my-4 d-flex jc-between">
                            			<span class="text-gray-800 text-lg font-weight-bold">구매자</span>
                            			<div class="">
                            				<span class="">고길동</span>
	                            			<span class="ml-4">010-1111-2222</span>
                            			</div>
                            		</div>
                            		<div class="my-4 d-flex div-discount jc-between">
                            			<span class="my-2 text-gray-800 text-lg font-weight-bold">할인내역</span>
                            			<div class="py-2 pl-3 d-flex jc-between">
	                            			<span class="d-flex align-items-center text-gray-800 font-weight-bold">쿠폰</span>
	                            			<div class="d-flex div-amount">
	                            				<span class="">쿠폰 이름 ( - 20 % )</span>
		                            			<input type="text" class="ml-3 input-amount" readonly>
	                            			</div>
                            			</div>
	                            		<div class="py-2 pl-3 d-flex jc-between">
                            				<span class="d-flex align-items-center text-gray-800 font-weight-bold">포인트</span>
                            				<div class="d-flex div-amount">
		                            			<input type="text" class="input-amount" readonly>
                            				</div>
                            			</div>
                            		</div>
                            		<div class="my-4 d-flex jc-between">
                            			<span class="text-gray-800 text-lg font-weight-bold">총 결제금액</span>
                            			<div class="d-flex div-amount">
	                            			<input type="text" class="input-amount" readonly>
                            			</div>
                            		</div>
                            		<div class="my-4 d-flex jc-between">
                            			<span class="text-gray-800 text-lg font-weight-bold">결제수단</span>
                            			<span class="">현금카드/KG이니시스</span>
                            		</div>
                            	</div>
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
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>
	
	<script>
		
	</script>
	
</body>
</html>