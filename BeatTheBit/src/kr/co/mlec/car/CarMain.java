package kr.co.mlec.car;

import kr.co.mlec.car.ui.CarUI;

/*
 	실행시키는 메인 메소드
 */
public class CarMain {

	public static void main(String[] args) {
		
		try {
			new CarUI().process();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
