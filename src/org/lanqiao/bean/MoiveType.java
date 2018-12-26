package org.lanqiao.bean;

public class MoiveType {
	
	private int id;
	private String typeName;
	
	public MoiveType(int id, String typeName) {
		super();
		this.id = id;
		this.typeName = typeName;
	}

	public MoiveType(String typeName) {
		super();
		this.typeName = typeName;
	}

	public MoiveType() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	
	
}
