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

		System.out.println("대한민국 자동차 운전대회에 오신 것을 환영합니다!");
		System.out.println("이번 대회 참가 차량 목록 : ");
		int[] numList2 = new int[5];
		for (int i = 0; i < numList2.length; i++) {
			numList2[i] = r.nextInt(46) + 1;// 1~46번 차량 중 랜덤으로 다섯 대 추출
			for (int j = 0; j < i; j++) {
				if (numList2[i] == numList2[j]) {
					i--;
				}
			}
		}
		car = carService.currentCar();
		carList = raceService.selectEnemyCars(numList2);

		System.out.println("==============================================");
		System.out.println("모델명\t\t배기량\t연식\t구동방식\t능력치\t등급");
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
		System.out.println("당신의 순위 : " + result + "등입니다.");
		if (result < 4) {
			prize = (1200 / result);
			raceService.addPrize(prize);
			System.out.println("상금 : " + prize + "만원");
		}
		budget = raceService.showBudget();
		System.out.println("현재 잔고 : " + budget + "만원");

	}

}
