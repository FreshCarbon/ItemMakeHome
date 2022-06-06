<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Sidebar -->
<div id="wrapper">
  <ul class="navbar-nav bg-gradient-success sidebar sidebar-dark accordion" id="accordionSidebar">

     <!-- Sidebar - Brand -->
     <li class="nav-item">
     <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/home">
         <div class="sidebar-brand-icon">
             <i class="bi bi-house-heart-fill"></i>
         </div>
         <div class="sidebar-brand-text mx-3">IMH Admin</div>
     </a>
     </li>
     
     <!-- Sidebar Toggler (Sidebar) -->
     <div class="text-center d-none d-md-inline">
         <button class="rounded-circle border-0" id="sidebarToggle"></button>
     </div>

     <!-- Divider -->
     <hr class="sidebar-divider my-0">

     <!-- Nav Item - Dashboard -->
     <li class="nav-item">
         <a class="nav-link" href="/home">
             <i class="fas fa-fw fa-tachometer-alt"></i>
             <span>Dashboard</span></a>
     </li>

     <!-- Divider -->
     <hr class="sidebar-divider d-none d-md-block">

     <!-- Customer Heading -->
     <div class="sidebar-heading">
         Customer
     </div>

     <!-- Nav Item - Customer -->
     <li class="nav-item">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCustomer"
             aria-expanded="true" aria-controls="collapseCustomer">
             <i class="bi bi-people-fill"></i>
             <span>회원관리</span>
         </a>
         <div id="collapseCustomer" class="collapse" aria-labelledby="headingCustomer" data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 <h6 class="collapse-header">회원관리</h6>
                 <a class="collapse-item" href="#">회원조회/수정</a>
             </div>
         </div>
     </li>
     
     <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

     <!-- Product Heading -->
     <div class="sidebar-heading">
         Product
     </div>          

     <!-- Nav Item - Product-->
     <li class="nav-item">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseProduct"
             aria-expanded="true" aria-controls="collapseProduct">
             <i class="bi bi-gift-fill"></i>
             <span>상품관리</span>
         </a>
         <div id="collapseProduct" class="collapse" aria-labelledby="headingProduct"
             data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 <h6 class="collapse-header">상품관리</h6>
                 <a class="collapse-item" href="#">상품조회/수정</a>
                 <a class="collapse-item" href="#">상품등록</a>
                 <a class="collapse-item" href="#">구매평관리</a>
             </div>
         </div>
     </li>
     
     <!-- Nav Item - Event -->
     <li class="nav-item">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseEvent"
             aria-expanded="true" aria-controls="collapseEvent">
             <i class="bi bi-calendar2-heart-fill"></i>
             <span>기획전관리</span>
         </a>
         <div id="collapseEvent" class="collapse" aria-labelledby="headingEvent"
             data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 <h6 class="collapse-header">O!SELE</h6>
                 <a class="collapse-item" href="#">O!SELE 등록</a>
                 <a class="collapse-item" href="#">O!SELE 조회/수정</a>
                 <h6 class="collapse-header">이벤트</h6>
                 <a class="collapse-item" href="#">이벤트 등록</a>
                 <a class="collapse-item" href="#">이벤트 조회/수정</a>
             </div>
         </div>
     </li>
     
     <!-- Nav Item - Category -->
     <li class="nav-item">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCate"
             aria-expanded="true" aria-controls="collapseCate">
             <i class="bi bi-tag-fill"></i>
             <span>카테고리</span>
         </a>
         <div id="collapseCate" class="collapse" aria-labelledby="headingCate"
             data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 <h6 class="collapse-header">카테고리 관리</h6>
                 <a class="collapse-item" href="/cate/list">카테고리 조회/수정</a>
             </div>
         </div>
     </li>
     
     <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

     <!-- Sales Heading -->
     <div class="sidebar-heading">
         Sales
     </div> 
     
     <!-- Nav Item -Sales -->
     <li class="nav-item">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSales"
             aria-expanded="true" aria-controls="collapseSales">
             <i class="bi bi-cart-fill"></i>
             <span>주문관리</span>
         </a>
         <div id="collapseSales" class="collapse" aria-labelledby="headingSales"
             data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 <h6 class="collapse-header">주문관리</h6>
                 <a class="collapse-item" href="#">발주/발송 관리</a>
                 <a class="collapse-item" href="#">배송현황 관리</a>
                 <a class="collapse-item" href="#">주문취소 관리</a>
             </div>
         </div>
     </li>
 
      <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

     <!-- Sales Heading -->
     <div class="sidebar-heading">
         Business Profits
     </div>     
     
     <!-- Nav Item - Profit -->
     <li class="nav-item">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseProfit"
             aria-expanded="true" aria-controls="collapseProfit">
             <i class="fas fa-fw fa-chart-area"></i>
             <span>매출관리</span>
         </a>
         <div id="collapseProfit" class="collapse" aria-labelledby="headingProfit"
             data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 <h6 class="collapse-header">매출관리</h6>
                 <a class="collapse-item" href="#">총 매출조회</a>
                 <a class="collapse-item" href="#">상품 매출 조회</a>
             </div>
         </div>
     </li>
     
     <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Benefit Heading -->
    <div class="sidebar-heading">
        Benefit
    </div>
    <!-- Nav Item - Benefit -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBenefit"
            aria-expanded="true" aria-controls="collapseBenefit">
            <i class="bi bi-ticket-perforated-fill"></i>
            <span>혜택관리</span>
        </a>
        <div id="collapseBenefit" class="collapse" aria-labelledby="headingBenefit"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">쿠폰관리</h6>
                <a class="collapse-item" href="/coupon/list">쿠폰전체 조회(생성,중지)</a>
                <a class="collapse-item" href="/coupon/list2">쿠폰발급 조회(취소)</a>
                <h6 class="collapse-header">포인트관리</h6>
                <a class="collapse-item" href="/point/list">포인트 적립현황(수동적립)</a>
                <a class="collapse-item" href="/point/list2">포인트 적립설정</a>
                <a class="collapse-item" href="/point/list3">포인트 사용내역</a>
            </div>
        </div>
    </li>
    
     <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Board Heading -->
    <div class="sidebar-heading">
        Board
    </div>

    <!-- Nav Item - Board -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBoard"
            aria-expanded="true" aria-controls="collapseBoard">
           <i class="bi bi-clipboard-data-fill"></i>
            <span>게시글 관리</span>
        </a>
        <div id="collapseBoard" class="collapse" aria-labelledby="headingBoard"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">회원 게시글</h6>
                <a class="collapse-item" href="#">게시글 조회</a>
                <a class="collapse-item" href="#">게시글신고 관리</a>
                <a class="collapse-item" href="#">댓글신고 관리</a>
                <h6 class="collapse-header">관리자 게시글</h6>
                <a class="collapse-item" href="#">공지사항</a>
                <a class="collapse-item" href="#">자주하는질문</a>
            </div>
        </div>
    </li>
             
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

     <!-- CS Heading -->
     <div class="sidebar-heading">
         Customer Service
     </div>
     <!-- Nav Item - CS-->
     <li class="nav-item">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCS"
             aria-expanded="true" aria-controls="collapseCS">
             <i class="bi bi-quora"></i>
             <span>고객문의</span>
         </a>
         <div id="collapseCS" class="collapse" aria-labelledby="headingCS"
             data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 <h6 class="collapse-header">고객문의 관리</h6>
                 <a class="collapse-item" href="#">상품 Q&A</a>
                 <a class="collapse-item" href="#">게시판 Q&A</a>
             </div>
         </div>
     </li>
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

     <!-- CS Heading -->
     <div class="sidebar-heading">
         Admin
     </div>
     <!-- Nav Item - CS-->
     <li class="nav-item">
         <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseAdmin"
             aria-expanded="true" aria-controls="collapseAdmin">
             <i class="bi bi-gpu-card"></i>
             <span>관리자</span>
         </a>
         <div id="collapseAdmin" class="collapse" aria-labelledby="headingAdmin"
             data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 <h6 class="collapse-header">관리자</h6>
                 <a class="collapse-item" href="#">관리자 현황</a>
                 <a class="collapse-item" href="#">관리자 등록</a>
             </div>
         </div>
     </li>
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">
 </ul>
 </div>
 <!-- End of Sidebar -->

