package kr.co.mlec.car;

import kr.co.mlec.car.ui.CarUI;

/*
 	�����Ű�� ���� �޼ҵ�
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
