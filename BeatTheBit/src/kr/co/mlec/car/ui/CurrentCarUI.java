package kr.co.mlec.car.ui;

import java.util.ArrayList;
import java.util.List;

import kr.co.mlec.car.vo.CarVO;

public class CurrentCarUI extends BaseUI {

	List<CarVO> carList = new ArrayList<CarVO>();
	CarVO car = new CarVO();
	String carName = null;

	@Override
	public void process() throws Exception {

		car = carService.currentCar(); // cnt�� ���� ������ ����ų �� �־�� ��!
		if (car != null) {
			System.out.println("����� ���� ���� �����Դϴ�.");
			System.out.println("�� �� �� ȣ : " + car.getNo());
			System.out.println("��  ��   �� : " + car.getName());
			System.out.println("��        �� : " + car.getPrice());
			System.out.println("��  ��  �� : " + car.getDispl());
			System.out.println("��       �� : " + car.getYear());
			System.out.println("�� �� �� �� : " + car.getType());
			System.out.println("��  ��  ġ : " + car.getSpec());
			System.out.println("��       �� : " + car.getGrade());
		} else {
			System.out.println("����� ���� �������� ������ �����ϴ�.");
		}

	}

}
