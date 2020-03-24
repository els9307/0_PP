<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<script>
var num = ('${pb.b_NUM}');
$(document).ready(function(){
	
	$.ajax({
		
		type : "get",
		url : "P_Comment",
		data : {"b_NUM" : num },
		success : function(data){
			$("#CommentView").html(data);
		}
	})

})

function Comment_Insert(num){
	var writer = $("#C_WRITER").val();
	var comment = $("#C_COMMENT").val();
	$.ajax({
		type : "get",
		url : "P_Comment",
		data : {"b_NUM" : num,
			    "B_NUM" : num,
			    "C_WRITER" : writer,
			    "C_COMMENT" : comment,
			    "insertCheck" : "1"
		       },
		success : function(Comment_I){
			$("#CommentView").html(Comment_I);
		}
	})

}

function getCommentList(page,num){
	$.ajax({
		type : "get",
		url : "P_Comment",
		data : {"b_NUM" : num,
			    "pageNum" : page
			   },
		success : function(a){
			alert(a);
			$("#CommentView").html(a);
		}
	})
}
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
 			<a href="P_Board_U">
				<button type="button" class="btn btn-info">수정하기</button>
			</a>
			<a href="P_Tables">
				<button type="button" class="btn btn-secondary">목록으로</button>
			</a>
		</div>
	</form>
<hr>
<!-- Comment CallBack 받는 위치  -->
<div id="CommentView"></div>
<!-- Comment CallBack 종료시점  -->
	<hr>
<form action="P_Comment_I" method="get" id="frmCommentInsert">
<input type="hidden" name="B_NUM" value="${pb.b_NUM}">
<input type="hidden" name="num" value="${pb.b_NUM}">
		<div class="form-group">
			<label for="exampleFormControlInput1" style="display: inline-block;">댓글작성자</label> 
			<input type="text"	class="form-control" id="C_WRITER" 
			name="C_WRITER" value="${session_id }" style="width: 10%;" readonly="readonly" >
		</div>
		<div class="form-group">
			<label for="exampleFormControlTextarea1">댓글내용</label>
			<textarea class="form-control" id="C_COMMENT"
				name="C_COMMENT" rows="5" cols="10"  ></textarea>
		</div>
		</form>
		<div style="text-align: right;">
			<a href="#" id="CommentBtn" onclick="javascript:Comment_Insert('${pb.b_NUM}')"><button type="button" class="btn btn-secondary" >등록</button></a>
		</div>
		
		
</div>