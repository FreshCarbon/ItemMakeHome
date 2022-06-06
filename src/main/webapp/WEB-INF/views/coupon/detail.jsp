<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>

<html>
<%@ include file="../include/head.jsp"%>
<%@ include file="../include/plugin_js.jsp"%>

<script>
   // ajax를 통한 댓글쓰기
   $(document).ready(function(){
      console.log("ajax test");
      
      //댓글 목록 불러오는 ajax 함수 작성
      replylist();
      
	  //댓글 저장버튼 클릭 이벤트(댓글쓰기)
	  $('#btnReplySave').click(function(){
		  console.log("댓글쓰기 눌러짐.");
		  var rememo = $("#rememo").val();
		  var rewriter = $("#rewriter").val();
		  
		  var url = "${pageContext.request.contextPath}/coupon/replyRegist";
		  var paramData = {
				  "rewriter" : rewriter,
				  "rememo" : rememo,
				  "cpCode" : '${coupon.cpCode}'
		  };
		  $.ajax({
			url : url,
			data : paramData,
			dataType : 'json',
			type : 'POST',
			success : function(result) {
				console.log(result);
				replylist();
				alert("댓글이 등록되었습니다.");
			},
			error : function(data){
				alert("에러가 발생했습니다." + data);
			}
			 
		  })
 
		  
	  });
   });
     
   // 댓글 목록 불러오기 : ajax
   function replylist(){
      var url = "${pageContext.request.contextPath}/coupon/replyList";
      var paramData = {
            "cpCode": ${coupon.cpCode}            
      };
      
      $.ajax({
         url  : url,
         data : paramData,
         dataType : 'json',
         type : 'POST',
         success : function(result){
            console.log("결과 내용을 보여주세요==> " + result);
            var htmls =""; // 댓글 모양꾸미기
            
            if(result.length <1){
               htmls += "<h3>등록된 댓글이 없습니다.</h3>";
            }
            else{
               $(result).each(function(){
            	  htmls = htmls + '<div class="" id="reno' +this.reno + '">';
                   //<div id="cpCode12"> <div id="cpCode13">
				  htmls += '<span class="d-block">';
				  htmls += this.reno + ' - ';
				  htmls += '<strong class="text-gray-dark">' + this.rewriter + '</strong>';
				  htmls += '<span style="padding-left: 7px; font-size: 9pt">';
				  htmls += '<a href="javascript:void(0)" onclick="fn_editReply(' + this.reno + ', \'' + this.rewriter + '\', \'' + this.rememo + '\' )" style="padding-right:5px">수정</a>';
				  htmls += '<a href="javascript:void(0)" onclick="fn_deleteReply(' + this.reno + ')" >삭제</a>';
				  htmls += '</span>';
				  htmls += '</span><br>';
				  htmls += this.rememo;
				  htmls += '</p>';
				  htmls += '</div>';  
               });               
            }
            $("#replyList").html(htmls);// 댓글모양 주입
            
         },
         error : function(data){
            alert("에러가 발생했습니다." + data);
         }
      }); //ajax end
            
   }// end function replylist
   function fn_editReply(reno, rewriter, rememo){
	      var htmls =""; // 댓글 모양꾸미기
	      htmls = htmls + '<div class="" id="reno' +reno + '">';
	       htmls += '<span class="d-block">';
	       htmls += reno + ' - ';
	       htmls += '<strong class="text-gray-dark">' + rewriter + '</strong>';
	       htmls += '<span style="padding-left: 7px; font-size: 9pt">';
	       htmls += '<a href="javascript:void(0)" onclick="fn_updateReply(' + reno + ', \'' + rewriter + '\', \'' + rememo + '\' )" style="padding-right:5px">저장</a>';
	       htmls += '<a href="javascript:void(0)" onclick="replylist()">취소</a>';
	       htmls += '</span>';
	       htmls += '</span><br>';
	       htmls += '<textarea name="editmemo" id="editmemo" class="form-control" rows="3">';
	       htmls += rememo;
	       htmls += '</textarea>'
	       htmls += '</p>';
	       htmls += '</div>'; 
	       //선택한 요소를 다른것으로 바꿉니다. (변경)
	      $('#reno'+reno).replaceWith(htmls);
	      $('#reno'+reno+'#editmemo').focus();       
	   } // end of fn_editReply
	   	
	   
	   
	// 댓글 수정 보내기
	   function fn_updateReply(reno, rewriter){
	      var editmemo = $('#editmemo').val();
	      var url = "${pageContext.request.contextPath}/coupon/replyUpdate"; //ajax수정
	      var paramData = {
	            "reno" : reno,
	            "rewriter" : rewriter,
	            "rememo" : editmemo
	      }; // 수정데이터
	      $.ajax({
	         url : url,
	         data : paramData,
	         dataType : 'json',
	         type : 'POST',
	         success : function(result){
	            console.log(result);
	            replylist(); //댓글목록 호출
	         },
	         error : function(data){
	            console.log(data);
	            alert("에러가 발생했습니다.");
	         }
	      });    
	   }
	   
	   function fn_deleteReply(reno){ //댓글 삭제 함수
		   
		   var url = "${pageContext.request.contextPath}/coupon/replyDelete"; // ajax삭제
		   var paramData = {
				"reno" : reno
		   }
		   $.ajax({
			   url : url,
			   data : paramData,
			   dataType : 'json',
			   type : 'POST',
			   success : function(result){
				   console.log(result);
				   replylist();
			   },
			   error : function(data){
				   console.log(data);
		           alert("에러가 발생했습니다.");
			   }
		   });
		   
	   }

</script>


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
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">상세보기</h3>
							</div>
							<div class="box-body">
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
									<label>쿠폰 발행일(유동)</label> <input type="text" name="cpExpireA"
										class="form-control" value="${coupon.cpExpireA}"
										readonly="readonly" />
								</div>
								<div class="form-group">
									<label>쿠폰 만료일(고정)</label>
									 <input type="text" name="cpExpireB"
										class="form-control" value="${coupon.cpExpireB}"
										readonly="readonly" />
								</div>
							</div>

						</div>
						<div class="box-footer">
							<button id="main" class="btn btn-success">메인</button>
							<button id="update" class="btn btn-warning">쿠폰수정</button>
							<button id="delete" type="submit" class="btn btn-danger">발급중지</button>
						</div>

						<div>
							<div class="box-body">
								<table>
									<tr>
										<td rowspan="2" width="70%"><textarea
												class="form-control" name="rememo" id="rememo"
												placeholder="댓글을 입력하세요"></textarea></td>
										<td><input type="text" name="rewriter" id="rewriter"
											placeholder="댓글작성자"></td>
									</tr>
									<tr>
										<td><button type="button" id="btnReplySave">저장</button></td>
									</tr>
								</table>

							</div>
						</div>

						<hr>

						<div id="replyList"></div>

						<hr>

					</section>

					<script>
						$(function() {
							//메인 버튼을 눌렀을 때 처리
							$("#main").click(function() {
								location.href = "/home";
							});
							//삭제 버튼을 눌렀을 때 처리
							$("#delete").click(function() {
								location.href = "/coupon/delete?cpCode=" + ${coupon.cpCode};
							});
							//수정 버튼을 눌렀을 때 처리
							$("#update").click(function() {
								location.href = "/coupon/update?cpCode=" + ${coupon.cpCode};
							});
						})
					</script>
					<!-- /.content -->
				</div>
				<!-- /.content-wrapper -->

				<!-- Main Footer -->
				<%@ include file="../include/main_footer.jsp"%>
				<%@ include file="../include/scrollTop_button.jsp"%>
			</div>
		</div>

	</div>
</body>
</html>