<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<script
  src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

<script>

	function getListView(num,secret,pwd){
		alert("게시글 번호 값 ="+num);
		alert("게시글 비밀글 여부 = "+secret);
		alert("게시글 비밀번호 = " +pwd);
		$.ajax({
			type : "get",
			url  : "P_ListView",
			data : {
					   		"num" : num
						 },
						 success : function(data){
							 alert("성공");
							 $("#view_CB").html(data);
						 }
		})
	}
</script>
<div class="card shadow mb-4">

  <div class="card-body">
    <div class="table-responsive">
      <table class="table table-bordered" id="dataTable" width="100%"
        cellspacing="0">
        <thead>
          <tr>
            <th style="width: 5%">번호</th>
            <th style="width: 70%">제목</th>
            <th style="width: 10%">작성자</th>
            <th style="width: 15%">작성시간</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${asd}" var="list">
            <tr>
              <td>${list.BOARD_NUM}</td>
              <td><a href="#" onclick="javascript:getListView('${list.BOARD_NUM}','${list.BOARD_SECRET }','${list.BOARD_PWD }')">${list.BOARD_TITLE }</a></td>
              <td>${list.USER_ID}</td>
              <td>${list.BOARD_INSERT_DATE }</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
    <form action="P_Tables" method="get" id="searchFrm">
      <div style="text-align: right;">
        <input type="text" class="form-control bg-light border-0 small"
          id="bSearch" name="word" style="width: 30%; display: inline;">
        <input type="submit" id="bSearchBtn" value="검색" class="btn btn-primary">
      </div>
    </form>
    <div style="text-align: right;">
      <a href="P_Board_Insert" class="btn btn-primary">글쓰기</a>
    </div>
    <div style="text-align: center;">${pageHtml}</div>

  </div>

</div>

