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

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<%@ include file="../include/topbar.jsp"%>

				<div class="container-fluid">
					<!-- Main content -->
					<section class="content container-fluid">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">상세보기</h3>
							</div>
							<div class="box-body">
								<div class="form-group">
									<label>쿠폰고유번호</label> <input type="text" name="cpUnique"
										class="form-control" value="${coupon.cpUnique}"
										readonly="readonly" />
								</div>
								<div class="form-group">
									<label>보유자명</label> <input type="text" name="userId"
										class="form-control" value="${coupon.userId}"
										readonly="readonly" />
								</div>
								<div class="form-group">
									<label>쿠폰번호</label> <input type="text" name="cpCode"
										class="form-control" value="${coupon.cpCode}"
										readonly="readonly" />
								</div>
								<div class="form-group">
									<label>쿠폰명</label> <input type="text" name="cpName"
										class="form-control" value="${coupon.cpName}"
										readonly="readonly" />
								</div>

								<div class="form-group">
									<label>할인율</label> <input type="text" name="cpPercent"
										class="form-control" value="${coupon.cpPercent}"
										readonly="readonly" />
								</div>
								<div class="form-group">
									<label>쿠폰 발행일</label> <input type="text" name="cpStart"
										class="form-control" value="${coupon.cpStart}"
										readonly="readonly" />
								</div>
								<div class="form-group">
									<label>쿠폰 만료일</label> <input type="text" name="cpExpire"
										class="form-control" value="${coupon.cpExpire}"
										readonly="readonly" />
								</div>
								<div class="form-group">
									<label>쿠폰 타입</label> <input type="text" name="cpType"
										class="form-control" value="${coupon.cpType}"
										readonly="readonly" />
								</div>
								<div class="form-group">
									<label>쿠폰 상태</label> <input type="text" id="cpState"
										name="cpState" class="form-control" value="${coupon.cpState}"
										readonly="readonly" />

									<script type="text/javascript">
										var state = document
												.getElementById("cpState").value;

										if(state == 1) {
											document.getElementById("cpState").value = "활성화";
										}
										else{
											document.getElementById("cpState").value = "비활성화";											
										}
										
									</script>
								</div>
							</div>

						</div>
						<div class="box-footer">
							<button id="main" class="btn btn-success">메인</button>
							<button id="update" class="btn btn-warning">지급쿠폰수정</button>
							<button id="delete" type="submit" class="btn btn-danger">발급중지</button>
						</div>
					</section>

					<script>
						$(function() {
							//메인 버튼을 눌렀을 때 처리
							$("#main").click(function() {
								location.href = "/home";
							});
							//삭제 버튼을 눌렀을 때 처리
							$("#delete").click(function() {
								location.href = "/coupon/delete2?cpUnique=" + ${coupon.cpUnique};
							});
							//수정 버튼을 눌렀을 때 처리
							$("#update").click(function() {
								location.href = "/coupon/update2?cpUnique=" + ${coupon.cpUnique};
							});
						})
					</script>
					<!-- /.content -->
				</div>
				<!-- /.content-wrapper -->

				<!-- Main Footer -->
				<%@ include file="../include/main_footer.jsp"%>


			</div>
		</div>
	</div>

</body>
</html>