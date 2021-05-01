<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for CashwithdrawForm form</title><script type="text/javascript">function msg(str)
		  {
				if(str!='null')
				{
					alert(str);
				}
		   }          
		</script>
	</head>
	<body onload="msg('<%=(String)request.getAttribute("ms1") %>')">
		<html:form action="/cashwithdraw">
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
</tbody></table></td></tr><tr><td valign="top"><br></td></tr><tr><td valign="top" class="sideheading"><font color="#cc2d91">CASH WITHDRAWAL</font><br></td></tr><tr><td valign="top"> 
<table width="500" cellspacing="0" cellpadding="0" border="1" align="center">
<tbody><tr>
<td width="200px">Amount<br></td>
<td width="300px">&nbsp;<html:text property="txtamount"></html:text></td></tr>
<tr><td valign="top"><br></td><td valign="top"><br></td></tr>


<tr><td valign="top"><br></td><td valign="top"><html:submit property="btnsubmit" value="Withdraw"></html:submit><br></td></tr>
</tbody></table></td></tr><tr><td valign="top"><br></td></tr><tr><td valign="top"><br></td></tr>
</tbody></table></td></tr>
</tbody></table></td></tr>
</tbody></table>
	
		</html:form>
	</body>
</html>

