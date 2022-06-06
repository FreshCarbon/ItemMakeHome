<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml">
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

				<section class="content container-fluid">
					<div class="table-responsive">
							<table class="table">
								<tr>
									<td>(카테고리 섬네일)</td>
									<td>카테고리 번호</td>
									<td>카테고리명</td>
								</tr>
								<c:forEach var="list" items="${list}">
									<tr>
										<td>${cate.cateImg}</td>
										<td><a href="detail?cateCode=${cate.cateCode}">
												${cate.cateCode} </a></td>
										<td>${cate.cateName}</td>
										<td><input type="button" value="수정"
											onclick="href='cate/update'"></td>
										<td><input type="button" value="삭제"
											onclick="href='cate/delete'"></td>
									</tr>
								</c:forEach>
								<tr>
									<td colspan="5" align="center"><input
										class="btn btn-success" type="button" value="메인으로"
										onclick="location.href='/home'" /> <input
										class="btn btn-success" type="button" value="카테고리 생성"
										onclick="location.href='/cate/regist'" /></td>
								</tr>
							</table>
						</div>
				</section>

				<%@ include file="../include/footer.jsp"%>
				<%@ include file="../include/scrollTop_button.jsp"%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>