<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script>

  </script>
<div class="card-body">
	<form action="P_Board_Update_POST" method="POST" id="frmBoardIN">
	<input type="hidden" name="B_NUM" value="${pb.b_NUM }">
		<div class="form-group">
			<label for="exampleFormControlInput1">제목</label> <input type="text"
				class="form-control" id="B_Subject_I" name="B_SUBJECT" value="${pb.b_SUBJECT}"
				placeholder="제목을 작성해주세요.">
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">작성자</label> <input type="text"
				class="form-control" id="B_Writer_I" name="B_WRITER" value="${session_id }" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="exampleFormControlTextarea1">내용</label>
			<textarea class="form-control" id="B_Content_I"
				name="B_CONTENT" rows="10">${pb.b_CONTENT }</textarea>
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
		<c:if test="${pb.b_WRITER == session_id }">
			<button type="submit" id="Board_Update_Btn" class="btn btn-info">수정하기</button>
		</c:if>
		<button type="button" class="btn btn-secondary">목록으로</button>
	</form>
</div>