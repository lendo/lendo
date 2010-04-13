package cn.saker.designpattern.gof.create.factory;

public class CompositeColumn extends AbstractColumn implements Column {
	@Override
	public String getColumnName() {
		return "Composite Column";
	}

	@Override
	public String getColumnProperty() {
		return "compositeColumn";
	}
}
