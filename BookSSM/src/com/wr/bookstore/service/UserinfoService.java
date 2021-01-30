package com.wr.bookstore.service;

import com.wr.bookstore.domain.Userinfo;

public interface UserinfoService {
	
	//注册
	public boolean add(Userinfo userinfo);
	
	//登陆
	Userinfo login(Userinfo userinfo);
	
	//修改用户信息
	public boolean update(Userinfo userinfo);
	
	//注销
	public boolean del(Userinfo userinfo);
}
