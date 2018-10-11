package kr.co.mlec.car.ui;

import java.util.ArrayList;
import java.util.List;

import kr.co.mlec.car.vo.CarVO;

public class SelectMyAllCarUI extends BaseUI {

	List<CarVO> carList = new ArrayList<CarVO>();
	CarVO car = new CarVO();
	String carName = null;
	int cnt = 1;
	
	@Override
	public void process() throws Exception {

		carList = carService.selectMyAllCar();
		System.out.println("�Խù� ��� : " + carList.size() + "��");
		System.out.println("==================================================");
		System.out.println("������ȣ\t�𵨸�\t����\t��ⷮ\t����\t�������\t�ɷ�ġ\t���");
		System.out.println("==================================================");
		if(carList.isEmpty()) {
			System.out.println("\t��ϵ� �Խù��� �����ϴ�.");
		} else {
			for (CarVO mycar : carList) {
				System.out.println(
						mycar.getNo() + "\t" + mycar.getName() + "\t" + mycar.getPrice() + "\t" + mycar.getDispl()
									+ "\t" + mycar.getYear() + "\t" + mycar.getType() + "\t" + mycar.getSpec() + "\t" + mycar.getGrade());
			}
		}
		
	}

	
	
}
