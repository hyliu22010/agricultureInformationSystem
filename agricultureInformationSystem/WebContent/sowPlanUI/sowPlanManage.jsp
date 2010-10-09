
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
<%@ page language="java" import="java.util.*,org.jbpm.api.*,org.jbpm.api.task.*" pageEncoding="gb2312"%>

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
	ProcessEngine processEngine=Configuration.getProcessEngine();
	RepositoryService repositoryService = processEngine.getRepositoryService();
	ExecutionService executionService = processEngine.getExecutionService();
	TaskService taskService = processEngine.getTaskService();
	String username = (String) session.getAttribute("identity");
	List<ProcessDefinition> pdList = repositoryService.createProcessDefinitionQuery().list();
	List<ProcessInstance> piList = executionService.createProcessInstanceQuery().list();
	List<Task> taskList = taskService.findPersonalTasks(username);
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
        <br>&nbsp;<a href="deploy.jsp?">创建水稻播种计划</a>
        <table border="1" width="100%">
      <caption>当前的播种计划</caption>
      <thead>
        <tr>
          <td>id</td>
          <td>name</td>
          <td>version</td>
          <td>operation</td>
        </tr>
      </thead>
      <tbody>
<%
	for (ProcessDefinition pd : pdList) {
		if(pd.getName().equals("sowPlan")){
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
