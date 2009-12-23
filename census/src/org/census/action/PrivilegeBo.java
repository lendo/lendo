package org.census.action;

public class PrivilegeBo{

	// Fields

	private String privilegeId;

	private String parentId;

	private String url;

	private String name;

	private String title;

	private String target;

	private String icon;

	private String iconopen;

	private Integer opened;
	
	private String groupId;
	
	private String priType;

	public String getPriType() {
		return this.priType;
	}

	public void setPriType(String priType) {
		this.priType = priType;
	}
	
	public String getGroupId() {
		return this.groupId;
	}

	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}
	
	private String[] selectList = new String[1];

	public String[] getSelectList(){
		return selectList;
	}
	public void setSelectList(String[] selectList) {
		this.selectList = selectList;
	}


	public String getPrivilegeId() {
		return this.privilegeId;
	}

	public void setPrivilegeId(String privilegeId) {
		this.privilegeId = privilegeId;
	}

	public String getParentId() {
		return this.parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTarget() {
		return this.target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public String getIcon() {
		return this.icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getIconopen() {
		return this.iconopen;
	}

	public void setIconopen(String iconopen) {
		this.iconopen = iconopen;
	}

	public Integer getOpened() {
		return this.opened;
	}

	public void setOpened(Integer opened) {
		this.opened = opened;
	}



}