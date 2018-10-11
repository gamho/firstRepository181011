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
		
	}

	
	
}
