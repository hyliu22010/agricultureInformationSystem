<%@page import="java.util.*,org.jbpm.api.*,java.util.zip.*"%>
<%
	ProcessEngine processEngine = Configuration.getProcessEngine();
	RepositoryService repositoryService = processEngine
			.getRepositoryService();

	repositoryService.createDeployment().addResourceFromClasspath("businessProcess/sowPlan.jpdl.xml").deploy();
	//ZipInputStream zis = new ZipInputStream(this.getClass()
	//		.getResourceAsStream("/leave.zip"));
	//repositoryService.createDeployment()
	//		.addResourcesFromZipInputStream(zis).deploy();
	response.sendRedirect("index.jsp");
%>