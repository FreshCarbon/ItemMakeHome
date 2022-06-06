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
					<!-- Main content -->
					<section class="content container-fluid">
						<div class="box-header">
							<h3 class="box-title">포인트 적립 설정</h3>
						</div>
						<div class="table-responsive">
							<form role="form" method="post">
								<table class="table">
									<tr>
										<td>등급명</td>
										<td>적립율</td>
									</tr>
									<c:forEach var="point" items="${list }">
										<tr>		
											<td>${point.grade}</td>
											<td><input type="text" name="ptRate"
												value="${point.ptRate}"></td>
											<td><input class="btn btn-success" type="submit"
												value="적립율 수정"  /></td>
										</tr>
									</c:forEach>
									<tr>
										<td colspan="5" align="center"><input
											class="btn btn-success" type="button" value="메인으로"
											onclick="location.href='/home'" /></td>
									</tr>
								</table>
							</form>
							<hr>
							<div id="ptList"></div>
							<hr>

							<script type="text/javascript">
								var result = '${msg}';
								if (result == 'regist	') {
									alert("등록되었습니다.");
								} else if (result == 'update') {
									alert("수정되었습니다.");
								}
							</script>
						</div>
					</section>
					<%@ include file="../include/main_footer.jsp"%>
					<%@ include file="../include/scrollTop_button.jsp"%>

				</div>

			</div>

		</div>
	</div>
</body>
</html>