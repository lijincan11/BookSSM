<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script>
	function add(obj){
		
		document.getElementById(obj).value = parseInt(document.getElementById(obj).value) +1;
		
		//小计的值（j编号) = 单价的值 (d编号) *数量(编号)
		document.getElementById("j" +obj).innerText  = document.getElementById("d" +obj).innerText * document.getElementById(obj).value;
		var sum = 0;
		$(".pr2").each(function(){
			console.log($(".pr2").text());
			sum += +parseInt($(this).text());
		});
		$("#count").text(sum);
		$("#J_totalMoney").text(sum);
	}
	function jian(obj){
		
		document.getElementById(obj).value = parseInt(document.getElementById(obj).value) -1;
		
		//小计的值（j编号) = 单价的值 (d编号) *数量(编号)
		document.getElementById("j" +obj).innerText  = document.getElementById("d" +obj).innerText * document.getElementById(obj).value;
		var sum = 0;
		$(".pr2").each(function(){
			console.log($(".pr2").text());
			sum += +parseInt($(this).text());
		});
		$("#count").text(sum);
		$("#J_totalMoney").text(sum);
	}





$(function(){
    $('.nav_left').mouseover(function(){

		$('.category_ho').show();
	}).mouseout(function(){
		$('.category_ho').hide();
	});  
    
    var abc =  $("#div1 ul").length;
    $("#J_totalProductCount").html(abc);
    
  
});
</script>
</head>

<body>
<!--top begin -->
<div class="header">

    <div class="header_1">
         <div class="warp">
              <div class="header_1_l">
                    欢迎光临购书网！
                   <c:if test="${user !=null }">
                    	<a href="">你好:${user.nickname}</a>
                    	&nbsp;&nbsp;
                    	<a href="quitUser.action" target="_blank">退出</a>
                    </c:if>
                   <c:if test ="${user==null }">
                    	<a href="login.jsp">请登陆</a>
                   		<a href="">免费注册</a>
                   </c:if>
              </div>
              <div class="header_1_r">
                   <ul>
                        <li><a href="">我的订单</a></li>
                        <li><a href="">购物车<span class="red">0</span>件</a></li>
                        <li><a href="">帮助中心</a></li>
                   </ul>              
              </div> 
         </div>
    </div>
    <!--logo &s begin -->
    <div class="header_2">
         <div class="logo"></div>
         <div class="srarching">
               <div class="srarching_t">
                    <input name="search_txt" type="text"  class="search_txt" value="输入你要搜索的书籍名称" onfocus="if(this.value=='输入你要搜索的书籍名称'){this.value='';}"  onblur="if(this.value==''){this.value='输入你要搜索的书籍名称';}"/>
                    <input name="search_bt" type="button" class="search_bt"  value="搜索"/>
               </div>
               <div class="srarching_b">
                   热门搜索：
                   <a href="">外语考试</a>
                   <a href="">中小学教辅</a>
                   <a href="">百科全书</a>  
                   <a href="">辞典</a>
                   <a href="">牛津系列</a> 
                   <a href="">汉语工具书</a>
                   <a href="">英语工具书</a>
               </div>
         </div>
         <div class="ewm"><img src="images/ewm.jpg" width="92" height="92" /></div>
         
    </div>
    <!--logo &s end -->
    <!--nav begin -->
    <div class="nav">
         <div class="warp">
               <div class="nav_left">
                  全部分类
                    <div class="category_ho">
                      <dl>
                           <dt><a href="">小学</a></dt>
                           <dd>
                               <a href="">小学一年级</a>
                               <a href="">小学二年级</a>
                               <a href="">小学三年级</a>
                               <a href="">小学四年级</a>
                               <a href="">小学五年级</a>
                               <a href="">小学六年级</a>
                           </dd>
                      </dl>
                      <dl>
                           <dt><a href="">初中</a></dt>
                           <dd>
                               <a href="">初中一年级</a>
                               <a href="">初中二年级</a>
                               <a href="">初中三年级</a>
                           </dd>
                      </dl>
                      <dl>
                           <dt><a href="">高中</a></dt>
                           <dd>
                               <a href="">高中一年级</a>
                               <a href="">高中二年级</a>
                               <a href="">高中三年级</a>
                           </dd>
                      </dl>
                      <dl>
                           <dt><a href="">教育</a></dt>
                           <dd>
                               <a href="">教材</a>
                               <a href="">外语考试</a>
                               <a href="">中小学教辅</a>
                           </dd>
                      </dl>
                      <dl>
                           <dt><a href="">工具书</a></dt>
                           <dd>         
                               <a href="">汉语工具书</a>
                               <a href="">英语工具书</a>
                               <a href="">其他语种工具</a>
                               <a href="">百科全书</a>
                               <a href="">文学鉴赏</a>
                               <a href="">辞典</a>
                               <a href="">牛津系列</a>
                               <a href="">朗文系列种工具</a>
                               <a href="">民族语工具书</a>
                               <a href="">英文原版书</a>
                           </dd>
                      </dl>
                      <dl class="last">
                           <dt><a href="">期刊</a></dt>
                           <dd></dd>
                      </dl>
                 </div>
               </div>
               <div class="nav_right">
                    <ul>                                                       
                         <li><a href="recommand.action">首页</a></li>
                         <li><a href="">促销优惠</a></li>
                         <li><a href="">购物车</a></li>
                         <li><a href="">我的订单</a></li>
                         <li><a href="">个人中心</a></li>
                         <li><a href="">客户服务</a></li>
                    </ul>
               </div>
         </div>
    </div>
    <!--nav end -->
    <div class="clearfloat"></div>
</div>
<!--top end -->
<!--container begin -->
<div class="container">
    <!--banner begin -->
    <div class="list_banner"><a href="" target="_blank"><img src="images/list_banner.jpg" width="1100" height="92" /></a></div>
    <!--1begin -->
    <div class="buy_one">
    
         <div class="buy_one_t">
              <div class="buy_one_t1"><input name="sele" type="checkbox" value="" class="sele"/>全选</div>
              <div class="buy_one_t2">商品名称</div>
              <div class="buy_one_t3">单价</div>
              <div class="buy_one_t4">数量</div>
              <div class="buy_one_t5">小计</div>
              <div class="buy_one_t6">操作</div>
         </div>
         
         <div class="buy_one_c" id="div1">
         	<c:forEach var="book" items="${books }">
         	<ul>
               <li>
                    <div class="buy_one_c1"><input name="sele" type="checkbox" value="" class="sele"/></div>
                    <div class="buy_one_c2">
                         <div class="buy_one_c2l"><a href=""><img src="${book.bookimg}" width="38" height="54" /></a></div>
                         <div class="buy_one_c2r">${book.bookname}</div>
                    </div>
                    <div class="buy_one_c3">￥<b class="pr1" id="d${book.bookid}">${book.bookprice}</b></div>
                    <div class="buy_one_c4">
                          <div class="wrap-input2">
                              <a onclick="jian(${book.bookid})"  class="btn-reduce2">减少数量</a>
                              <a onclick="add(${book.bookid})"  class="btn-add2">增加数量</a>
                              <input onkeyup="" value="1" id=${book.bookid} class="text2">
                          </div>
                    </div>
                    <div class="buy_one_c5">￥<b class="pr2" id="j${book.bookid}">${book.bookprice}</b></div>
                    <div class="buy_one_c6">
                         <div class="buy_one_c61"><a href="">收藏</a></div>
                         <div class="buy_one_c61"><a href="del.action?bookid=${book.bookid }">删除</a></div>
                    </div>
               </li>
           </ul>
         </c:forEach>	           
                    
         </div>
         
         <div class="buy_one_b">
              <div class="buy_one_bleft">
                   <div id="J_leftBar">
	                       <input type="checkbox" value="all" name="selectAll" id="J_selectAll_2" sign="1" checked="checked" onclick=""><span id = "F_selectAll_2" sign = "1" onclick="">全选</span>
	                        <a href="javascript:;" class="mr15" id="J_removeAllBtn">批量删除</a>
	               </div>
              </div>
              
              <div class="buy_one_bright">
                  <p>
                      <span class="cartsum">
                          <span id = "J_totalProductCount"></span>
                          件商品金额总计：
                      </span>
                      <span style = "font-family: Arial; font-size: 14px;">&yen;</span>
                      <span class="price" id = "J_totalMoney">0</span>
                  </p>
                  <p class="subtotal">
                      <span class="cartsum">应付总额(不含运费)：</span>
                      <span style = "color: #C30; font-size: 18px; font-weight: bold; font-family: Arial;">&yen;</span>
                      <span class="price" id="count">0.00</span>
                  </p>
                  <p><a href="" class="ch_bt" id="ch_bt" ></a></p>

              </div>
              
         </div>
         
    </div>
    <!--1end -->
    <!--hot begin -->
    <div class="buy_hot">
         <div class="buy_hot_t">热卖商品</div>
           <div class="today_b">
              <ul>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span class="yhj">优惠价<b>￥112.3</b></span></div>
                        </a>
                   </li>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span class="yhj">优惠价<b>￥112.3</b></span></div>
                        </a>
                   </li>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span class="yhj">优惠价<b>￥112.3</b></span></div>
                        </a>
                   </li>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span class="yhj">优惠价<b>￥112.3</b></span></div>
                        </a>
                   </li>
                   <li class="last">
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span class="yhj">优惠价<b>￥112.3</b></span></div>
                        </a>
                   </li>
                   
                 
                   
              </ul>
         </div>  
    </div>
    <!--hot end -->
</div>
<!--container end -->
<!--footer begin -->
<div class="footer">
     <div class="footer_t">
          <ul>
               <li><a href=""><img src="images/f1.jpg" width="130" height="52" /></a></li>
               <li><a href=""><img src="images/f2.jpg" width="130" height="52" /></a></li>
               <li><a href=""><img src="images/f3.jpg" width="130" height="52" /></a></li>
               <li class="last"><a href=""><img src="images/f4.jpg" width="130" height="52" /></a></li>
          </ul>
     </div>
     <div class="footer_b">
           <div class="footer_b1 tb1">
                <span class="f_title">购物指南</span>
                <ul>
                    <li><a href="" target="_blank">购物流程</a></li>
                    <li><a href="" target="_blank">发票制度</a></li>
                    <li><a href="" target="_blank" >账户管理</a></li>
                    <li><a  href="" target="_blank">会员优惠</a></li>
                </ul>
           </div>
           <div class="footer_b1 tb2">
                <span class="f_title">支付方式</span>
                <ul>
                    <li><a href="" target="_blank">货到付款</a></li>
                    <li><a href="" target="_blank" >网上支付</a></li>
                    <li><a href="" target="_blank" >银行转账</a></li>
                    <li><a  href="" target="_blank">账户余额</a></li>
                </ul>
           </div>
            <div class="footer_b1 tb3">
                <span class="f_title">支付方式</span>
                <ul>
                    <li><a href="" target="_blank">订单状态说明</a></li>
                    <li><a href="" target="_blank" >订单取消操作</a></li>
                    <li><a href="" target="_blank" >订单配送说明</a></li>
                </ul>
           </div>
           <div class="footer_b1 tb4">
                <span class="f_title">配送方式</span>
                <ul>
                    <li><a href="" target="_blank">配送时间及运费</a></li>
                    <li><a href="" target="_blank" >验货与签收</a></li>
                    <li><a href="" target="_blank" >订单配送查询</a></li>
                </ul>
           </div>
            <div class="footer_b1 tb5">
                <span class="f_title">退换货</span>
                <ul>
                    <li><a href="" target="_blank">退换货政策</a></li>
                    <li><a href="" target="_blank" >退换货流程</a></li>
                    <li><a href="" target="_blank" >退换货申请</a></li>
                    <li><a href="" target="_blank" >退款说明</a></li>   
                </ul>
           </div>
            <div class="footer_b1 tb6">
                <span class="f_title">商家服务</span>
                <ul>
                    <li><a href="" target="_blank">常见问题</a></li>
                    <li><a href="" target="_blank" >找回密码</a></li>
                    <li><a href="" target="_blank" >汇款单招领</a></li>
                    <li><a href="" target="_blank" >联系客服</a></li>   
                </ul>
           </div>
     </div>
     <div class="footer_m">
           <div class="footer_nav">
               <a href="" target="_blank">关于我们</a>|
               <a href="" target="_blank">联系我们</a>|
               <a href="" target="_blank">人才招聘</a>|
               <a href="" target="_blank">广告服务</a>|
               <a href="" target="_blank">友情链接</a>|
               <a href="" target="_blank">销售联盟</a>|
               <a href="" target="_blank">公司简介</a>
           </div>
           <div class="footer_copyright">
                网络文化经营许可证鄂网文[2015]0278-060号  Copyright © 2015-2018  版权所有
           </div>
     </div>
     
</div>
<!--footer end -->

</body>
</html>
