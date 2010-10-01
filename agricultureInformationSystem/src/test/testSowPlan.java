package test;
import org.jbpm.api.*;
public class testSowPlan {
		public static void main(String args[]){
			ProcessEngine processEngine = Configuration.getProcessEngine();
			RepositoryService repositoryService = processEngine
					.getRepositoryService();
			repositoryService.createDeployment().addResourceFromClasspath("businessProcess/sowPlan.jpdl.xml").deploy();
			
		}
}
