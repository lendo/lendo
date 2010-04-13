package cn.saker.designpattern.gof.create.prototype;

public class AbstractReport implements Cloneable {
	private String reportName = null;
	
	public Object clone(){
		Object object = null;
		try {
			object = super.clone();
		} catch (CloneNotSupportedException exception) {
			System.err.println("AbstractReport is not Cloneable");
		}
		
		return object;
	}

	public String getReportName() {
		return reportName;
	}

	public void setReportName(String reportName) {
		this.reportName = reportName;
	}
}
