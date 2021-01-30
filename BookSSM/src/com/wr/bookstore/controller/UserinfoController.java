package com.wr.bookstore.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.security.auth.Subject;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import com.wr.bookstore.Util.Code;
import com.wr.bookstore.Util.FileUpDownUtil;
import com.wr.bookstore.domain.Userinfo;
import com.wr.bookstore.service.UserinfoService;

@Controller
@RequestMapping("/")
public class UserinfoController {
	@Autowired
	private UserinfoService userService;
	
	@Autowired
	private Userinfo userinfo;
	
	@Autowired
	private FileUpDownUtil fileUpDownUtil;

	 /**
     * 登录页面生成验证码
     */
	@RequestMapping("/code")
	public void code(HttpServletRequest request , HttpServletResponse response) throws IOException{
		BufferedImage bufferedImage =Code.paintImage(90, 25);
		String code = Code.getCode();
		
		HttpSession httpSession = request.getSession();
		httpSession.removeAttribute("code");
		httpSession.setAttribute("code", code);
		
		ImageIO.write(bufferedImage, "jpeg", response.getOutputStream());
		
	}
    
   /**
    * 验证登录
    * @param model
    * @param inputStr
    * @param session
    * @return
    */
   @RequestMapping(value = "/login")
   public String login(String yzm,ModelMap map,Userinfo userinfo, HttpSession session,HttpServletRequest request) {
	   //调用Service的方法
	  
	   HttpSession httpSession = request.getSession();
		
	   String code = (String) httpSession.getAttribute("code");
		 
	   if(code.toLowerCase().equals(yzm.toLowerCase())) {
		   Userinfo user = userService.login(userinfo);
		   if(user==null) {
			   map.addAttribute("msg", "账号或密码错误");
			   return "login";
		   }else {
			 //若有userinfo则添加到model并且跳转到成功页面
			   		
				   session.setAttribute("user",user);	  
				   return "redirect:recommand.action";
		   }
	   }else {
		   map.addAttribute("msg", "验证码错误");
		   return "login";
	   }
   }
   
   //修改用户信息
   @RequestMapping("/UserUpdate")
   public String UserUpate(HttpServletRequest request,ModelMap map,HttpSession session) throws IOException {
	   userinfo.setUserid(Integer.parseInt(request.getParameter("userid")));
	   userinfo.setNickname(request.getParameter("nickname"));
	   userinfo.setPhone(request.getParameter("phone"));
	   userinfo.setQq(request.getParameter("qq"));
	   userinfo.setUsername(request.getParameter("username"));
	   userinfo.setAddress(request.getParameter("address"));
	   userinfo.setCity(request.getParameter("city"));
	   userinfo.setQu(request.getParameter("qu"));
	   userinfo.setClassname(request.getParameter("classname"));
	   userinfo.setGrade(request.getParameter("grade"));
	   userinfo.setPostcode(request.getParameter("postcode"));
	   userinfo.setProvince(request.getParameter("province"));
	   userinfo.setUtype(request.getParameter("utype"));
	   userinfo.setXuexiao(request.getParameter("xuexiao"));
	   userinfo.setPicture(fileUpDownUtil.uploadFile(request));
	   userinfo.setEmail(request.getParameter("email"));
	   userinfo.setHobby(request.getParameter("hobby"));
	   userinfo.setIntroduce(request.getParameter("introduce"));
	   userinfo.setBirthday(request.getParameter("birthday"));
	   userinfo.setGender(request.getParameter("gender"));
	 
	   //调用修改的方法
	   if(userService.update(userinfo)) {
		   session.setAttribute("user",userinfo);
		   map.addAttribute("msg","修改成功");
		   
	   }else {
		  
		   map.addAttribute("msg","修改失败");
		   
	   }
	   return "user_11";
   }
   
   //添加
   @RequestMapping("/adduser")
   public String adduser(ModelMap map,Userinfo userinfo){
	   
	   if(userService.add(userinfo)){
		   map.addAttribute("msg", "注册成功");
	   }else{
		   map.addAttribute("msg","注册失败");
	   }
	   
	   return "login";
   }
   
   //注销，清除session
   @RequestMapping("/quitUser")
   public String quitUser(HttpServletRequest request){
       HttpSession session = request.getSession();
       session.removeAttribute("user");
       return "login";
   } 
  
   //注销用户
   @RequestMapping("/zhuxiao")
   public String zhuxiao(ModelMap map,Userinfo userinfo) {
	   
	   if(userService.del(userinfo)){
		   map.addAttribute("msg", "注销成功");
		   return "login";
	   }else{
		   map.addAttribute("msg","注销失败");
		   return "user_11";
	   }
	   
	  
   }
}

    
    


