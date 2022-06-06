<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<%@ include file="../include/head.jsp" %>
<%@ include file="../include/plugin_js.jsp" %>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  
  <%@ include file="../include/topbar.jsp" %>
  <%@ include file="../include/sidebar.jsp" %>
 
  <div class="content-wrapper">

    <!-- Main content -->
    <section class="content container-fluid">
	<div class="box">
			<div class="box-header">
				<h3 class="box-title">상세보기</h3>
			</div>
			<div class="box-body">
				<div class="form-group">
					<label>쿠폰번호</label> <input type="text" name="cpCode"
						class="form-control" value="${coupon.cpCode}" readonly="readonly" />
				</div>
				<div class="form-group">
					<label>쿠폰명</label> <input type="text" name="cpName"
						class="form-control" value="${coupon.cpName}" readonly="readonly" />
				</div>
				
				<div class="form-group">
					<label>할인율</label> <input type="text" name="cpPercent"
						class="form-control" value="${coupon.cpPercent}" readonly="readonly" />
				</div>
				<div class="form-group">
					<label>쿠폰 발행일</label> <input type="text" name="cpStart"
						class="form-control" value="${coupon.cpStart}" readonly="readonly" />
				</div>
				<div class="form-group">
					<label>쿠폰 만료일</label> <input type="text" name="cpExpire"
						class="form-control" value="${coupon.cpExpire}" readonly="readonly" />
				</div>
			</div>

		</div>
		<div class="box-footer" >
			<button id="main" class="btn btn-success">메인</button>
			<button id="update" class="btn btn-warning">쿠폰수정</button>
			<button id="delete" type="submit" class="btn btn-danger">발급중지</button>
		</div>
    </section>
 
    <script>
	$(function (){
		//메인 버튼을 눌렀을 때 처리
		$("#main").click(function() {
			 location.href="/home";
		});
		//삭제 버튼을 눌렀을 때 처리
		$("#delete").click(function(){
			location.href="/coupon/delete?cpCode="+ ${coupon.cpCode};
		});
		//수정 버튼을 눌렀을 때 처리
		$("#update").click(function(){
			location.href="/coupon/update?cpCode=" + ${coupon.cpCode};
		});
	})
	</script>
    <!-- /.content -->
  </div>
  <%@ include file="../include/footer.jsp" %>


</div>

</body>
</html>