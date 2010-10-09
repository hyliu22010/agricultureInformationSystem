package test;
import java.util.List;

import org.jbpm.api.*;
import org.jbpm.api.task.Task;
public class testSowPlan {
		public static void main(String args[]){
			ProcessEngine processEngine = Configuration.getProcessEngine();
			RepositoryService repositoryService = processEngine
					.getRepositoryService();
			
			repositoryService.createDeployment().addResourceFromClasspath("businessProcess/sowPlan.jpdl.xml").deploy();
			ExecutionService executionService = processEngine
			.getExecutionService();
			ProcessInstance processInstance=executionService.startProcessInstanceById("sowPlan-1");
			System.out.println(processInstance.getId());
			ProcessInstance processInstance1=executionService.findProcessInstanceById("sowPlan-1");
			TaskService taskService = processEngine.getTaskService();
			System.out.println(processInstance1.getId());
			List<ProcessDefinition> pdList = repositoryService.createProcessDefinitionQuery().list();
			List<ProcessInstance> piList = executionService.createProcessInstanceQuery().list();
			List<Task> taskList = taskService.findPersonalTasks("");
			for (ProcessInstance pi : piList) {
				System.out.println(pi.getId()+"\n"+pi.getProcessDefinitionId());
			}
			for (Task task : taskList) {
				
			}
		}
}
