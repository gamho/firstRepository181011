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
				System.out.println("����� ������ �� �� ��� �Դϴ�!");
				car = carService.selectCar(no);
				break;
			case 2:
				System.out.println("����� ������ ����ũ �Դϴ�!");
				car = carService.selectCar(no);
				break;
			case 3:
				System.out.println("����� ������ ����Ʈ �Դϴ�!");
				car = carService.selectCar(no);
				break;
			case 4:
				System.out.println("����� ������ EF�ҳ�Ÿ �Դϴ�!");
				car = carService.selectCar(no);
				break;
			case 5:
				System.out.println("����� ������ �ƹݶ� �Դϴ�!");
				car = carService.selectCar(no);
				break;
			}

			System.out.println("����� ù ���� �����Դϴ�.");
			System.out.println("�� �� �� ȣ : " + car.getNo());
			System.out.println("��  ��   �� : " + car.getNo());
			System.out.println("��        �� : " + car.getPrice());
			System.out.println("��  ��  �� : " + car.getDispl());
			System.out.println("��       �� : " + car.getYear());
			System.out.println("�� �� �� �� : " + car.getType());
			System.out.println("��  ��  ġ : " + car.getSpec());
			System.out.println("��       �� : " + car.getGrade());
			car.setProperty("y");
			carService.insertCar(car);		// ���� ���� ���
		} else {
			System.out.println("�߸� �Է��ϼ̽��ϴ�. �ٽ� �����Ͻʽÿ�.");
		}
	}

	private int menu() {

		System.out.println("���� ���� �޴��Դϴ�.");
		System.out.println("1. �� �� ���");
		System.out.println("2. ����ũ");
		System.out.println("3. ����Ʈ");
		System.out.println("4. EF�ҳ�Ÿ");
		System.out.println("5. �ƹݶ�");
		int num = scanInt("����� ������ ���ʽÿ� : ");

		return num;
	}

}
