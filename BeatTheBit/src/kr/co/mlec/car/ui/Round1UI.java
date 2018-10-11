package kr.co.mlec.car.ui;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import kr.co.mlec.car.vo.CarVO;

public class Round1UI extends BaseUI {

	Random r = new Random();
	List<CarVO> carList = new ArrayList<CarVO>();
	CarVO car = new CarVO();
	int result = 1;
	int budget = 0;
	int prize = 0;

	@Override
	public void process() throws Exception {

		System.out.println("��Ʈ�����ҹ� ���� �� ���� ������ȸ�� ���� ���� ȯ���մϴ�!");
		System.out.println("�̹� ��ȸ ���� ���� ��� : ");
		int[] numList = new int[5];
		for (int i = 0; i < numList.length; i++) {
			numList[i] = r.nextInt(40) + 1;// 1~40�� ���� �� �������� �ټ� �� ����
			for (int j = 0; j < i; j++) {
				if (numList[i] == numList[j]) {
					i--;
				}
			}
		}

		carList = raceService.selectEnemyCars(numList);
		car = carService.currentCar();
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
		
		Race1UI race = new Race1UI();
		race.process();
		
	{

		for (int i = 0; i < carList.size(); i++) {
			if (car.getSpec() < carList.get(i).getSpec()) {
				result++;
			}
		}
		System.out.println("����� ���� : " + result + "���Դϴ�.");
		if (result < 4) {
			prize = (600 / result);
			System.out.println("��� : " + prize + "����");
			raceService.addPrize(prize);
		}
		budget = raceService.showBudget();
		System.out.println("���� �ܰ� : " + budget + "����");

	}
	}
}
