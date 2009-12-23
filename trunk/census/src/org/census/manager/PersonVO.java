package org.census.manager;

import org.census.system.MajorRelation;


public class PersonVO {
	private Integer id;
	private Integer majorId;
	private String majorName;
	private String name;
	private String identity;
	private Integer isMajor;
	private String isMajorText;
	private Integer majorRelation;
	private String majorRelationText;
	private String job;
	private Integer houseCode;
	private Integer group;
	private Integer village;
	
	public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}


	public String getIsMajorText() {
		if(isMajor!=null&&isMajor.intValue()==1){
			isMajorText = "是";
		}else{
			isMajorText = "不是";
		}
		return isMajorText;
	}
	

	public String getMajorRelationText() {
		this.majorRelationText = MajorRelation.convert(this.majorRelation);
		return majorRelationText;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getMajorId() {
		return majorId;
	}
	public void setMajorId(Integer majorId) {
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
	public Integer getIsMajor() {
		return isMajor;
	}
	public void setIsMajor(Integer isMajor) {
		this.isMajor = isMajor;
	}
	public Integer getMajorRelation() {
		return majorRelation;
	}
	public void setMajorRelation(Integer majorRelation) {
		this.majorRelation = majorRelation;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public Integer getHouseCode() {
		return houseCode;
	}
	public void setHouseCode(Integer houseCode) {
		this.houseCode = houseCode;
	}
	public Integer getGroup() {
		return group;
	}
	public void setGroup(Integer group) {
		this.group = group;
	}
	public Integer getVillage() {
		return village;
	}
	public void setVillage(Integer village) {
		this.village = village;
	}
}
