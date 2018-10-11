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
					System.out.println("����� ������ �� ���� ������ ��ȸ�� ��︳�ϴ�.");
				}
				break;
				
			case 2:
				if(car.getSpec() < 400) {
				Round2UI r2 = new Round2UI();
				r2.process();
				} else {
					System.out.println("����� ������ �� ���� ������ ��ȸ�� ��︳�ϴ�.");
				}
				break;
				
			case 3:
				if(car.getSpec() < 400) {
					System.out.println("����� ������ ���� �ش� ��ȸ�� ������ ������ �ȵ˴ϴ�.");
				} else {
					Round3UI r3 = new Round3UI();
					r3.process();
				}
				break;
			}
		} else {
			System.out.println("�߸� �Է��ϼ̽��ϴ�. �ٽ� �����Ͻʽÿ�.");
		}

	}

	private int menu() {
		System.out.println("������ ��ȸ�� �������ֽʽÿ�.");

		System.out.println("1. ��Ʈ�����ҹ� ���� �� ���� ������ȸ");
		System.out.println("2. ���ѹα� �ڵ��� ������ȸ");
		System.out.println("3. F1 �׶�����(���� �ɷ�ġ 400 �̻� �ʿ�)");

		int no = scanInt("���Ͻô� Ȱ���� �����Ͻʽÿ� : ");
		return no;

	}
	
}
