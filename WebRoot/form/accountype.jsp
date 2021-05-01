<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for AccountypeForm form</title>
		<script type="text/javascript">
		function msg(str)
		{
		if(str!='null')
		{alert(str);	
		
		}
		else{
		return false;
		}
		}</script>
		<script type="text/javascript">
		function current()
		{document.getElementById("acctype").value="current";
		}
		function saving()
		{document.getElementById("acctype").value="saving";
		}
		</script>
	</head>
	<body onload="msg('<%=(String)request.getAttribute("ms2") %>')">
		<html:form action="/accountype">
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
</tbody></table></td></tr><tr><td valign="top"><br></td></tr><tr><td valign="top" class="sideheading"><br></td></tr><tr><td valign="top"> 
<table width="500" cellspacing="0" cellpadding="0" border="1" align="center">
<tbody>
<tr><td valign="top"><table width="100%" cellspacing="0" cellpadding="0" border="1">
<tbody><tr>
<td width="250">&nbsp;Account Type<br></td>
<td width="250">&nbsp;<html:text property="acctype" styleId="acctype"></html:text></td></tr>
</tbody></table></td></tr><tr><td valign="top"><br></td></tr><tr align="center"><td valign="top"><html:submit property="btnsubmit"></html:submit><br></td></tr><tr><td valign="top"><br></td></tr><tr><td valign="top"><table width="100%" cellspacing="0" cellpadding="0" border="1">
<tbody><tr>
<td width="250">&nbsp;<img border="0" src="imgatm/Current-account.png" onclick="current()"></td>
<td width="250">&nbsp;<img border="0" src="imgatm/savings-account.png" onclick="saving()"></td></tr>
</tbody></table></td></tr><tr><td valign="top"><br></td></tr>



</tbody></table></td></tr><tr><td valign="top"><br></td></tr><tr><td valign="top"><br></td></tr>
</tbody></table></td></tr>
</tbody></table></td></tr>
</tbody></table>
		
		</html:form>
	</body>
</html>

