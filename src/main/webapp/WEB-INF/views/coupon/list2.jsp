<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html lang="ko" xmlns="http://www.w3.org/1999/xhtml">
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
							<h3 class="box-title">쿠폰 발급조회</h3>
						</div>
					<section class="content container-fluid">
						<div>${msg}</div>
						<div class="table-responsive">
							<table class="table">
								<tr>
									<td>고유번호</td>
									<td>쿠폰코드</td>
									<td>보유ID</td>
									<td>쿠폰명</td>
									<td>쿠폰발급일</td>
									<td>쿠폰만료일</td>
									<td>쿠폰상태</td>
								</tr>
								<c:forEach var="coupon" items="${list}">
									<tr>
										<td><a href="detail2?cpUnique=${coupon.cpUnique}">
												${coupon.cpUnique} </a></td>
										<td><a href="detail?cpCode=${coupon.cpCode}">${coupon.cpCode}</a></td>
										<td>${coupon.userId}</td>
										<td>${coupon.cpName}</td>
										<td>${coupon.cpStart}</td>
										<td>${coupon.cpExpire}</td>
										<td>
										<c:set var="state" value="${coupon.cpState}"/>
										<c:choose>
											<c:when test="${state eq '1'}">
												활성화
											</c:when>
											<c:otherwise>
												비활성화
											</c:otherwise>
										</c:choose>
										</td>

									</tr>
								</c:forEach>
								<tr>
									<td colspan="5" align="center"><input
										class="btn btn-success" type="button" value="메인으로"
										onclick="location.href='/home'" /></td>
								</tr>
							</table>
						</div>
						<div>
							<ul class="pagination">
								<c:if test="${pageMaker.prev }">
									<li><a href="list2?page=${pageMaker.startPage -1 }"></a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class=active':''}" />>
										<a href="list2?page=${idx }"> ${idx } </a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
									<li><a href="list2?page=${pageMaker.endPage +1 }"></a></li>
								</c:if>
							</ul>
						</div>
						
						
					</section>
					<script type="text/javascript">
						var result = '${msg}';
						if (result == 'regist	') {
							alert("등록되었습니다.");
						} else if (result == 'update') {
							alert("수정되었습니다.");
						} else if (result == 'delete') {
							alert("발급 취소되었습니다.");
						}
					</script>

					<!-- Main Footer -->
					<%@ include file="../include/main_footer.jsp"%>
					<%@ include file="../include/scrollTop_button.jsp"%>
				</div>
			</div>
			</div>
		</div>
</body>
</html>