package cn.saker.designpattern.gof.create.prototype;

public class MainTest {

	public static void main(String[] args) {
		DonationReport donationReport = new DonationReport("Donation Report");
		DonationReport donationReport2 = (DonationReport)donationReport.clone();
		
		System.out.println(donationReport + "---" + donationReport.getReportName());
		System.out.println(donationReport2 + "---" + donationReport2.getReportName());
	}

}
