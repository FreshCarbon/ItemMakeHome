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

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<section class="content container-fluid">
						<div class="box-header">
							<h3 class="box-title">쿠폰생성</h3>
						</div>

						<form role="form" method="post" name="regist">
							<div class="box-body">
								<div class="form-group">
									<label>쿠폰명</label> <input type="text" name="cpName"
										class="form-control" placeholder="쿠폰명">
								</div>
								<div class="form-group">
									<label>할인율</label> <input type="text" class="form-control"
										name="cpPercent" placeholder="할인율">
								</div>
								<div class="form-group">
									<label>만료일(유동)</label> <input type="text" name="cpExpireA"
										class="form-control" placeholder="시작일+">
								</div>
								<div class="form-group">
									<label>만료일(고정)</label> <input type="date" name="cpExpireB"
										class="form-control">
								</div>

								<div>
									<label>쿠폰 타입</label>
								</div>
								<select autofocus name="cpType">
									<option>자동생성</option>
									<option>다운로드</option>
								</select>
							</div>


							<div class="box-footer">
								<button type="submit" class="btn btn-primary">작성완료</button>
							</div>
						</form>
						<hr>
						<form action="/coupon/cpActive/" method="post" role="form" >
							<input type="hidden" name="userId" value="user1">
							<input type="hidden" name="cpCode" value="2">
							<button type="submit" class="btn btn-primary">임시생성</button>
						</form>	
					</section>

					<%@ include file="../include/main_footer.jsp"%>

				</div>
			</div>
		</div>
	</div>
</body>
</html>