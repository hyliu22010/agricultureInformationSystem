<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.jbpm.api.*,org.jbpm.api.task.*" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	ProcessEngine processEngine = Configuration.getProcessEngine();
	TaskService taskService = processEngine.getTaskService();
	String taskId = request.getParameter("id");
	Task task = taskService.getTask(taskId);
%>    
<body>
  <fieldset>
    <legend>informationAudit</legend>
    <form action="submit.jsp" method="post">
      <input type="text" name="taskId" value="<%=taskId %>"/><br>
    <input name="result" type="submit" value="确认身份"/>
    </form>
  </fieldset>
</body>
</html>