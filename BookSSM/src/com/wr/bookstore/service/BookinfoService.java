package com.wr.bookstore.service;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wr.bookstore.domain.Bookinfo;

public interface BookinfoService {
	
	//新书上架
	public List<Bookinfo> findBook();
	
	//查询书的详情
	public Bookinfo findBookByid(@Param("bookid")Integer bookid);
	
	//热门推荐-小学
	public List<Bookinfo> findBookxx(); 
	
	//热门推荐-初中
	public List<Bookinfo> findBookcz(); 
	
	//热门推荐-高中
	public List<Bookinfo> findBookgz();
	
	//热门推荐-教育
	public List<Bookinfo> findBookjy();
	
	//热门推荐-工具书
	public List<Bookinfo> findBookgjs();
	//热门推荐-期刊
	public List<Bookinfo> findBookqk();
}
