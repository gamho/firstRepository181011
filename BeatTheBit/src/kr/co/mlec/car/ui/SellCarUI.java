package kr.co.mlec.car.ui;

import java.util.ArrayList;
import java.util.List;

import kr.co.mlec.car.vo.CarVO;

public class SellCarUI extends BaseUI {

	List<CarVO> carList = new ArrayList<CarVO>();
	CarVO car = new CarVO();
	String carName = null;
	int price = 0;
	int carNum = 0;
	@Override
	public void process() throws Exception {
		
		carList = carService.selectMyAllCar();
		System.out.println("게시물 목록 : " + carList.size() + "개");
		System.out.println("==================================================");
		System.out.println("차량번호\t모델명\t가격\t배기량\t연식\t구동방식\t능력치\t등급");
		System.out.println("==================================================");
		if(carList.isEmpty()) {
			System.out.println("\t등록된 게시물이 없습니다.");
		} else {
			for (CarVO mycar : carList) {
				System.out.println(
						mycar.getNo() + "\t" + mycar.getName() + "\t" + mycar.getPrice() + "\t" + mycar.getDispl()
									+ "\t" + mycar.getYear() + "\t" + mycar.getType() + "\t" + mycar.getSpec() + "\t" + mycar.getGrade());
			}
		}
		
		
		System.out.println();
		carNum = scanInt("판매할 차량번호를 입력하십시오. 메인으로 돌아가시려면 0번을 입력하십시오 : ");
		if(carNum != 0) {
		car.setNo(carNum);
		System.out.println("차량을 차고에서 꺼내는 중입니다...");
		car = carService.selectMyCar(carNum);
		price = (car.getPrice() / 5);
		System.out.println("판매차량 이름 : " + car.getName());
		System.out.println("판매차량 가격 : " + price);
		raceService.addPrize(price);
		
		carNum = car.getNo();
		carService.sellCar(carNum);
		System.out.println("차량 판매 완료!");
		} else {
			CarUI main = new CarUI();
			main.process();
		}
	}

}
