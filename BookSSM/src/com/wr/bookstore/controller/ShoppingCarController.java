package com.wr.bookstore.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.wr.bookstore.domain.Bookinfo;

@Controller
@RequestMapping("/")
public class ShoppingCarController {

	//创建一个集合,用户存储用户要买的多本书
	List<Bookinfo> books = new ArrayList<>();
	
	//处理添加书到购物车
	@RequestMapping("add")
	public String add(HttpSession session,Bookinfo bookinfo) {
		//装一本用户要加入到购物车的书
		books.add(bookinfo);
		session.setAttribute("books", books);
		
		
		return "buy";
	}
	
	//删除书
	@RequestMapping("del")
	public String del(HttpSession session,int bookid) {
		//从已经装入到购物车books里面找出用户想要删除的书的bookID
		for (int i = 0; i < books.size(); i++) {
			if (books.get(i).getBookid() == bookid) {
				books.remove(i);
				break;
			}
		}
			session.setAttribute("books", books);
		
		return "buy";
	}
	
}
