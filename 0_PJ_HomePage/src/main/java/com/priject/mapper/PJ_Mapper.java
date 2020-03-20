package com.priject.mapper;

import org.springframework.stereotype.Repository;

import com.priject.vo.P_USERINFO;


@Repository("pm")
public interface PJ_Mapper {

	public void P_Join_Post(P_USERINFO user);
	
	public P_USERINFO P_Login_Post(String id);
}
