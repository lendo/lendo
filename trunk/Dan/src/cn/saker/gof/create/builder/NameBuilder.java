package cn.saker.designpattern.gof.create.builder;

public class NameBuilder implements Builder {
    private String firstName;
    
    private String middleName;
    
    private String lastName;
    
	@Override
	public void buildFirstName() {
		this.firstName = "First";
	}

	@Override
	public void buildLastName() {
		this.middleName = "Middle";
	}

	@Override
	public void buildMiddleName() {
		this.lastName = "Last";
	}

	@Override
	public String getFullName() {
		StringBuffer buffer = new StringBuffer(this.firstName);
		buffer.append(this.middleName);
		buffer.append(this.lastName);
		
		return buffer.toString();
	}

}
