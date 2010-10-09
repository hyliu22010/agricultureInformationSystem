<%@page import="sowPlanDao.makePlanForm"%>
<link href="../images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type"contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" /><style type="text/css">
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
	makePlanForm mp=new makePlanForm();
	mp=mp.getAuditPlan();
%>

<%@ page language="java" pageEncoding="UTF-8"%>

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
        <br>播种计划： 
        <form method="post" action="auditSuggest.jsp">
		<br>播种计划编号：<input type="text" name="planId" value="<%=mp.getplanId()%>">
		任务编号：<input type="text" name="taskId" value="<%=taskId%>">
		<br><br>基地名称：<input type="text" name="baseName" value="<%=mp.getbaseName()%>">
    	地块编号：<input type="text" name="soilName" value="<%=mp.getsoilName()%>">
    	地块面积：<input type="text" name="soilArea" value="<%=mp.getsoilArea()%>"><br><br>
    	品种名称：<input type="text" name="varietyName" value="<%=mp.getvarietyName()%>">
    	种子来源：<input type="text" name="seedOrigin" value="<%=mp.getseedOrigin()%>">
    	播种时间：<input type="text" name="seedTime" value="<%=mp.getseedTime()%>"><br><br>
    	种植人姓名：<input type="text" name="farmerName" value="<%=mp.getfarmerName()%>">
    	记录时间：<input type="text" name="recordTime" value="<%=mp.getrecordTime()%>"><br><br>
    	项目：<input type="text" name="project" value="<%=mp.getproject()%>"><br><br>
    	晒谷种：<input type="text" name="sgz" value="<%=mp.getsgz()%>" size="82"><br><br>
    	秧田备耕：<input type="text" name="ytbg" value="<%=mp.getytbg()%>" size="82"><br><br>
    	浸种催芽：<input type="text" name="jzcy" value="<%=mp.getjzcy()%>" size="82"><br><br>
    	播种时间：<input type="text" name="bzsj" value="<%=mp.getbzsj()%>" size="82"><br><br>
    	大田备耕：<input type="text" name="dtbg" value="<%=mp.getdtbg()%>" size="82"><br><br>
    	秧田插秧：<input type="text" name="ytcy" value="<%=mp.getytcy()%>" size="82"><br><br>
    	分蘖施肥：<input type="text" name="fnsf" value="<%=mp.getfnsf()%>" size="82"><br><br>
    	病虫防治：<input type="text" name="bcfz" value="<%=mp.getbcfz()%>" size="82"><br><br>
    	收割：<input type="text" name="reap" value="<%=mp.getreap()%>" size="82"><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    	<input type="submit" name="result"  value="需要修改" type="submit">&nbsp;&nbsp; &nbsp;&nbsp;
    	<input type="submit" name="result"  value="不需修改" type="submit">
    	</form>
        <br><br><br><br><br><br><br><br><br><br><br></span>     
      </tr>
    </table>
    </td>
    <td background="../images/mail_rightbg.gif">&nbsp;</td>
  </tr>

</table>
  </body>
</html:html>
