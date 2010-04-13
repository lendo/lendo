package cn.saker.designpattern.gof.create.factory;

public class CommonColumn extends AbstractColumn implements Column {
	@Override
	public String getColumnName() {
		return "Common Column";
	}

	@Override
	public String getColumnProperty() {
		return "commonColumn";
	}
}
