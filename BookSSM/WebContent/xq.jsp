<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<% 
	pageContext.setAttribute("APP_PATH",request.getContextPath()); 
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="js/jquery.jqzoom.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<script>
$(function(){
    $('.nav_left').mouseover(function(){

		$('.category_ho').show();
	}).mouseout(function(){
		$('.category_ho').hide();
	});  	
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
                     <c:if test ="${user ==null }">
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
         <div class="ewm"><img src="${APP_PATH }/images/ewm.jpg" width="92" height="92" /></div>
         
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
                         <li><a href="">首页</a></li>
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
    <div class="list_banner"><a href="" target="_blank"><img src="${APP_PATH }/images/list_banner.jpg" width="1100" height="92" /></a></div>
    <!--banner end -->
    <!--left begin -->
    <div class="xq_left">
         <div class="xq_left_dq"><a href="" target=""> 购书网</a> > <a href="" target=""> 图书</a> ><a href="" target="">  中小学教辅</a> > 小学一年级 </div>
         <!--book begin -->
         <div class="xq_book">
              <div class="books">
                 <div id="preview" class="spec-preview"> <span class="jqzoom"><img jqimg="${APP_PATH }/images/xq_imgb1.jpg" src="images/xq_imgs1.jpg" /></span> </div>
                  <!--缩图开始-->
                  <div class="spec-scroll"> <a class="prev"></a> <a class="next"></a>
                    <div class="items">
                      <ul>
                        <li><img alt="" bimg="${book.bookimg }" src="${book.bookimg }" onmousemove="preview(this);"></li>
                        <li><img alt="" bimg="${book.bookimg }" src="${book.bookimg }" onmousemove="preview(this);"></li>
                        <li><img alt="" bimg="${book.bookimg }" src="${book.bookimg }" onmousemove="preview(this);"></li>
                        <li><img alt="" bimg="${book.bookimg }" src="${book.bookimg }" onmousemove="preview(this);"></li>
                        <li><img alt="" bimg="${book.bookimg }" src="${book.bookimg }" onmousemove="preview(this);"></li>
                        <li><img alt="" bimg="${book.bookimg }" src="${book.bookimg }" onmousemove="preview(this);"></li>
                        <li><img alt="" bimg="${book.bookimg }" src="${book.bookimg }" onmousemove="preview(this);"></li>
                        <li><img alt="" bimg="${book.bookimg }" src="${book.bookimg }" onmousemove="preview(this);"></li>
                        <li><img alt="" bimg="${book.bookimg }" src="${book.bookimg }" onmousemove="preview(this);"></li>
                        <li><img alt="" bimg="${book.bookimg }" src="${book.bookimg }" onmousemove="preview(this);"></li>
                        <li><img alt="" bimg="${book.bookimg }" src="${book.bookimg }" onmousemove="preview(this);"></li>
                        <li><img alt="" bimg="${book.bookimg }" src="${book.bookimg }" onmousemove="preview(this);"></li>
                      </ul>
                    </div>
                  </div>
              </div>
              <!-- xinxi begin -->
              <div class="books_info">
                   <h1>${book.bookname }</h1>
                    <div class="info">
                             <dl>
                                  <dt>优&nbsp;&nbsp;惠&nbsp;&nbsp;价</dt>
                                  <dd><b class="price_s">￥${book.discountprice }</b><span class="red">（${book.discount}）</span></dd>
                             </dl>
                             <dl>
                                  <dt>定&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价</dt>
                                  <dd><del>￥${book.bookprice }</del></dd>
                             </dl>
                             <dl>
                                  <dt>时&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;段</dt>
                                  <dd>
                                     <form id="form1" name="form1" method="post" action="">
                             
                                               <label>
                                                 <input type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_0" />
                                                 单期</label>
                                               <label>
                                                 <input type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_1" />
                                                 半年</label>
                                                 <label>
                                                 <input type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_1" />
                                                 全年</label>
                                    
                                     </form>
                                   </dd>
                             </dl>
                             <dl>
                                     <dt>购买数量</dt>
                                     <dd>
                                          <div class="wrap-input">
                                              <a onclick="" href="" class="btn-reduce">减少数量</a>
                                              <a onclick="" href="" class="btn-add">增加数量</a>
                                              <input onkeyup="" value="1" id="buy-num" class="text">
                                          </div>
                                     </dd>
                             </dl>
                             <dl>
                                  <dt>库&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;存</dt>
                                  <dd><span class="red">1234</span>件</dd>
                             </dl>
                             <dl>
                                  <dt>运&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;费</dt>
                                  <dd>￥10.00 <a href="" target="_blank" class="red">&nbsp;&nbsp;配送说明</a></dd>
                             </dl>
                       </div>
                       <!--dapei begin -->
                       <div class="dapei">
                            <div class="dapei_l">搭配可选</div>
                            <div class="dapei_r">
                                 <ul>
                                      <li>
                                           <div class="dapei_rli1"><a href="" target="_blank" ><img src="${APP_PATH }/images/xq_03.jpg" width="72" height="86" /></a></div>
                                           <div class="dapei_rli2"><a href="" target="_blank" >5全国职称英语资料</a></div>
                                           <div class="dapei_rli3"><input name="checkbox1" type="checkbox" value="" class="check1"/>￥38.04</div>
                                      </li>
                                      <li>
                                           <div class="dapei_rli1"><a href="" target="_blank" ><img src="${APP_PATH }/images/xq_03.jpg" width="72" height="86" /></a></div>
                                           <div class="dapei_rli2"><a href="" target="_blank" >5全国职称英语资料</a></div>
                                           <div class="dapei_rli3"><input name="checkbox1" type="checkbox" value="" class="check1"/>￥38.04</div>
                                      </li>
                                      <li>
                                           <div class="dapei_rli1"><a href="" target="_blank" ><img src="${APP_PATH }/images/xq_03.jpg" width="72" height="86" /></a></div>
                                           <div class="dapei_rli2"><a href="" target="_blank" >5全国职称英语资料</a></div>
                                           <div class="dapei_rli3"><input name="checkbox1" type="checkbox" value="" class="check1"/>￥38.04</div>
                                      </li>
                                 </ul>
                            </div>
                       </div>
                       <!--dapei end -->
                       <div class="book_but">
                            <div class="book_but1"><a href="">立即购买</a></div>
                            <div class="book_but2"><a href="add.action?bookid=${book.bookid }&&bookname=${book.bookname }&&bookprice=${book.bookprice}&&bookimg=${book.bookimg}"><i></i>加入购物车</a></div>
                       </div>
              </div>
              <!-- xinxi end -->
              
         </div>
         <!--book end -->
         <!--book 详情 begin -->
         <div class="book_xq">
              <div class="book_xq_t">商品详情</div>
              <div class="book_xq_b">
                  ${book.bookdetails}



              </div>
         </div>
         <!--book 详情 end -->
         <!--pinglun begin -->
          <div class="evaluate">
               
                <div class="evaluate_2">
                       <span class="more"><a href="">查看全部评论>></a></span>
                       <ul class="tabbtn_3" id="normaltab_3">
                            <li class="current"><a href="">全部(1236)</a></li>
                            <li><a href="">好评(1236)</a></li>
                            <li><a href="">中评(0)</a></li>
                            <li><a href="">差评(0)</a></li>
                            <li><a href="">追评(0)</a></li>
                        
                        </ul><!--tabbtn end-->
                        <div class="tabcon_3" id="normalcon_3">
                            <div class="sublist_3">
                                  <ul style="padding-bottom:20px;">
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                    
                                                </div>
                                              
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                    
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                    
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                     
                                                </div>
                                                
                                           </div>
                                      </li>
                                  </ul>
                            </div><!--tabcon end-->
                            <div class="sublist_3">
                                
                                       <ul style="padding-bottom:20px;">
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                    
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                    
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                    
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                     
                                                </div>
                                                
                                           </div>
                                      </li>
                                  </ul>

                            </div><!--tabcon end-->
                            <div class="sublist_3">
                                
                                      <ul style="padding-bottom:20px;">
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                     
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                     
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                    
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                   
                                                </div>
                                                
                                           </div>
                                      </li>
                                  </ul>

                            </div><!--tabcon end-->
                            <div class="sublist_3">
                                
                                      <ul style="padding-bottom:20px;">
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                    
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                   
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                     
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                     
                                                </div>
                                                
                                           </div>
                                      </li>
                                  </ul>

                            </div><!--tabcon end-->
                            <div class="sublist_3">
                                
                                       <ul style="padding-bottom:20px;">
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                     
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                     
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="${APP_PATH }/images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                    
                                                </div>
                                                
                                           </div>
                                      </li>
                                      <li>
                                           <div class="people_pic">
                                               <img src="images/xq_pep.jpg">
                                               <p>sfdsas我的世界g</p>
                                           </div>
                                           <div class="pl_txt">
                                                <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13" /></div>
                                                <div class="pl_txt_2">
                                                     <p>心得：<b>很喜欢，很实用,以后就这家了</b></p>
                                                     <p style="text-indent:3em;">2014-2-15 &nbsp;10:12:10</p>
                                                     <p style="text-indent:3em;">购买日期：2014-2-10 &nbsp;11:10:10</p>
                                                    
                                                </div>
                                                
                                           </div>
                                      </li>
                                  </ul>

                            </div><!--tabcon end-->
                            
                        </div><!--tabbox end-->
                   </div> 
                   <script type="text/javascript" src="js/jquery.tabso_yeso.js"></script>    
                        <script type="text/javascript">
                      $(document).ready(function($){
                          
                          
                          
                          //默认选项卡切换
                          $("#normaltab_3").tabso({
                              cntSelect:"#normalcon_3",
                              tabEvent:"mouseover",
                              tabStyle:"normal"
                          });
                          
                      });
                      </script>             
           </div>           
         <!--pinglun end --> 
    </div>
    <!--left end -->
    
    <!--right begin -->
    <div class="xq_right">
         <!--hot begin -->
         <div class="hot_books">
             <div class="hot_books_t">热销排行</div>
             <div class="hot_books_b">
                  <ul>
                      <li>
                           <div class="p-img"><a href="" title="" target="_blank"><img src="images/xq_pic.jpg" width="100" height="100" /></a></div>
                           <div class="p-name"><a href="" title="" target="_blank">普鲁士勒绘本典藏（套装共6册）</a></div>
                           <div class="p-price">
                                <strong>￥25.6</strong>
                                <span class="zhe">[7.5折]</span>
                           </div>
                       </li>
                       <li>
                           <div class="p-img"><a href="" title="" target="_blank"><img src="images/xq_pic.jpg" width="100" height="100" /></a></div>
                           <div class="p-name"><a href="" title="" target="_blank">普鲁士勒绘本典藏（套装共6册）</a></div>
                           <div class="p-price">
                                <strong>￥25.6</strong>
                                <span class="zhe">[7.5折]</span>
                           </div>
                       </li>
                       <li>
                           <div class="p-img"><a href="" title="" target="_blank"><img src="images/xq_pic.jpg" width="100" height="100" /></a></div>
                           <div class="p-name"><a href="" title="" target="_blank">普鲁士勒绘本典藏（套装共6册）</a></div>
                           <div class="p-price">
                                <strong>￥25.6</strong>
                                <span class="zhe">[7.5折]</span>
                           </div>
                       </li>
                       <li>
                           <div class="p-img"><a href="" title="" target="_blank"><img src="images/xq_pic.jpg" width="100" height="100" /></a></div>
                           <div class="p-name"><a href="" title="" target="_blank">普鲁士勒绘本典藏（套装共6册）</a></div>
                           <div class="p-price">
                                <strong>￥25.6</strong>
                                <span class="zhe">[7.5折]</span>
                           </div>
                       </li>
                       <li>
                           <div class="p-img"><a href="" title="" target="_blank"><img src="images/xq_pic.jpg" width="100" height="100" /></a></div>
                           <div class="p-name"><a href="" title="" target="_blank">普鲁士勒绘本典藏（套装共6册）</a></div>
                           <div class="p-price">
                                <strong>￥25.6</strong>
                                <span class="zhe">[7.5折]</span>
                           </div>
                       </li>
                  </ul>
             </div>
         </div>
         <!--hot end -->
          <!--other begin -->
         <div class="hot_books">
             <div class="hot_books_t">购买本书的还买了</div>
             <div class="hot_books_b">
                  <ul>
                      <li>
                           <div class="p-img"><a href="" title="" target="_blank"><img src="images/xq_pic.jpg" width="100" height="100" /></a></div>
                           <div class="p-name"><a href="" title="" target="_blank">普鲁士勒绘本典藏（套装共6册）</a></div>
                           <div class="p-price">
                                <strong>￥25.6</strong>
                                <span class="zhe">[7.5折]</span>
                           </div>
                       </li>
                       <li>
                           <div class="p-img"><a href="" title="" target="_blank"><img src="images/xq_pic.jpg" width="100" height="100" /></a></div>
                           <div class="p-name"><a href="" title="" target="_blank">普鲁士勒绘本典藏（套装共6册）</a></div>
                           <div class="p-price">
                                <strong>￥25.6</strong>
                                <span class="zhe">[7.5折]</span>
                           </div>
                       </li>
                       <li>
                           <div class="p-img"><a href="" title="" target="_blank"><img src="images/xq_pic.jpg" width="100" height="100" /></a></div>
                           <div class="p-name"><a href="" title="" target="_blank">普鲁士勒绘本典藏（套装共6册）</a></div>
                           <div class="p-price">
                                <strong>￥25.6</strong>
                                <span class="zhe">[7.5折]</span>
                           </div>
                       </li>
                       
                  </ul>
             </div>
         </div>
         <!--other end -->
    </div>
    <!--right end -->
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
