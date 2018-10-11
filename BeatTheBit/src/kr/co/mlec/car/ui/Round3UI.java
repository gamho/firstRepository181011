package kr.co.mlec.car.ui;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import kr.co.mlec.car.vo.CarVO;

public class Round3UI extends BaseUI {

	Random r = new Random();
	List<CarVO> carList = new ArrayList<CarVO>();
	CarVO car = new CarVO();
	int result = 1;
	int budget = 0;
	int prize = 0;

	@Override
	public void process() throws Exception {

		System.out.println("F1 �׶������� �����Ͻ� ���� ȯ���մϴ�!");
		String answer = scanStr("�����Ͻ÷��� ������ 500������ �����ϼž� �մϴ�. �����Ͻðڽ��ϱ�? (Y/N)");
		if(answer.charAt(0) == 'Y' || answer.charAt(0) == 'y' ) {
		upgradeService.payBudget(500);
		} else {
		BeginRaceUI page = new BeginRaceUI();
		page.process();
		}
		
		System.out.println("�̹� ��ȸ ���� ���� ��� : ");
		int[] numList3 = new int[9];
		for (int i = 0; i < numList3.length; i++) {
			numList3[i] = r.nextInt(29) + 1;// 1~29�� ���� �� �������� ��ȩ �� ����
			for (int j = 0; j < i; j++) {
				if (numList3[i] == numList3[j]) {
					i--;
				}
			}
		}
		car = carService.currentCar();
		carList = raceService.selectSuperCars(numList3);
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

		Race3UI race = new Race3UI();
		race.process();
		
		for (int i = 0; i < carList.size(); i++) {
			if (car.getSpec() < carList.get(i).getSpec()) {
				result++;
			}
		}
		System.out.println("����� ���� : " + result + "���Դϴ�.");
		if (result < 4 && result > 1) {
			prize = (30000 / result);
			raceService.addPrize(prize);
			System.out.println("��� : " + prize + "����");
			budget = raceService.showBudget();
			System.out.println("���� �ܰ� : " + budget + "����");
		} else if (result == 1) {
			System.out.println("�ߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡޡߡޡߡ�");
			System.out.println("�ޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡߡޡߡޡ�");
			System.out.println("�����մϴ�!! F1 �׶��������� ����ϼ̽��ϴ�!!!!");
		} else if (result == 1) {
			System.out.println("�ߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡޡߡޡߡ�");
			System.out.println("�ޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡޡߡߡޡߡޡ�");
			prize = 50000;
			raceService.addPrize(prize);
			System.out.println("��� ��� : " + prize + "����");
			budget = raceService.showBudget();
			System.out.println("���� �ܰ� : " + budget + "����");
			car = carService.currentCar();
			System.out.println("��� ���� : " + car.getName());
			ExitUI exit = new ExitUI();
			exit.process();
			
		}
	}

}
