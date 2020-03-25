<!-- form enctype="multipart/form-data"를 적어줘야 한다. -->
<form method="post" action="fileUpload_post" enctype="multipart/form-data">
    <!-- input type="file" 이라고 꼭 저어줘야 함 -->
    <input type="file" class="form-control" id="uploadFile"          
    name="uploadFile" />
    <button type="submit" class="btn btn-default">save</button>
    <button type="list" class="btn btn-default">목록</button>
</form>