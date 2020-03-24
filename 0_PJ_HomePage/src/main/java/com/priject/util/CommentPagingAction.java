package com.priject.util;

import org.springframework.stereotype.Service;

@Service("CommentPagingAction")
public class CommentPagingAction {
	public String paging(int count,int pageSize, int currentPage,String b_NUM) {
		//String file = "P_Comment";
		String file = "javascript:getCommentList";
		//script처리해서 P_ListView 여기에 뿌리면 될 수도 . . .  ? 
		int pageCount = count/pageSize + (count%pageSize==0?0:1);

		int pageBlock = 3;
		int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
		int endPage = startPage + pageBlock-1;
		if(endPage>pageCount) endPage = pageCount;
		StringBuffer sb = new StringBuffer();
		//정적 클래스보다 동적클래스로 처리해주면 문자열을 동적으로 변화시켜 줄 수 있음
		//string 정적 클래스 사용시 과부화가 많이 걸림
		
		if(count>0) {
			//이전
			if(startPage>pageBlock) {
				sb.append("<a class='button disabled' href="+file+"(");
				sb.append((startPage-pageBlock)+","+b_NUM+")");
				sb.append(">[이전]</a>");
				// javascript getComment(num,b_NUM)
			}
			//페이지
			for (int i = startPage;i<=endPage;i++) {
				if(i==currentPage) {
					sb.append("["+i+"]");
				}else {
					sb.append("<a href="+file+"(");
					sb.append(i+","+b_NUM+")");
					sb.append(">["+i+"]</a>");
				}
			}
			//다음
			if(endPage<pageCount) {
				sb.append("<a href="+file+"(");
				sb.append((startPage-pageBlock)+","+b_NUM+")");
				sb.append(">[다음]</a>");
			}
		}

		return sb.toString();
	}
}
