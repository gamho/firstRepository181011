package kr.co.mlec.car.ui;


public class ExitUI implements ICarUI {

	@Override
	public void process() throws Exception {
		
		System.out.println("\t\t게임을 종료합니다.");
		System.out.println("\t\t안녕!!");
		System.exit(0);
		
	}

	
	
}
