<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<script>
var num = ('${pb.b_NUM}');
$(document).ready(function(){
	
	alert("asdasd"+num);
	$.ajax({
		
		type : "get",
		url : "P_Comment",
		data : {"b_NUM" : num},
		success : function(data){
			$("#CommentView").html(data);
		}
	})
})
</script>

	<div class="card-body">
		<form action="P_Board_Insert_POST" method="POST" id="frmBoardIN">
			<div class="form-group">
				<label for="exampleFormControlInput1">제목</label> <input type="text"
					class="form-control" id="exampleFormControlInput1" name="B_SUBJECT"
					value="${pb.b_SUBJECT }" disabled="disabled">
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput1">작성자</label> <input type="text"
					class="form-control" id="exampleFormControlInput1" name="B_WRITER" value="${pb.b_WRITER }" disabled="disabled">
			</div>
			<div class="form-group">
				<label for="exampleFormControlTextarea1">내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					name="B_CONTENT" rows="10" disabled="disabled" >${pb.b_CONTENT }</textarea>
			</div>
  			<div style="text-align: right;">
				<button type="submit" class="btn btn-info">수정하기</button>
				<a href="P_Tables"><button type="button" class="btn btn-secondary">목록으로</button></a>
			</div>
		</form>
	</div>
	<div id="CommentView"></div>
			<div class="form-group">
				<label for="exampleFormControlInput1" style="display: inline-block;">댓글작성자</label> 
				<input type="text"	class="form-control" id="exampleFormControlInput1" 
				name="B_WRITER" value="${session_id }" style="width: 10%;" disabled="disabled">
			</div>
			<div class="form-group">
				<label for="exampleFormControlTextarea1">댓글내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					name="B_CONTENT" rows="5" cols="10"  ></textarea>
			</div>
			<div style="text-align: right;">
				<a href="#"><button type="button" class="btn btn-secondary">등록</button></a>
			</div>
