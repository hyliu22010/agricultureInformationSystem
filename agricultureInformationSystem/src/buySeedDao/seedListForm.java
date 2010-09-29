package buySeedDao;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class seedListForm extends ActionForm{
	private String seedName;
	private String seedCount;
	private String taskId;
	public String getSeedName() { 
		return seedName; 
	}
	public void setSeedName(String seedName) { 
		this.seedName = seedName; 
	}
	public String getSeedCount() { 
		return seedCount; 
	}
	public void setSeedCount(String seedCount) { 
		this.seedCount = seedCount; 
	}
	public String getTaskId() { 
		return taskId; 
	}
	public void setTaskId(String taskId) { 
		this.taskId = taskId; 
	}
	public void reset(ActionMapping mapping,
			HttpServletRequest request) {
			}
}
