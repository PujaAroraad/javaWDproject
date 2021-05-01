<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
	<link rel="stylesheet" href="./css1.css" type="text/css"></link><html:base/>
		<title>JSP for IndexForm form</title>
		<script type="text/javascript">
		function msg(str)
		{
		if(str!='null')
		{alert(str);	
		
		}
		else{
		return false;
		}
		}
		
		</script>
		
	
	</head>
	<body onload="msg('<%=(String)request.getAttribute("ms2") %>')">
	
		<html:form action="/index">
			<table width="995" cellspacing="0"  align="center" cellpadding="0" border="0" class="xyz">
<tbody><tr>
<td><table width="100%" cellspacing="0" cellpadding="0" border="1" class="aaa">
<tbody><tr>
<td><table width="100%" cellspacing="0" cellpadding="0" border="1" >
<tbody><tr>
<td><table width="100%" cellspacing="0" cellpadding="0" border="1">
<tbody><tr>
<td width="225" align="center">&nbsp;<img alt="" src="imgatm/logo1.png" width="200" height="200"></td>
<td width="870" align="center" class="bank">Grameen Bank</td></tr>
</tbody></table></td></tr><tr><td valign="top"><br></td></tr><tr><td valign="top" class="sideheading"><font color="#cc2d91">Enter Your Credentials</font><br></td></tr><tr><td valign="top"> 
<table width="500" cellspacing="0" cellpadding="0" border="1" align="center">
<tbody><tr>
<td width="200px">&nbsp;Card No.<br></td>
<td width="300px">&nbsp;<html:text property="txtcard"></html:text></td></tr>
<tr><td valign="top"><br></td><td valign="top"><br></td></tr>
<tr><td valign="top">Pin No.<br></td><td valign="top"><html:password redisplay="true" property="txtpin"></html:password><br></td></tr>
<tr><td valign="top"><br></td><td valign="top"><br></td></tr>
<tr><td valign="top">Valid Till<br></td><td valign="top">
<html:select property="ddvalid">
<html:optionsCollection label="display" value="val" property="collectionid"/>
</html:select><br></td></tr><tr><td valign="top"><br></td><td valign="top"><br></td></tr><tr><td valign="top"><br></td><td valign="top"><html:submit property="btnsubmit"></html:submit><br></td></tr>
</tbody></table></td></tr><tr><td valign="top"><br></td></tr><tr><td valign="top"><br></td></tr>
</tbody></table></td></tr>
</tbody></table></td></tr>
</tbody></table>
		</html:form>
	</body>
</html>

