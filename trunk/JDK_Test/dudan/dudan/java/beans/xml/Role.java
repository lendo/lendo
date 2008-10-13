package dudan.java.beans.xml;

import java.io.Serializable;

public class Role implements Serializable {

	private static final long serialVersionUID = -4035960554072557233L;

	private int id;
	
	private String roleName;
	
	private String roleCode;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRoleCode() {
		return roleCode;
	}

	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
}
