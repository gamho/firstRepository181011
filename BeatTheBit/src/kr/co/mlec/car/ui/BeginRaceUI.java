package kr.co.mlec.car.ui;

import kr.co.mlec.car.vo.CarVO;

public class BeginRaceUI extends BaseUI {

	@Override
	public void process() throws Exception {
		
		CarVO car = new CarVO();
		
		car = carService.currentCar();
		
		int no = menu();

		if (no <= 3 && no >= 1) {
			switch (no) {
			case 1:
				if(car.getSpec() < 200) {
				Round1UI r1 = new Round1UI();
				r1.process();
				} else {
					System.out.println("당신의 차량은 더 높은 수준의 대회가 어울립니다.");
				}
				break;
				
			case 2:
				if(car.getSpec() < 400) {
				Round2UI r2 = new Round2UI();
				r2.process();
				} else {
					System.out.println("당신의 차량은 더 높은 수준의 대회가 어울립니다.");
				}
				break;
				
			case 3:
				if(car.getSpec() < 400) {
					System.out.println("당신의 차량은 아직 해당 대회를 참가할 수준이 안됩니다.");
				} else {
					Round3UI r3 = new Round3UI();
					r3.process();
				}
				break;
			}
		} else {
			System.out.println("잘못 입력하셨습니다. 다시 선택하십시오.");
		}

	}

	private int menu() {
		System.out.println("참가할 대회를 선택해주십시오.");

		System.out.println("1. 비트연구소배 강남 한 바퀴 운전대회");
		System.out.println("2. 대한민국 자동차 운전대회");
		System.out.println("3. F1 그랑프리(차량 능력치 400 이상 필요)");

		int no = scanInt("원하시는 활동을 선택하십시오 : ");
		return no;

	}
	
}
