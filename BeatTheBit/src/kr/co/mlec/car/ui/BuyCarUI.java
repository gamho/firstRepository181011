package kr.co.mlec.car.ui;

import kr.co.mlec.car.vo.CarVO;

public class BuyCarUI extends BaseUI {

	CarVO car = new CarVO();

	@Override
	public void process() throws Exception {

		int carNum = scanInt("�����Ͻ� ������ ������ȣ�� �Է��ϼ���. ������ 0���� ��������. : ");
		if(carNum != 0) {
			car.setNo(carNum);
			System.out.println("������ �������� ���Դϴ�...");
			car = upgradeService.buyCar(carNum);
			System.out.println("�� �� �̸� : " + car.getName());
			carService.insertCar(car);
			int price = car.getPrice();
			upgradeService.payBudget(price);
			System.out.println("���� ���� �Ϸ�!");
		} else {
			UpgradeCarUI upgrade = new UpgradeCarUI();
			upgrade.process();
		}
		

	}

}
