<%@page contentType="text/html;charset=UTF-8" %>
<%@page import="java.util.*,org.jbpm.api.*,org.jbpm.api.task.*"%>
<%
	ProcessEngine processEngine = Configuration.getProcessEngine();
	TaskService taskService = processEngine.getTaskService();
	String taskId = request.getParameter("taskId");
	taskService.completeTask(taskId);
	response.sendRedirect("/agricultureInformationSystem/buySeedUI/index.jsp");
%>