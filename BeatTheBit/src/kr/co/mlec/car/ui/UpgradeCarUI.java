package kr.co.mlec.car.ui;

import java.util.ArrayList;
import java.util.List;

import kr.co.mlec.car.vo.CarVO;

public class UpgradeCarUI extends BaseUI {

	String carGrade = null;
	int carDispl = 0;
	int carMinPrice = 0;
	int carMaxPrice = 0;
	
	@Override
	public void process() throws Exception {

		List<CarVO> carList = new ArrayList<CarVO>();
		int no = menu();
		
		if(no >= 1 && no <= 3) {
		switch (no) {
		case 1 :
			carGrade = scanStr("검색할  등급을 입력하세요 (경형, 소형, 중형, 준중형, 대형, 스포츠카 中 택1) : ");
			System.out.println("선택하신 조건으로 출력한 차량목록입니다.");
			carList = upgradeService.selectCarByGrade(carGrade);
			break;
		case 2 :
			carDispl = scanInt("검색할 배기량(cc)을 입력하세요 (+- 500에 대항하는 리스트를 출력합니다. 숫자만 입력) : ");
			System.out.println("선택하신 조건으로 출력한 차량목록입니다.");
			carList = upgradeService.selectCarByDispl(carDispl);
			break;
		case 3 : 
			carMinPrice = scanInt("검색할 최소 가격을 입력하세요 : ");
			carMaxPrice = scanInt("검색할 최대 가격을 입력하세요 : ");
			System.out.println("선택하신 조건으로 출력한 차량목록입니다.");
		    carList = upgradeService.selectCarByPrice(carMinPrice, carMaxPrice);
			break;
		case 0 :
			CarUI main = new CarUI();
			main.process();
		}
		
		
		System.out.println("==================================================");
		System.out.println("차량번호\t모델명\t\t가격\t배기량\t연식\t구동방식\t등급");
		System.out.println("==================================================");
			for (CarVO mycar : carList) {
				System.out.println(
						mycar.getNo() + "\t" + mycar.getName() + "\t\t" + mycar.getPrice() + "\t" + mycar.getDispl()
									+ "\t" + mycar.getYear() + "\t" + mycar.getType() + "\t"  + mycar.getGrade());
			
		}
			BuyCarUI buy = new BuyCarUI();
			buy.process();
		} else {
			System.out.println("잘못 입력했습니다. 다시 입력하십시오.");
		}
		
		
		
	} 

	private int menu() {
		
		System.out.println("차량 업그레이드 메뉴입니다.");
		int budget = raceService.showBudget();
		System.out.println("=======================================");
		System.out.println("현재 당신의 잔고 : " + budget);
		System.out.println("=======================================");
		System.out.println("1. 등급 조회");
		System.out.println("2. 배기량 조회");
		System.out.println("3. 가격 조회");
		System.out.println("4. 돌아가기");
		int num = scanInt("원하시는 필터링 조건을 고르십시오 : ");
		
		return num;
	}
	
}
