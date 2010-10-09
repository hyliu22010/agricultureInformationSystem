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
        <td height="31"><div class="titlebt">欢迎界面</div></td>
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
        创建播种计划：
        <html:form method="post" action="makePlan.do">
		<br>播种计划编号：<html:text  property="planId"></html:text>
		任务编号：<input type="text" name="taskId" value="<%=taskId%>">
		<br><br>基地名称：<html:text  property="baseName"></html:text>
    	地块编号：<html:text  property="soilName"></html:text>
    	地块面积：<html:text  property="soilArea"></html:text><br><br>
    	品种名称：<html:text  property="varietyName"></html:text>
    	种子来源：<html:text  property="seedOrigin"></html:text>
    	播种时间：<html:text  property="seedTime"></html:text><br><br>
    	种植人姓名：<html:text  property="farmerName"></html:text>
    	记录时间：<html:text  property="recordTime"></html:text><br><br>
    	项目：<html:text  property="project"></html:text><br><br>
    	晒谷种：<html:text  property="sgz" size="82"></html:text><br><br>
    	秧田备耕：<html:text  property="ytbg" size="82"></html:text><br><br>
    	浸种催芽：<html:text  property="jzcy" size="82"></html:text><br><br>
    	播种时间：<html:text  property="bzsj" size="82"></html:text><br><br>
    	大田备耕：<html:text  property="dtbg" size="82"></html:text><br><br>
    	秧田插秧：<html:text  property="ytcy" size="82"></html:text><br><br>
    	分蘖施肥：<html:text  property="fnsf" size="82"></html:text><br><br>
    	病虫防治：<html:text  property="bcfz" size="82"></html:text><br><br>
    	收割：<html:text  property="reap" size="82"></html:text><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    	<html:submit  value="提交"></html:submit>
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
