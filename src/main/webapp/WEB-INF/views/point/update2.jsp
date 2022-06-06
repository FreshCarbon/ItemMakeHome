<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<%@ include file="../include/head.jsp"%>
<%@ include file="../include/plugin_js.jsp"%>

<body id="page-top">
	<div id="wrapper">

		<%@ include file="../include/sidebar.jsp"%>

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<%@ include file="../include/topbar.jsp"%>

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- Main content -->
					<section class="content container-fluid">
						<div class="box-header">
							<h3 class="box-title">포인트 수정</h3>
						</div>
						<form role="form" method="post">
							<div class="box-body">
								<div class="form-group">
									<label>포인트 번호</label> <input type="text" name='ptCode'
										class="form-control" value="${point.ptCode}">
								</div>
								<div class="form-group">
									<label>주문번호</label> <input type="text" name='orderNum'
										class="form-control" value="${point.orderNum}">
								</div>
								<div class="form-group">
									<label>적립금액</label> <input type="text" name='ptCost'
										class="form-control" value="${point.ptCost}">
								</div>
								<div class="form-group">
									<label>보유ID</label> <input type="text" name='userId'
										class="form-control" value="${point.userId}">
								</div>
								<div class="form-group">
									<label>쿠폰 발행일</label> <input type="text" name='ptStart'
										class="form-control" value="${point.ptStart}">
								</div>
								<div class="form-group">
									<label>쿠폰 만료일</label> <input type="text" name='ptExpire'
										class="form-control" value="${point.ptExpire}">
								</div>


								<!-- 수정에 사용할 글번호 -->
								<input type="hidden" name="ptCode" value="${point.ptCode }" />
							</div>

							<div class="box-footer">
								<button type="submit" class="btn btn-primary">수정완료</button>
							</div>
						</form>

					</section>

				</div>

				<%@ include file="../include/main_footer.jsp"%>

				<div class="control-sidebar-bg"></div>
			</div>
		</div>
	</div>

</body>
</html>