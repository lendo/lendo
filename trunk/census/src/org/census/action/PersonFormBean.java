package org.census.action;

import org.apache.struts.action.ActionForm;

public class PersonFormBean extends ActionForm {
	private String id;
	private String majorId;
	private String majorName;
	private String name;
	private String identity;
	private String isMajor="0";
	private String majorRelation="0";
	private String job;
	private String houseCode;
	private String group;
	private String village;
	
	
	
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMajorId() {
		return majorId;
	}
	public void setMajorId(String majorId) {
		this.majorId = majorId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public String getIsMajor() {
		return isMajor;
	}
	public void setIsMajor(String isMajor) {
		this.isMajor = isMajor;
	}
	public String getMajorRelation() {
		return majorRelation;
	}
	public void setMajorRelation(String majorRelation) {
		this.majorRelation = majorRelation;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getHouseCode() {
		return houseCode;
	}
	public void setHouseCode(String houseCode) {
		this.houseCode = houseCode;
	}
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
	public String getVillage() {
		return village;
	}
	public void setVillage(String village) {
		this.village = village;
	}
}
