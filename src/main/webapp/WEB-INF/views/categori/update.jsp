<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<%@ include file="../include/head.jsp" %>
<%@ include file="../include/plugin_js.jsp" %>
  

  <%@ include file="../include/sidebar.jsp" %>
  
  <%@ include file="../include/topbar.jsp" %>
  <div class="content-wrapper">

    <!-- Main content -->
    <section class="content container-fluid">
		<div class="box-header">
			<h3 class="box-title">쿠폰 수정</h3>
		</div>
		<form role="form" method="post">
		<div class="box-body">
			<div class="form-group">
				<label>쿠폰명</label> <input type="text"
					name='cpName' class="form-control"  value="${coupon.Name}">
			</div>
			<div class="form-group">
				<label>할인율</label> <input type="text"
					name='cpPercent' class="form-control"  value="${coupon.cpCost}">
			</div>
			<div class="form-group">
				<label>쿠폰 발행일</label> <input type="text"
					name='cpStart' class="form-control"  value="${coupon.cpStart}">
			</div>
			<div class="form-group">
				<label>쿠폰 만료일</label> <input type="text"
					name='cpExpire' class="form-control"  value="${coupon.cpExpire}">
			</div>
			<div class="form-group">
				<label>쿠폰 타입</label> <input type="text"
					name='cpType' class="form-control"  value="${coupon.cpType}">
			</div>
			
			
			<!-- 수정에 사용할 글번호 -->
			<input type="hidden" name="cpCode" value="${coupon.cpCode }" />
		</div>

		<div class="box-footer">
			<button type="submit" class="btn btn-primary">수정완료</button>
		</div>
	</form>
		
    </section>
  </div>
  <%@ include file="../include/footer.jsp" %>


</body>
</html>