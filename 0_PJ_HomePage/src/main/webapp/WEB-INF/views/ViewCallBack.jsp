<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
  src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>


<script>
	function getViewDelete(num){
		alert(num);
		$.ajax({
			type : "get",
			url  : "P_View_Delete",
			data : {
								"num" : num
						 },
						 success : function(data){
							 
						 }
		})
	}
</script>
<div class="card shadow mb-4">

  <div class="card-body">
    <form action="P_Board_IN" method="POST" id="frmBoardIN">
      
      <table class="table table-bordered" id="dataTable" width="50%"
        cellspacing="0">
        <tbody>
          <tr>
            <th scope="row">작성자</th>
            <td>${ListView.USER_ID }</td>
          </tr>
          <tr>
            <th scope="row">제목</th>
            <td>${ListView.BOARD_TITLE }</td>
          </tr>
          <tr>
            <td colspan="4"
              style="border: 1px solid #ccc; height: 100px; text-align: center;">
              ${ListView.BOARD_CONTEXT}</td>
          </tr>
        </tbody>
      </table>

    </form>
        <div style="text-align: right;">
      <a href="#" onclick="" class="btn btn-primary">수정</a>
      </div>
       <div style="text-align: right;">
      <form action="P_View_Delete" method="get" id="">
      <input type="hidden" value="${ListView.BOARD_NUM }">
      <a href="" onclick="javascript:getViewDelete('${ListView.BOARD_NUM}')" id="Delete" class="btn btn-primary">삭제</a>
      </form>
      </div>
    </div>
  </div>
</div>
