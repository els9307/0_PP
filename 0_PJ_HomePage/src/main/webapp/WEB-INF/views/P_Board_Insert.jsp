<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script>
  	$(document).ready(function(){
  		$("#Board_Insert_Btn").click(function(){
  			alert("123");
			if($("#B_Subject_I").val() == ''){
				alert("제목을 입력해주세요");
				return false;
			}
			if($("#B_Content_I").val() == ''){
				alert("내용을 입력해주세요");
				return false;
			}
			if($("#B_Secret_I").val() == 'Y' && $("#B_Secret_Pwd_I").val() == ''){
				alert("비밀글은 비밀번호 입력 필수 입니다.");
				return false;
			}
  		})

  		$("#Board_IN").click(function(){
  			$("#frmBoardIN").submit();

  			alert("서브밋");
  		})
  	})
  </script>
<div class="card-body">
	<form action="fileUpload_post" method="POST" id="frmBoardIN" enctype="multipart/form-data">
		<div class="form-group">
			<label for="exampleFormControlInput1">제목</label> <input type="text"
				class="form-control" id="B_Subject_I" name="B_SUBJECT"
				placeholder="제목을 작성해주세요.">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">작성자</label> <input type="text"
				class="form-control" id="B_Writer_I" name="B_WRITER" value="${session_id }">
		</div>
		<div class="form-group">
			<label for="exampleFormControlTextarea1">내용</label>
			<textarea class="form-control" id="B_Content_I"
				name="B_CONTENT" rows="10"></textarea>
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">비밀글</label>
			<select class="form-control" id="B_Secret_I" name="B_SECRET" style="width: 10%;">
				<option value="Y" >Y</option>
				<option value="N">N</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">비밀번호</label> <input type="text"
				class="form-control" id="B_Secret_Pwd_I" name="B_SECRET_PWD" style="width: 30%;">

		</div>
		 <label for="gdsImg">이미지</label>
 <input type="file" id="gdsImg" name="file" />
 <div class="select_img"><img src="" /></div>
 
		<button type="submit" id="Board_Insert_Btn" class="btn btn-info">등록하기</button>
		<button type="button" class="btn btn-secondary">목록으로</button>
	</form>
	
	

 <script>
  $("#gdsImg").change(function(){
   if(this.files && this.files[0]) {
    var reader = new FileReader;
    reader.onload = function(data) {
     $(".select_img img").attr("src", data.target.result).width(300);        
    }
    reader.readAsDataURL(this.files[0]);
   }
  });
 </script>
</div>
