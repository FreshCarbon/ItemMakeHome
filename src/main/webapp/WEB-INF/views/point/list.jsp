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
		<!-- Topbar -->

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<%@ include file="../include/topbar.jsp"%>

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- Main content -->
					<section class="content container-fluid">
						<div class="box-header">
							<h3 class="box-title">포인트 적립 현황</h3>
						</div>
						<div>${msg}</div>
						<div class="table-responsive">
							<table class="table">
								<tr>
									<td>포인트코드</td>
									<td>주문번호</td>
									<td>유저명</td>
									<td>포인트 적립액</td>
									<td>포인트 적립일</td>
									<td>포인트 만료일</td>
								</tr>
								<c:forEach var="point" items="${list }">
									<tr>
										<td><a href="detail?ptCode=${point.ptCode}">
												${point.ptCode} </a></td>
										<td>${point.orderNum}</td>
										<td>${point.userId}</td>
										<td>${point.ptCost}</td>
										<td>${point.ptStart}</td>
										<td>${point.ptExpire}</td>

									</tr>
								</c:forEach>
								<tr>
									<td colspan="5" align="center"><input
										class="btn btn-success" type="button" value="메인으로"
										onclick="location.href='/home'" /> <input
										class="btn btn-success" type="button" value="수동적립"
										onclick="location.href='/point/regist'" /></td>
								</tr>

							</table>
						</div>
						<div>
							<ul>
								<c:if test="${pageMaker.prev }">
									<li><a href="list?page=${pageMaker.startPage -1 }"></a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class=active':''}" />>
										<a href="list?page=${idx }"> ${idx } </a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
									<li><a href="list?page=${pageMaker.endPage +1 }"></a></li>
								</c:if>
							</ul>
						</div>
					</section>



					<script type="text/javascript">
						var result = '${msg}';
						if (result == 'success') {
							alert("등록되었습니다.")
						}
					</script>
					<!-- /.content -->
				</div>
				<!-- /.content-wrapper -->

				<!-- Main Footer -->
				<%@ include file="../include/footer.jsp"%>
				<%@ include file="../include/scrollTop_button.jsp"%>
			</div>
		</div>
	</div>
</body>
</html>