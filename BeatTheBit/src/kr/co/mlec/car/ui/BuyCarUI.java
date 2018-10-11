package kr.co.mlec.car.ui;

import kr.co.mlec.car.vo.CarVO;

public class BuyCarUI extends BaseUI {

	CarVO car = new CarVO();

	@Override
	public void process() throws Exception {

		int carNum = scanInt("구매하실 차량의 차량번호를 입력하세요. 없으면 0번을 누르세요. : ");
		if(carNum != 0) {
			car.setNo(carNum);
			System.out.println("차량을 가져오는 중입니다...");
			car = upgradeService.buyCar(carNum);
			System.out.println("산 차 이름 : " + car.getName());
			carService.insertCar(car);
			int price = car.getPrice();
			upgradeService.payBudget(price);
			System.out.println("차량 구매 완료!");
		} else {
			UpgradeCarUI upgrade = new UpgradeCarUI();
			upgrade.process();
		}
		

	}

}
