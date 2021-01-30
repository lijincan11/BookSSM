package com.wr.bookstore.service.Impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wr.bookstore.domain.Bookinfo;
import com.wr.bookstore.mapper.BookinfoMapper;
import com.wr.bookstore.service.BookinfoService;

@Service("bookService")
public class BookinfoServiceImpl implements BookinfoService{
	@Autowired
	private BookinfoMapper bookMapper;
	
	

	@Override
	//新书上架
	public List<Bookinfo> findBook() {
		return bookMapper.findBook();
	}



	@Override
	//根据id查询书的详情
	public Bookinfo findBookByid(@Param("bookid")Integer bookid) {
		
		return bookMapper.findBookByid(bookid);
	}



	@Override
	//热门推荐-小学
	public List<Bookinfo> findBookxx() {
		
		return bookMapper.findBookxx();
	}
	
	@Override
	//热门推荐-初中
	public List<Bookinfo> findBookcz() {
		
		return bookMapper.findBookcz();
	}
	@Override
	//热门推荐-高中
	public List<Bookinfo> findBookgz() {
		
		return bookMapper.findBookgz();
	}
	@Override
	//热门推荐-教育
	public List<Bookinfo> findBookjy() {
		
		return bookMapper.findBookjy();
	}
	@Override
	//热门推荐-工具书
	public List<Bookinfo> findBookgjs() {
		
		return bookMapper.findBookgjs();
	}
	@Override
	//热门推荐-期刊
	public List<Bookinfo> findBookqk() {
		
		return bookMapper.findBookqk();
	}



}
