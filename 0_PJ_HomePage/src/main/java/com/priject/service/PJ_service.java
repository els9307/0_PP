package com.priject.service;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.priject.mapper.PJ_Mapper;
import com.priject.vo.P_BOARD;
import com.priject.vo.P_COMMENT;
import com.priject.vo.P_USERINFO;

@Service
public class PJ_service {
	@Autowired
	private PJ_Mapper pm;
	
	public void P_Join_Post(P_USERINFO user) {
		pm.P_Join_Post(user);
	}
	
	public P_USERINFO P_Login_Post(String id) {
		P_USERINFO user = pm.P_Login_Post(id);
		return user;
	}
	
	public void P_Board_Insert_POST(P_BOARD pb){
		pm.P_Board_Insert_POST(pb);
		
	}
	
	public List<P_BOARD> P_Tables_View(int startRow, int endRow,String word){
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("word", word);
		return pm.P_Tables_View(map);
	}

	public int getCount(String word) {
		return pm.getCount(word);
	}

	public P_BOARD getList(String num) {
		P_BOARD pb = pm.getList(num);
		return pb; 
	}
	
	public List<P_COMMENT> getComment(String b_NUM){
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("b_NUM", b_NUM);
		return pm.getComment(map);
	}
}
