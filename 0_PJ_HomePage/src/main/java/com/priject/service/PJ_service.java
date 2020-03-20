package com.priject.service;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.priject.mapper.PJ_Mapper;
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
}
