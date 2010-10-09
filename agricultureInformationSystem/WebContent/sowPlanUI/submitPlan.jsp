
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
<%@ page language="java" import="sowPlanDao.makePlanForm" pageEncoding="gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'sowPlanManage.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <% 
	  makePlanForm mp=new makePlanForm();
	  makePlanForm[] mpa=new makePlanForm[1000];
	  mpa=mp.getSowPlan();
	  request.setAttribute("taskId",request.getParameter("id"));
  %>
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
        <br><a href="deploy.jsp?"></a>
        <table border="1" width="100%">
      <caption>当前的播种计划</caption>
      <thead>
        <tr>
          <td>planId</td>
          <td>baseName</td>
          <td>state</td>
          <td>operation</td>
        </tr>
      </thead>
      <tbody>
<%
	for (int count=0;mpa[count]!=null;count++) {
		
%>
	    <tr>
	      <td><%=mpa[count].getplanId() %> </td>
	      <td><%=mpa[count].getbaseName() %></td>
	      <td><%=mpa[count].getisSubmit() %></td>
	      <td>
	        <a href="completePlan.jsp?taskId=<%=request.getParameter("id")%>&planId=<%=mpa[count].getplanId()%>">submit</a>
	      </td>
	    </tr>
<%
		}
%>
	  </tbody>
	</table> 
        <br><br><br><br><br><br><br><br><br></span>     
      </tr>
    </table>
    </td>
    <td background="../images/mail_rightbg.gif">&nbsp;</td>
  </tr>

</table>
  </body>
</html>
