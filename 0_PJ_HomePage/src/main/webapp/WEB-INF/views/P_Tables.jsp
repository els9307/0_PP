<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script
  src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

<script>

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
  <div id="view_CB"></div><!-- 게시판 상세보기 콜백위치 -->
    <div class="table-responsive">
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
          <c:forEach items="${asd}" var="list">
            <tr>
              <td style="">${list.BOARD_NUM}</td>
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
                <!-- Topbar Search -->

        <input type="text" class="form-control  border-0 small"  placeholder="Search for..."
          id="bSearch" name="word" style="width: 30%;  display: inline;">
        <input type="submit" id="bSearchBtn" value="검색" class="btn btn-primary">
        <a href="P_Board_Insert" class="btn btn-primary">글쓰기</a>
      </div>
    </form>
    <div style="text-align: center;">${pageHtml}</div>

    
  </div>

