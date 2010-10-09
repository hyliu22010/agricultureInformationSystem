<%@page import="java.util.*,org.jbpm.api.*,org.jbpm.api.task.*,sowPlanDao.makePlanForm"%>
<% 
	String planId=request.getParameter("planId");
	makePlanForm ml=new makePlanForm();
	ml.updateSowPlan(planId);
	ProcessEngine processEngine = Configuration.getProcessEngine();
	TaskService taskService = processEngine.getTaskService();
	String taskId = request.getParameter("taskId");
	taskService.completeTask(taskId);
	response.sendRedirect("/agricultureInformationSystem/sowPlanUI/index.jsp");
%>