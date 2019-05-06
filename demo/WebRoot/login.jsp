<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'bear.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<div align="center">
     <form method="post"  action="/demo/servlet/CheckServlet">
	 用户名：<input type="text"   size="20" name="name"><br/>
              密码：    <input type="password" size="20" name="password"> <br/>
          <input type="submit"  value="登录" name="Submit"><br/>
    </form>
    </div>
  </body>
</html>
