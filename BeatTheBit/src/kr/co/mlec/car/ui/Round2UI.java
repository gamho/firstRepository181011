package kr.co.mlec.car.ui;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import kr.co.mlec.car.vo.CarVO;

public class Round2UI extends BaseUI {

	Random r = new Random();
	List<CarVO> carList = new ArrayList<CarVO>();
	CarVO car = new CarVO();
	int result = 1;
	int budget = 0;
	int prize = 0;

	@Override
	public void process() throws Exception {

		System.out.println("���ѹα� �ڵ��� ������ȸ�� ���� ���� ȯ���մϴ�!");
		System.out.println("�̹� ��ȸ ���� ���� ��� : ");
		int[] numList2 = new int[5];
		for (int i = 0; i < numList2.length; i++) {
			numList2[i] = r.nextInt(46) + 1;// 1~46�� ���� �� �������� �ټ� �� ����
			for (int j = 0; j < i; j++) {
				if (numList2[i] == numList2[j]) {
					i--;
				}
			}
		}
		car = carService.currentCar();
		carList = raceService.selectEnemyCars(numList2);

		System.out.println("==============================================");
		System.out.println("�𵨸�\t\t��ⷮ\t����\t�������\t�ɷ�ġ\t���");
		System.out.println("==============================================");
		Thread.sleep(500);		
		System.out.println(car.getName() + "\t\t" + car.getDispl() + "\t" + car.getYear() + "\t" + car.getType() + "\t"
				+ car.getSpec() + "\t" + car.getGrade());
		for (CarVO enemyCar : carList) {
			Thread.sleep(500);
			System.out.println(enemyCar.getName() + "\t\t" + enemyCar.getDispl() + "\t" + enemyCar.getYear() + "\t"
					+ enemyCar.getType() + "\t" + enemyCar.getSpec() + "\t" + enemyCar.getGrade());
		}

		Race2UI race = new Race2UI();
		race.process();
		
		for (int i = 0; i < carList.size(); i++) {
			if (car.getSpec() < carList.get(i).getSpec()) {
				result++;
			}
		}
		System.out.println("����� ���� : " + result + "���Դϴ�.");
		if (result < 4) {
			prize = (1200 / result);
			raceService.addPrize(prize);
			System.out.println("��� : " + prize + "����");
		}
		budget = raceService.showBudget();
		System.out.println("���� �ܰ� : " + budget + "����");

	}

}
