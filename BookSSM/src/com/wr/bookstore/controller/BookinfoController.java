package com.wr.bookstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import com.wr.bookstore.service.BookinfoService;

@Controller
@RequestMapping("/")
public class BookinfoController {
	@Autowired
	private BookinfoService bookService;
	
	//查询
	@RequestMapping("recommand")
	public String recommand(ModelMap map){
		//新书上架
		map.addAttribute("books", bookService.findBook());
		//热门推荐-小学
		map.addAttribute("book1", bookService.findBookxx());
		//热门推荐-初中
		map.addAttribute("book2", bookService.findBookcz());
		//热门推荐-高中
		map.addAttribute("book3", bookService.findBookgz());
		//热门推荐-教育
		map.addAttribute("book4", bookService.findBookjy());
		//热门推荐-工具书
		map.addAttribute("book5", bookService.findBookgjs());
		//热门推荐-工具书
		map.addAttribute("book6", bookService.findBookqk());
		return "index";
	}
	
	//根据id查书的详情
	@RequestMapping("detail")
	public String detail(Integer bookid,ModelMap map){
		map.addAttribute("book", bookService.findBookByid(bookid));
		return "xq";
	}
	
	
	
	 
}

    
    


