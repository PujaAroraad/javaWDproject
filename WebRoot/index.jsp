<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">body{
	background-color: olive; }
	.heading{font-size: 50px; color: maroon;}</style>
  </head>
  
  <body><table width="995" cellspacing="0" cellpadding="0" border="0" align="center"><tbody><tr><td><table width="100%" cellspacing="0" cellpadding="0" border="0">
  <tbody><tr><td><br></td></tr><tr align="center" class>
  <td ><span class="heading">Grameen Bank</span><br></td></tr><tr><td><br></td></tr><tr>
  <td align="center">&nbsp;<img alt="" src="form/imgatm/center.png"  height="470px" width="470px"></td></tr>
<tr>
<td>&nbsp;</td></tr><tr align="center"><td valign="top" ><h2><a h="" href="index.do">Click Here To Enter..</a></h2></td></tr><tr><td valign="top"><br></td></tr>
</tbody></table></td></tr>
</tbody></table> 
  </body>
</html>
