package com.wr.bookstore.mapper;

import java.util.List;

import com.wr.bookstore.domain.Userinfo;

public interface UserinfoMapper {
	//Ìí¼Ó
	public boolean add(Userinfo userinfo);
	
	//²éÑ¯
	public Userinfo login(Userinfo userinfo);

	//ÐÞ¸Ä
	public boolean update(Userinfo userinfo);
	
	//É¾³ý
	public boolean del(Userinfo userinfo);
}
