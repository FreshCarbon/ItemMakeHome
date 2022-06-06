<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>

<html>
<%@ include file="../include/head.jsp"%>
<%@ include file="../include/plugin_js.jsp"%>

<body id="page-top">
	<div id="wrapper">

		<%@ include file="../include/sidebar.jsp"%>
		<!-- Topbar -->

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<%@ include file="../include/topbar.jsp"%>

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<div class="box-header">
						<h3 class="box-title">포인트 수동적립</h3>
					</div>
					<!-- Main content -->
					<section class="content container-fluid">

						<div class="box">
							<div class="box-header">
								<h3 class="box-title">상세보기</h3>
							</div>
							<div class="box-body">
								<div class="form-group">
									<label>포인트번호</label> <input type="text" name="ptCode"
										class="form-control" value="${point.ptCode}"
										readonly="readonly" />
								</div>
								<div class="form-group">
									<label>주문번호</label> <input type="text" name="orderNum"
										class="form-control" value="${point.orderNum}"
										readonly="readonly" />
								</div>
								<div class="form-group">
									<label>사용자ID</label> <input type="text" name="userId"
										class="form-control" value="${point.userId}"
										readonly="readonly" />
								</div>
								<div class="form-group">
									<label>적립금액</label> <input type="text" name="ptCost"
										class="form-control" value="${point.ptCost}"
										readonly="readonly" />
								</div>
								<div class="form-group">
									<label>포인트 적립일</label> <input type="text" name="ptStart"
										class="form-control" value="${point.ptStart}"
										readonly="readonly" />
								</div>

								<div class="form-group">
									<label>포인트 만료일</label> <input type="text" name="ptExpire"
										class="form-control" value="${point.ptExpire}"
										readonly="readonly" />
								</div>
							</div>

						</div>
						<div class="box-footer">
							<button id="main" class="btn btn-success">메인</button>
							<button id="update" class="btn btn-warning">지급포인트 수정</button>
							<button id="delete" type="submit" class="btn btn-danger">포인트
								취소</button>
							<button id="list" class="btn btn-primary">포인트 목록</button>
						</div>
					</section>

					<script>
						$(function() {
							//메인 버튼을 눌렀을 때 처리
							$("#main").click(function() {
								location.href = "/home";
							});
							//목록 버튼을 눌렀을 때 처리
							$("#list").click(function() {
								location.href = "/point/list";
							});
							//삭제 버튼을 눌렀을 때 처리
							$("#delete").click(function() {
								location.href = "/point/delete?ptCode=" + $
								{
									point.ptCode
								}
								;
							});
							//수정 버튼을 눌렀을 때 처리
							$("#update").click(function() {
								location.href = "/point/update?ptCode=" + $
								{
									point.ptCode
								}
								;
							});
						})
					</script>
					<!-- /.content -->
				</div>
				<%@ include file="../include/main_footer.jsp"%>
			</div>
		</div>
	</div>

</body>
</html>