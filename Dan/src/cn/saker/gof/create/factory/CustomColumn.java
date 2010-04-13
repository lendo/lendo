package cn.saker.designpattern.gof.create.factory;

public class CustomColumn extends AbstractColumn implements Column {
	@Override
	public String getColumnName() {
		return "Custom Column";
	}

	@Override
	public String getColumnProperty() {
		return "customColumn";
	}
}
