package kr.co.mlec.car.ui;


public class ExitUI implements ICarUI {

	@Override
	public void process() throws Exception {
		
		System.out.println("\t\t������ �����մϴ�.");
		System.out.println("\t\t�ȳ�!!");
		System.exit(0);
		
	}

	
	
}
