package org.census.dao;


/**
 * PersonPO entity. @author MyEclipse Persistence Tools
 */

public class PersonPO implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer majorId;
	private String name;
	private String identity;
	private Integer isMajor;
	private Integer majorRelation;
	private String job;
	private Integer houseCode;
	private Integer group;
	private Integer village;

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIdentity() {
		return this.identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public Integer getMajorRelation() {
		return this.majorRelation;
	}

	public void setMajorRelation(Integer majorRelation) {
		this.majorRelation = majorRelation;
	}

	public String getJob() {
		return this.job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public Integer getHouseCode() {
		return this.houseCode;
	}

	public void setHouseCode(Integer houseCode) {
		this.houseCode = houseCode;
	}

	public Integer getGroup() {
		return this.group;
	}

	public void setGroup(Integer group) {
		this.group = group;
	}

	public Integer getVillage() {
		return this.village;
	}

	public void setVillage(Integer village) {
		this.village = village;
	}

	public Integer getMajorId() {
		return majorId;
	}

	public void setMajorId(Integer majorId) {
		this.majorId = majorId;
	}

	public Integer getIsMajor() {
		return isMajor;
	}

	public void setIsMajor(Integer isMajor) {
		this.isMajor = isMajor;
	}
}