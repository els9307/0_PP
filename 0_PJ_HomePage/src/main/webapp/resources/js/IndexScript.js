///**
// * 
// */
//
//
//	function getList(id,pageNum) {
//
//			$.ajax({
//				type : "post",
//				url : "P_Tables",
//				data : {
//							  "id" : id,
//							  "pageNum" : pageNum
//							 },
//								success : function(data){
//									$("#area").html(data);
//				},
//				error : function(data){
//					alert("게시판은 회원 전용 입니다.");
//				}
//			})
//	} 
//	function getListView(num,secret,pwd){
//		$.ajax({
//			type : "get",
//			url  : "P_ListView",
//			data : {
//					   		"num" : num,
//					   		"secret" : secret,
//					   		"pwd" : pwd
//						 },
//						 success : function(data){
//							 $("#view_CB").html(data);
//						 }
//		})
//	}
//
//	
//
//	