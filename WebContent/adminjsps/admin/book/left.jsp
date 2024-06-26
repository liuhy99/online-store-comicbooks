<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/adminjsps/admin/css/book/left.css'/>">
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
<style>
* {
      margin: 0;
      padding: 0;
      list-style-type: none;
    }
    a {text-decoration: none;}
    a:hover{
        text-decoration: none;}
    .right {
      float: right;
      margin-right: 20px;
      font-size: 16px;
    }
    .banner-xzf {
      width: 230px;
    }
    .banner-xzf .title {
      font-weight: 700;
      background-color: #263238
    }
    .banner-xzf .item {
      width: 280px;
      line-height: 40px;
      color: #fff;
      font-weight: 600;
      border-bottom: 2px solid #eee;
    }
    .banner-xzf .title {
      font-size: 20px;
      font-weight: 800;
      background-color: #20B2AA;
      padding: 16px 0;
      font-weight: bold;
      border-style: solid; border-width: 5px;
      border-color:#FF4500;
    }
    .banner-xzf .item .text {
      font-size: 16px;
        cursor: pointer;
      }
    .banner-xzf p {
      width: 100%;
      height: 50px;
      line-height: 50px;
      background-color: #B22222;
      position: relative;
      border-style: solid; border-width: 5px;border-color:#FF8C00;
    }
    .banner-xzf .children {
      display: none;
      width: 280px;
      left: 119px;
      top: 0px;
      line-height: 40px;
      background: #FF6347 ;
      border-style: solid; border-width: 5px;
    }
    .banner-xzf .children li {
      width: 280px;
      height: 50px;
      color: #FF6347;
      background: #FA8072;
      border-bottom: 2px solid #eee
    }
	.banner-xzf .children li a {
		display: inline-block;
		color: #800000;
		font-size: 16px;
		width: 100%;
		height: 100%;
	}
    .sjx-right {
      display: inline-block;
      width: 0;
      height: 0;
      display: inline-block;
      border-left: 10px solid 
#D2691E;
      border-top: 10px solid transparent;
      border-bottom: 10px solid transparent;
      position: absolute;
      top: 15px;
      right: 10px;
    }
    .sjx-top {
      display: inline-block;
      width: 0;
      height: 0;
      display: inline-block;
      border-top: 10px solid 
#D2691E;
      border-right: 10px solid transparent;
      border-left: 10px solid transparent;
      position: absolute;
      top: 20px;
      right: 10px;
    }
    .banner-xzf .col {background: #FF6347;}
    .banner-xzf .item .col-child {background: #FF6347;}
  </style>
</head>
  
<body>  
   <div class="banner-xzf">
    <ul>
    <li class="item title">网上漫画书城</li>
    <c:forEach items="${parents}" var="parent">
      <li class="item">
        <p><span class="text">${parent.cname }</span><span class="sjx sjx-right"></span></p>
        <div class="children">
          <ul>
          	<c:forEach items="${parent.children }" var="child">
            <li><a href="<c:url value='/admin/AdminBookServlet?method=findByCategory&cid=${child.cid}'/>" target="booklist">${child.cname}</a></li>
            </c:forEach>
          </ul>
        </div>
      </li>
	</c:forEach>
    </ul>
  </div>
  	  <script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
  	  <script type="text/javascript">

     $(".item").click(function() {
    $(this).find(".children").slideToggle("slow");
    $(this).find('.sjs-right').toggleClass("sjx-top");
    let obj = $(this).find('.sjx').hasClass("sjx-right");
    if(obj){
      $(this).find('.sjx').removeClass("sjx-right").addClass("sjx-top");
    }else {
      $(this).find('.sjx').removeClass("sjx-top").addClass("sjx-right");
    }
  });

   $(".children li").mouseenter(function() {
        $(this).addClass('col-child');
      });

    $(".children li").mouseleave(function() {
      $(this).removeClass('col-child');
    });
    $(".children li").click(function(event){
    	event.stopPropagation();    
    });
  </script>
  </body>
</html>
