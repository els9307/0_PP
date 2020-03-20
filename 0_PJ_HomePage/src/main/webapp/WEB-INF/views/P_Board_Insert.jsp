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
    <div class="card shadow mb-4">
            
            <div class="card-body">
              <form action="P_Board_IN" method="POST" id="frmBoardIN">
                <table class="table table-bordered" id="dataTable" width="50%" cellspacing="0">
                  <tbody>
                    <tr>
                      <th scope="row">작성자</th>
                      <td><input type="hidden" name="USER_ID" value="${session_id}">${session_id }</td>
                    </tr>
                    <tr>
                       <th scope="row">제목</th>
                      <td ><input type="text" id="BOARD_TITLE" name="BOARD_TITLE"></td>
                    </tr>
                    <tr>
                      <td colspan="4" style="border: 1px solid #ccc; height: 100px;">
                        <textarea rows="7" cols="100" id="BOARD_CONTEXT" name="BOARD_CONTEXT"></textarea>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <select name="BOARD_SECRET" id="BOARD_SECRET">
                          <option value="Y">공개</option>
                          <option value="N">비공개</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <th >비밀번호</th>
                      <td colspan="4"><input type="password" id="bPwd" name=BOARD_PWD></td>
                    </tr>
                  </tbody>
                </table>
                </form>
              </div>
            </div>
          <div style="text-align: right;">
            <a href="P_Board_Insert" class="btn btn-primary" id="Board_IN">글쓰기</a>
          </div>
