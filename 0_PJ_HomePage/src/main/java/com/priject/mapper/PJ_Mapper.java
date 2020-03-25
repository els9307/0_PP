package com.priject.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.filter.OncePerRequestFilter;

import com.priject.vo.P_BOARD;
import com.priject.vo.P_COMMENT;
import com.priject.vo.P_USERINFO;


@Repository("pm")
public interface PJ_Mapper {

	public void P_Join_Post(P_USERINFO user);
	
	public P_USERINFO P_Login_Post(String id);
	
	public void P_Board_Insert_POST(P_BOARD pb);
	
	public List<P_BOARD> P_Tables_View(HashMap<String, Object> map);
	
	public int getCount(String word);
	
	public P_BOARD getList(HashMap<String, Object> map);
	
	public List<P_COMMENT> getComment(HashMap<String, Object> map);
	
	public void P_Comment_I(P_COMMENT pc);
	
	public int getCommentCount(String b_NUM);
	
	public void CommentDel(String c_NUM);
	
	public void Board_Update(P_BOARD pb);
}
