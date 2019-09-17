<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Jsp-basicLib</title>

<%@ include file="/WEB-INF/views/commonJsp/basicLib.jsp" %>

<script>
   $(document).ready(function(){
      //사용자 정보 클릭시 이벤트 핸들러
      $(".prodTr").on("click", function(){
         console.log("prodTr click");

		 var dataValue = $(this).data("lprod_gu");
      	 console.log("dataValue : " + dataValue);

         //input 태그에 값 설정
         $("#lprod_gu").val(dataValue);
         
         //form 태그이용 전송
//          $("#frm").serialize();
         console.log("serialize() :" + $("#frm").serialize());
         
         $("#frm").submit();
      });
   });
</script>


</head>

<body>
<form id="frm" action="${cp }/prodList" method="get">
   <input type="hidden" id="lprod_gu" name="lprod_gu"/>
</form>


<%@ include file="/WEB-INF/views/commonJsp/header.jsp" %>




<div class="container-fluid">
		<div class="row">
			
<div class="col-sm-3 col-md-2 sidebar">
	
	<%@ include file="/WEB-INF/views/commonJsp/left.jsp" %>

</div>

<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				

<div class="row">
	<div class="col-sm-8 blog-main">
		<h2 class="sub-header">제품 그룹</h2>
		<div class="table-responsive">
			<table class="table table-striped">
				<tr>
					<th>제품그룹 아이디</th>
					<th>제품그룹 구분</th>
					<th>제품그룹 이름</th>
				</tr>
				
				
				<c:forEach items="${lprodList }" var="list">
					<tr class="prodTr" data-lprod_gu="${list.lprod_gu }">
						<td>${list.lprod_id }</td>
						<td>${list.lprod_gu }</td>
						<td>${list.lprod_nm }</td>
					</tr>	
				</c:forEach>

			</table>
		</div>
	<a class="btn btn-default pull-right">제품 등록</a>

		<div class="text-center">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
		</div>
	</div>
</div>
	</div>
		</div>
	</div>
</body>
</html>
