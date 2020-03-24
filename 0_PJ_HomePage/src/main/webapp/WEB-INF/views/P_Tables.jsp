<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script
  src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

<script>
	$(document).ready(function(){
		$("#bSearchBtn").click(function(){
			$("#searchFrm").submit();
		})
	})
	function getList(num,secret,pwd){
		if(secret == 'Y'){
			alert("비밀글입니다");
			$("#asd").trigger("click");
			$("#b_pwd").click(function(){
				if(pwd != $("#secret_pwd").val()){
					alert("비밀번호가 틀렸습니다");
					return false;
				}
				$("#modalBtn").trigger("click");
		 		$.ajax({
					type : "get",
					url : "P_ListView",
					data : {"num" : num,
						    "pwd" : pwd
						   },
					success : function(data){
						$("#view").html(data);
					}
				})
			})
		}else if(secret =='N'){
			$.ajax({
				type : "get",
				url : "P_ListView",
				data : {"num" : num,
				    "pwd" : pwd
				   },
				success : function(data){
					$("#view").html(data);
				}
			})
		}
	}
</script>
<style>
	.table thead th{
		border: 2px solid #d7dcee;
	}
	.table-bordered td, .table-bordered th{
		border: 2px solid #d7dcee;
	}
	#bSearch{
		background-color: #e3e5fa;
	}
</style>


<div class="card-body">
	<div class="table-responsive">
		<span>COMMUNITY</span>
		<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="border: 2px solid #34456a">
			<thead>
				<tr style="border: 2px solid #34456a">
					<th style="width: 5%; color: #24294b;">번호</th>
					<th style="width: 70%; color: #24294b;">제목</th>
					<th style="width: 10%; color: #24294b;">작성자</th>
					<th style="width: 15%; color: #24294b;">작성시간</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${arr}" var="arr" varStatus="status">
				<tr>
					<!-- vo객체에서 setter에 앞글자 소문자로 변경되있음 주의!!!!! -->
					<td>${boardNum+status.count}</td>
					<%--  <td><a href="#" onclick="javascript:getList('${arr.b_NUM}')">${arr.b_SUBJECT }</a></td> --%>
					<td>
						<a href="#" onclick="javascript:getList('${arr.b_NUM}','${arr.b_SECRET }','${arr.b_SECRET_PWD }')">
						${arr.b_SUBJECT }
							<c:if test="${arr.b_SECRET == 'Y' }">
								<span style="color: black;"><i class="fas fa-lock"></i></span>
							</c:if>
							<c:if test="${arr.b_SECRET == 'N' }">
								<i class="fas fa-lock-open"></i>
							</c:if>
						</a>
					</td>
					<td><a href="#" id="getMent">${arr.b_WRITER }</a></td>
					<td>${arr.b_SYSDATE }</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<form action="P_Tables" method="get" id="searchFrm">
		<div style="text-align: right;">
			<!-- 검색버튼 및 텍스트박스 -->
			<input type="text" class="form-control  border-0 small"  placeholder="Search for..."
			  id="bSearch" name="word" style="width: 30%;  display: inline;">
			<input type="submit" id="bSearchBtn" value="검색" class="btn btn-primary">
			<a href="P_Board_Insert" class="btn btn-primary">글쓰기</a>
		</div>
	</form>
	<!-- page callBack -->
	<div style="text-align: center;">${pageHtml}</div>
	<hr>
	<!-- view CallBack -->    
	<div id="view"></div>
</div>


<input type="hidden" class="dropdown-item" id="asd" data-toggle="modal" data-target="#logoutModala">
<div class="modal fade" id="logoutModala" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">비밀번호를 입력</h5>
				<button class="close" id="modalBtn" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
				<div class="modal-body"><input type="text" id="secret_pwd"></div>
			<div class="modal-footer">
				<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
				<a class="btn btn-primary" href="#" id="b_pwd">확인</a>
			</div>
		</div>
	</div>
</div>


