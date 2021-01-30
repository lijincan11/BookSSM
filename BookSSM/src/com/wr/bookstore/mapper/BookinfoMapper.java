package com.wr.bookstore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wr.bookstore.domain.Bookinfo;

public interface BookinfoMapper {
	//根据时间查询最新的五本书
	public List<Bookinfo> findBook();
	
	//根据id查询详情
	public Bookinfo findBookByid(@Param("bookid")Integer bookid);
	//热门推荐——小学 查询
	public List<Bookinfo> findBookxx();
	//热门推荐——初中 查询
	public List<Bookinfo> findBookcz();
	//热门推荐——高中 查询
	public List<Bookinfo> findBookgz();
	//热门推荐——高中 查询
	public List<Bookinfo> findBookjy();
	//热门推荐——工具书 查询 
	public List<Bookinfo> findBookgjs();
	//热门推荐——期刊 查询 
	public List<Bookinfo> findBookqk();
}
