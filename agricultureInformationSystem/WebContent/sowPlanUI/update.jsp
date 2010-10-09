<%@page import="sowPlanDao.makePlanForm,java.util.*,org.jbpm.api.*,org.jbpm.api.task.*"%>
<% 
    makePlanForm mp=new makePlanForm();
    mp.setplanId(request.getParameter("planId"));
    mp.setbaseName(request.getParameter("baseName"));
    mp.setsoilName(request.getParameter("soilName"));
    mp.setsoilArea(request.getParameter("soilArea"));
    mp.setvarietyName(request.getParameter("varietyName"));
    mp.setseedOrigin(request.getParameter("seedOrigin"));
    mp.setseedTime(request.getParameter("seedTime"));
    mp.setfarmerName(request.getParameter("farmerName"));
    mp.setrecordTime(request.getParameter("recordTime"));
    mp.setproject(request.getParameter("project"));
    mp.setsgz(request.getParameter("sgz"));
    mp.setytbg(request.getParameter("ytbg"));
    mp.setjzcy(request.getParameter("jzcy"));
    mp.setbzsj(request.getParameter("bzsj"));
    mp.setdtbg(request.getParameter("dtbg"));
    mp.setytcy(request.getParameter("ytcy"));
    mp.setfnsf(request.getParameter("fnsf"));
    mp.setbcfz(request.getParameter("bcfz"));
    mp.setfnsf(request.getParameter("reap"));
	mp.update(mp);
	ProcessEngine processEngine = Configuration.getProcessEngine();
	TaskService taskService = processEngine.getTaskService();
	String taskId = request.getParameter("taskId");
	taskService.completeTask(taskId);
	response.sendRedirect("/agricultureInformationSystem/sowPlanUI/index.jsp");
%>