package kr.co.mlec.car.ui;

import kr.co.mlec.car.vo.CarVO;

public class CreateCarUI extends BaseUI {

	@Override
	public void process() throws Exception {
		CarVO car = new CarVO();

		int no = menu();

		if (no >= 1 && no <= 5) {
			switch (no) {
			case 1:
				System.out.println("당신의 차량은 올 뉴 모닝 입니다!");
				car = carService.selectCar(no);
				break;
			case 2:
				System.out.println("당신의 차량은 스파크 입니다!");
				car = carService.selectCar(no);
				break;
			case 3:
				System.out.println("당신의 차량은 엑센트 입니다!");
				car = carService.selectCar(no);
				break;
			case 4:
				System.out.println("당신의 차량은 EF소나타 입니다!");
				car = carService.selectCar(no);
				break;
			case 5:
				System.out.println("당신의 차량은 아반떼 입니다!");
				car = carService.selectCar(no);
				break;
			}

			System.out.println("당신의 첫 차의 정보입니다.");
			System.out.println("차 량 번 호 : " + car.getNo());
			System.out.println("모  델   명 : " + car.getNo());
			System.out.println("가        격 : " + car.getPrice());
			System.out.println("배  기  량 : " + car.getDispl());
			System.out.println("연       식 : " + car.getYear());
			System.out.println("구 동 방 식 : " + car.getType());
			System.out.println("능  력  치 : " + car.getSpec());
			System.out.println("등       급 : " + car.getGrade());
			car.setProperty("y");
			carService.insertCar(car);		// 선택 차량 등록
		} else {
			System.out.println("잘못 입력하셨습니다. 다시 선택하십시오.");
		}
	}

	private int menu() {

		System.out.println("차량 생성 메뉴입니다.");
		System.out.println("1. 올 뉴 모닝");
		System.out.println("2. 스파크");
		System.out.println("3. 엑센트");
		System.out.println("4. EF소나타");
		System.out.println("5. 아반떼");
		int num = scanInt("당신의 차량을 고르십시오 : ");

		return num;
	}

}
