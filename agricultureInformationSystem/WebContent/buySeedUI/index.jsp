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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/buySeedUI/checkLogin.jsp" %>
<%@page import="java.util.*,org.jbpm.api.*,org.jbpm.api.task.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
        <td colspan="2" valign="top"><span class="left_bt"><br></span>     
<% 
	ProcessEngine processEngine=Configuration.getProcessEngine();
	RepositoryService repositoryService = processEngine.getRepositoryService();
	ExecutionService executionService = processEngine.getExecutionService();
	TaskService taskService = processEngine.getTaskService();
	String username = (String) session.getAttribute("identity");
	List<ProcessDefinition> pdList = repositoryService.createProcessDefinitionQuery().list();
	List<ProcessInstance> piList = executionService.createProcessInstanceQuery().list();
	List<Task> taskList = taskService.findPersonalTasks(username);
	if(username.equals("corporation")){
%>

 <a href="deploy.jsp?" color="red">创建农产品采购任务</a>
 <%}
	else{
	%>
	农产品采购任务
	<% }%>
 &nbsp;[username: <%=username %>]

    <table border="1" width="100%">
      <caption>当前的采购计划</caption>
      <thead>
        <tr>
          <td>id</td>
          <td>name</td>
          <td>version</td>
          <td>&nbsp;</td>
        </tr>
      </thead>
      <tbody>
<%
	for (ProcessDefinition pd : pdList) {
%>
	    <tr>
	      <td><%=pd.getId() %></td>
	      <td><%=pd.getName() %></td>
	      <td><%=pd.getVersion() %></td>
	      <td>
	        <a href="remove.jsp?id=<%=pd.getDeploymentId() %>">remove</a>
	        &nbsp;|&nbsp;
	        <a href="start.jsp?id=<%=pd.getId() %>">start</a>
	      </td>
	    </tr>
<%
	}
%>
	  </tbody>
	</table> 

    <table border="1" width="100%">
      <caption>当前该完成的任务</caption>
      <thead>
        <tr>
          <td>id</td>
          <td>activity</td>
          <td>state</td>
        </tr>
      </thead>
      <tbody>
<%

	for (ProcessInstance pi : piList) {
%>
	    <tr>
	      <td><%=pi.getId() %></td>
	      <td><%=pi.findActiveActivityNames() %></td>
	      <td><%=pi.getState() %></td>
	      
	    </tr>
<%
	}
%>
	  </tbody>
	</table> 

    <table border="1" width="100%">
      <caption>本人待办任务</caption>
      <thead>
        <tr>
          <td>id</td>
          <td>name</td>
          <td>work</td>
        </tr>
      </thead>
      <tbody>
<%
	for (Task task : taskList) {
%>
	    <tr>
	      <td><%=task.getId() %></td>
	      <td><%=task.getName() %></td>
	      <td><a href="<%=task.getFormResourceName() %>?id=<%=task.getId() %>">view</a></td>
	    </tr>
<%
	}
%>
	  </tbody>
	</table> 
    </td>  
  </tr>
      </tr>
    </table>
    </td>
    <td background="../images/mail_rightbg.gif">&nbsp;</td>
  </tr>

</table>
  </body>
</html>