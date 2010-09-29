package buySeedDao;

import org.apache.struts.action.ActionForm;

public class finalListForm extends ActionForm{
	private String materialName;
	private String materialCount;
	private String materialPrice;
	private String taskId;
	private String seedName;
	private String seedCount;
	public String getTaskId() { 
		return taskId; 
	}
	public void setTaskId(String taskId) { 
		this.taskId = taskId; 
	}
	public String getMaterialName() { 
		return materialName; 
	}
	public void setMaterialName(String materialName) { 
		this.materialName = materialName; 
	}
	public String getMaterialCount() { 
		return materialCount; 
	}
	public void setMaterialCount(String materialCount) { 
		this.materialCount = materialCount; 
	}
	public String getMaterialPrice() { 
		return materialPrice; 
	}
	public void setMaterialPrice(String materialPrice) { 
		this.materialPrice = materialPrice; 
	}
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
}
