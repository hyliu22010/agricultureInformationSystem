<link href="../images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>

<% 
	String taskId = request.getParameter("id");
	request.setAttribute("taskId",taskId);
%>

<%@ page language="java" pageEncoding="gb2312"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>makePlan.jsp</title>

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
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="../images/mail_leftbg.gif"><img src="../images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="../images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">��ӭ����</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="../images/mail_rightbg.gif"><img src="../images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="../images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="2" valign="top"><span class="left_bt">
        �������ּƻ���
        <html:form method="post" action="makePlan.do">
		<br>���ּƻ���ţ�<html:text  property="planId"></html:text>
		�����ţ�<input type="text" name="taskId" value="<%=taskId%>">
		<br><br>�������ƣ�<html:text  property="baseName"></html:text>
    	�ؿ��ţ�<html:text  property="soilName"></html:text>
    	�ؿ������<html:text  property="soilArea"></html:text><br><br>
    	Ʒ�����ƣ�<html:text  property="varietyName"></html:text>
    	������Դ��<html:text  property="seedOrigin"></html:text>
    	����ʱ�䣺<html:text  property="seedTime"></html:text><br><br>
    	��ֲ��������<html:text  property="farmerName"></html:text>
    	��¼ʱ�䣺<html:text  property="recordTime"></html:text><br><br>
    	��Ŀ��<html:text  property="project"></html:text><br><br>
    	ɹ���֣�<html:text  property="sgz" size="82"></html:text><br><br>
    	���ﱸ����<html:text  property="ytbg" size="82"></html:text><br><br>
    	���ִ�ѿ��<html:text  property="jzcy" size="82"></html:text><br><br>
    	����ʱ�䣺<html:text  property="bzsj" size="82"></html:text><br><br>
    	���ﱸ����<html:text  property="dtbg" size="82"></html:text><br><br>
    	�������<html:text  property="ytcy" size="82"></html:text><br><br>
    	����ʩ�ʣ�<html:text  property="fnsf" size="82"></html:text><br><br>
    	������Σ�<html:text  property="bcfz" size="82"></html:text><br><br>
    	�ո<html:text  property="reap" size="82"></html:text><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    	<html:submit  value="�ύ"></html:submit>
    	</html:form>
        <br><br><br><br><br><br><br><br><br><br><br></span>     
      </tr>
    </table>
    </td>
    <td background="../images/mail_rightbg.gif">&nbsp;</td>
  </tr>

</table>
  </body>
</html:html>
