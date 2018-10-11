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

		car = carService.currentCar(); // cnt가 현재 차량을 가리킬 수 있어야 해!
		if (car != null) {
			System.out.println("당신의 현재 차량 정보입니다.");
			System.out.println("차 량 번 호 : " + car.getNo());
			System.out.println("모  델   명 : " + car.getName());
			System.out.println("가        격 : " + car.getPrice());
			System.out.println("배  기  량 : " + car.getDispl());
			System.out.println("연       식 : " + car.getYear());
			System.out.println("구 동 방 식 : " + car.getType());
			System.out.println("능  력  치 : " + car.getSpec());
			System.out.println("등       급 : " + car.getGrade());
		} else {
			System.out.println("당신은 현재 소유중인 차량이 없습니다.");
		}

	}

}
