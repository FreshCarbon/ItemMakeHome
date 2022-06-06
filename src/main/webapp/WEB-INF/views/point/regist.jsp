<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>

<html>
<%@ include file="../include/head.jsp" %>
<%@ include file="../include/plugin_js.jsp" %>

<body id="page-top">
	<div id="wrapper">

	<%@ include file="../include/sidebar.jsp"%>
	<!-- Topbar -->

	<div id="content-wrapper" class="d-flex flex-column">
		<div id="content">
			<%@ include file="../include/topbar.jsp"%>

			<!-- Begin Page Content -->
			<div class="container-fluid">
    <!-- Main content -->
    <section class="content container-fluid">
		<div class="box-header">
			<h3 class="box-title">포인트 수동입력</h3>
		</div>
	
		<form role="form" method="post" name="regist"  >
					<div class="box-body">
						<div class="form-group">
							<label>보유할ID</label> <input type="text" name="userId"
								class="form-control">
						</div>
						<div class="form-group">
							<label>수동 적립액</label> <input type="text" name="ptCost"
								class="form-control">
						</div>
						<div class="form-group">
							<label>시작일</label> <input type="date" name="ptStart"
								class="form-control">
						</div>
						<div class="form-group">
							<label>만료일</label> <input type="date" name="ptExpire"
								class="form-control">
						</div>
						
						
					</div>


					<div class="box-footer">
				<button type="submit" class="">적립완료</button>
			</div>
		</form>
    </section>
    <!-- /.content -->
  </div>

  <!-- Main Footer -->
  <%@ include file="../include/main_footer.jsp" %>


      </div>
</div>
</div>
</body>
</html>