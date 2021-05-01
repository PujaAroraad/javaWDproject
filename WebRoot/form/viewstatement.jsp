<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
 
<html> 
	<head>
		<title>JSP for ViewstatementForm form</title>
		<script type="text/javascript">function msg(str)
		  {
				if(str!='null')
				{
					alert(str);
				}
		   }          
		</script>
	</head>
	<body onload="msg('<%=(String)request.getAttribute("ms1") %>')">
		<html:form action="/viewstatement">
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
</tbody></table></td></tr><tr><td valign="top"><br></td></tr><tr><td valign="top" class="sideheading"><font color="#cc2d91">VIEW ACCOUNT SUMMARY</font><br></td></tr><tr><td valign="top"> 
<table width="500" cellspacing="0" cellpadding="0" border="1" align="center">
<tbody><tr>
<td width="200px">&nbsp;Card No.<br></td>
<td width="300px">&nbsp;<html:text property="txtaccount"></html:text></td></tr>
<tr><td valign="top"><br></td><td valign="top"><br></td></tr><tr><td valign="top"><br></td><td valign="top"><html:submit value="View Balance" property="btnsubmit"></html:submit><br></td></tr>



</tbody></table></td></tr><tr><td valign="top"><br></td></tr><tr><td valign="top"><table width="100%" cellspacing="0" cellpadding="0" border="1">
<tbody><logic:present scope="request" name="list"><tr>
<td width="48px">&nbsp;</td>
<td width="180px" align="center">&nbsp;Customer Id</td>
<td width="180px" align="center">&nbsp;Card No.</td>
<td width="180px" align="center">&nbsp;Account No.</td>
<td width="180px" align="center">&nbsp;Account Type</td>
<td width="180px" align="center">&nbsp;Amount</td>
<td width="47px">&nbsp;</td></tr>
<logic:iterate id="list" name="list" scope="request">
<tr>
<td>&nbsp;</td>
<td align="center">&nbsp;<bean:write name="list" property="custid"/></td>
<td align="center">&nbsp;<bean:write name="list" property="cardno"/></td>
<td align="center">&nbsp;<bean:write name="list" property="accno"/></td>
<td align="center">&nbsp;<bean:write name="list" property="acctype"/></td>
<td align="center">&nbsp;<bean:write name="list" property="amount"/></td>
<td>&nbsp;</td></tr></logic:iterate></logic:present>
</tbody></table></td></tr><tr><td valign="top"><br></td></tr>
</tbody></table></td></tr>
</tbody></table></td></tr>
</tbody></table>
			<br>
		</html:form>
	</body>
</html>

