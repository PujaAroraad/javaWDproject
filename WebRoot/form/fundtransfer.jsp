<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for FundtransferForm form</title>
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
		<html:form action="/fundtransfer">
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
</tbody></table></td></tr><tr><td valign="top"><br></td></tr><tr><td valign="top" class="sideheading"><font color="#cc2d91">FUND TRANSFER</font><br></td></tr><tr><td valign="top"> 
<table width="500" cellspacing="0" cellpadding="0" border="1" align="center">
<tbody><tr>
<td width="200px">&nbsp;Account No.<br></td>
<td width="300px">&nbsp;<html:text property="txtaccount"></html:text></td></tr>
<tr><td valign="top"><br></td><td valign="top"><br></td></tr>
<tr><td valign="top">Amount<br></td><td valign="top"><html:text property="txtamount"></html:text><br></td></tr>

<tr><td valign="top"><br></td><td valign="top"><br></td></tr><tr><td valign="top"><br></td><td valign="top"><html:submit property="btnsubmit" value="Transfer"></html:submit><br></td></tr>
</tbody></table></td></tr><tr><td valign="top"><br></td></tr><tr><td valign="top"><br></td></tr>
</tbody></table></td></tr>
</tbody></table></td></tr>
</tbody></table>
</html:form></body>
</html>

