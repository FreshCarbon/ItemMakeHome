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
						<form id='form' action="uploadForm" method="post"
							enctype="multipart/form-data">
							<div class="box-body">
								<div class="form-group">
									<label>카테고리명</label> <input type="text" name="cateName"
										class="form-control" placeholder="카테고리명">
								</div>
								<div class="form-group">
									<label>사진 업로드</label> <input type="file" name="cateImg"
										class="form-control" placeholder="파일">
								</div>
							</div>
							<div class="box-footer">
								<button type="submit" class="btn btn-primary">작성완료</button>
							</div>
						</form>
					</section>

					<%@ include file="../include/footer.jsp"%>
					<%@ include file="../include/scrollTop_button.jsp"%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>