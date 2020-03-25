<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<script>

</script>

<body>
<div class="card-body">
    <div class="table-responsive">
    <p>Comment</p>
      <table class="table table-bordered" id="dataTable" style="border: 2px solid #34456a; width: 70%;">
	  	<thead>
	  		<tr style="border: 2px solid #34456a">
	  			<th style="width: 15%;">작성자</th>
	  			<th>내용</th>
	  		</tr>
	  	</thead>
	  	<tbody>
	  		<c:forEach items="${arr }" var="arr">
	  			<tr>
					<td style="width: 15%;">${arr.c_WRITER }</td>
					<td>${arr.c_COMMENT }<a href="#" id="CommentDel" onclick="javascript:fn_CommentDel('${arr.c_NUM}')"><i class="fas fa-trash-alt"></i></a></td>
				</tr>
			</c:forEach>
	  	</tbody>
	  </table>
		<div style="text-align: center">
  			${CommentPageHtml }
  		</div>
	</div>
</div>
<%-- <div class="card-body">
		<c:forEach items="${arr }" var="arr" >
			<div class="form-group">
				<label for="exampleFormControlInput1">작성자</label> <input type="text"
					class="form-control" id="exampleFormControlInput1" name="B_SUBJECT"
					value="${arr.c_NUM }" disabled="disabled">
			</div>
			<div class="form-group">
				<label for="exampleFormControlInput1">내용</label> <input type="text"
					class="form-control" id="exampleFormControlInput1" name="B_WRITER" value="${arr.c_COMMENT }" disabled="disabled">
			</div>
	 		<div style="text-align: right;">
				<button type="submit" class="btn btn-info">수정하기</button>
				<a href="P_Tables"><button type="button" class="btn btn-secondary">목록으로</button></a>
			</div>
		</c:forEach>
	</div> --%>
</body>
</html>