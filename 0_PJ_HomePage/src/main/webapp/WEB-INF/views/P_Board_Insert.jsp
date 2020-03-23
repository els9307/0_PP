<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script>
  	$(document).ready(function(){
  		
  		$("#Board_IN").click(function(){
  			$("#frmBoardIN").submit();

  			alert("서브밋");
  		})
  	})
  </script>
	<div class="card-body">
		<form action="P_Board_Insert_POST" method="POST" id="frmBoardIN">
			<div class="form-group">
				<label for="exampleFormControlInput1">제목</label> <input type="text"
					class="form-control" id="exampleFormControlInput1" name="B_SUBJECT"
					placeholder="제목을 작성해주세요.">
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput1">작성자</label> <input type="text"
					class="form-control" id="exampleFormControlInput1" name="B_WRITER" value="${session_id }">
			</div>
			<div class="form-group">
				<label for="exampleFormControlTextarea1">내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					name="B_CONTENT" rows="10"></textarea>
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput1">비밀글</label>
				<select class="form-control" id="exampleFormControlTextarea1" name="B_SECRET" style="width: 5%">
					<option value="Y" >Y</option>
					<option value="N">N</option>
				</select>
			</div>
			<button type="submit" class="btn btn-info">등록하기</button>
			<button type="button" class="btn btn-secondary">목록으로</button>
		</form>
	</div>
