<%@page import="sowPlanDao.makePlanForm,java.util.*,org.jbpm.api.*"%>
<%
	makePlanForm mp=new makePlanForm();
	mp=mp.getAuditPlan();
	mp.setsuggest(request.getParameter("suggest"));
	mp.update(mp);
	ProcessEngine processEngine = Configuration.getProcessEngine();
	TaskService taskService = processEngine.getTaskService();
	String taskId =(String) request.getParameter("taskId");
	taskService.completeTask(taskId);
	response.sendRedirect("index.jsp");
%>