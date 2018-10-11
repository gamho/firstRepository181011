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

		System.out.println("F1 그랑프리에 참가하신 것을 환영합니다!");
		String answer = scanStr("참가하시려면 참가비 500만원을 지급하셔야 합니다. 지급하시겠습니까? (Y/N)");
		if(answer.charAt(0) == 'Y' || answer.charAt(0) == 'y' ) {
		upgradeService.payBudget(500);
		} else {
		BeginRaceUI page = new BeginRaceUI();
		page.process();
		}
		
		System.out.println("이번 대회 참가 차량 목록 : ");
		int[] numList3 = new int[9];
		for (int i = 0; i < numList3.length; i++) {
			numList3[i] = r.nextInt(29) + 1;// 1~29번 차량 중 랜덤으로 아홉 대 추출
			for (int j = 0; j < i; j++) {
				if (numList3[i] == numList3[j]) {
					i--;
				}
			}
		}
		car = carService.currentCar();
		carList = raceService.selectSuperCars(numList3);
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

		Race3UI race = new Race3UI();
		race.process();
		
		for (int i = 0; i < carList.size(); i++) {
			if (car.getSpec() < carList.get(i).getSpec()) {
				result++;
			}
		}
		System.out.println("당신의 순위 : " + result + "등입니다.");
		if (result < 4 && result > 1) {
			prize = (30000 / result);
			raceService.addPrize(prize);
			System.out.println("상금 : " + prize + "만원");
			budget = raceService.showBudget();
			System.out.println("현재 잔고 : " + budget + "만원");
		} else if (result == 1) {
			System.out.println("◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◇◆◇◆◇");
			System.out.println("◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◆◇◆◇◆");
			System.out.println("축하합니다!! F1 그랑프리에서 우승하셨습니다!!!!");
		} else if (result == 1) {
			System.out.println("◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◇◆◇◆◇");
			System.out.println("◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◆◇◆◇◆");
			prize = 50000;
			raceService.addPrize(prize);
			System.out.println("우승 상금 : " + prize + "만원");
			budget = raceService.showBudget();
			System.out.println("최종 잔고 : " + budget + "만원");
			car = carService.currentCar();
			System.out.println("우승 차량 : " + car.getName());
			ExitUI exit = new ExitUI();
			exit.process();
			
		}
	}

}
