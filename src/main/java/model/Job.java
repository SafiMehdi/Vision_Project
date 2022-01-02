package model;

public class Job {
	private int ID;
	private String label;
	private String desc;
	private int order;
	
	public Job(int iD, String label, String desc, int order) {
		ID = iD;
		this.label = label;
		this.desc = desc;
		this.order = order;
	}
	
	public Job() {
		
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public int getOrder() {
		return order;
	}

	public void setOrder(int order) {
		this.order = order;
	}
	
	
	
}
