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
					<div class="box-header">
						<h3 class="box-title">쿠폰 전체조회</h3>
					</div>

					<div class="search">
						<select name="searchType" id="searchType">
							<option value="n"
								<c:out value="${cri.searchType == null?'selected':''}" />>
								---</option>
							<option value="t"
								<c:out value="${cri.searchType == null?'selected':''}" />>
								쿠폰명</option>
							<option value="w"
								<c:out value="${cri.searchType == null?'selected':''}" />>
								쿠폰타입</option>
							<option value="tw"
								<c:out value="${cri.searchType == null?'selected':''}" />>
								타입+이름</option>

						</select>
						<script>
							$(function() {
								$('#searchBtn')
										.click(
												function() {
													self.location = "list"
															+ '${pageMaker.makeQuery(1)}'
															+ "&searchType="
															+ $(
																	"select option:selected")
																	.val()
															+ "&keyword="
															+ encodeURIComponent($(
																	'#keywordInput')
																	.val());
												});
							});
						</script>

					</div>
					<div>
						<input type="text" name='keyword' id="keywordInput"
							value='${cri.keyword}'>
						<button id='searchBtn'>Search</button>
					</div>

					<!-- 페이징 후 보여지는 갯수 처리 -->
					<div style="float: right;">
						<select id="cntPerPage" name="sel" onchange="selChange()">
							<option value="5"
								<c:if test="${pageMaker.cri.perPageNum == 5}">selected</c:if>>5줄
								보기</option>
							<option value="10"
								<c:if test="${pageMaker.cri.perPageNum == 10}">selected</c:if>>10줄
								보기</option>
							<option value="15"
								<c:if test="${pageMaker.cri.perPageNum == 15}">selected</c:if>>15줄
								보기</option>
							<option value="20"
								<c:if test="${pageMaker.cri.perPageNum == 20}">selected</c:if>>20줄
								보기</option>
						</select>
					</div>
					<script>
						function selChange() {
							var sel = document.getElementById('cntPerPage').value;
							var type = document.getElementById('searchType').value;
							var keyword = document.getElementById('keywordInput').value;
							
							location.href = "list?page=1&perPageNum=" + sel+"&searchType="+type+"&keyword="+keyword;
						}
					</script>


					<section class="content container-fluid">
						<form role="form" method="get">
							<div>${msg}</div>
							<div class="table-responsive">
								<table class="table">
									<tr>
										<td>쿠폰번호</td>
										<td>쿠폰명</td>
										<td>할인율</td>
										<td>쿠폰만료일(유동)</td>
										<td>쿠폰만료일(고정)</td>
										<td>발권종류</td>
									</tr>
									<c:forEach var="coupon" items="${list}">
										<tr>
											<td><a href="detail?cpCode=${coupon.cpCode}">
													${coupon.cpCode} </a></td>
											<td>${coupon.cpName}</td>
											<td>${coupon.cpPercent}</td>
											<td>${coupon.cpExpireA}</td>
											<td>${coupon.cpExpireB}</td>
											<td>${coupon.cpType}</td>

										</tr>
									</c:forEach>
									<tr>
										<td colspan="5" align="center"><input
											class="btn btn-success" type="button" value="메인으로"
											onclick="location.href='/home'" /> <input
											class="btn btn-success" type="button" value="쿠폰 생성"
											onclick="location.href='/coupon/regist'" /></td>
									</tr>
								</table>
							</div>
							<div>
								<ul class="pagination">
									<c:if test="${pageMaker.prev }">
										<li><a
											href="list${pageMaker.makeSearch(pageMaker.startPage -1) }">이전</a></li>
									</c:if>

									<c:forEach begin="${pageMaker.startPage }"
										end="${pageMaker.endPage }" var="idx">
										<li
											<c:out value="${pageMaker.cri.page == idx?'class=active':''}" />>
											<a href="list${pageMaker.makeSearch(idx)}"> ${idx } </a>
										</li>
									</c:forEach>

									<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
										<li><a
											href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">다음</a></li>
									</c:if>
								</ul>
							</div>
							<script type="text/javascript">
								var result = '${msg}';
								if (result == 'regist	') {
									alert("등록되었습니다.");
								} else if (result == 'update') {
									alert("수정되었습니다.");
								} else if (result == 'delete') {
									alert("발급 정지되었습니다.");
								}
							</script>
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