package kr.co.mlec.car.ui;

public class CheckCarUI extends BaseUI {

	@Override
	public void process() throws Exception {

		int no = menu();

		if (no <= 3 && no >= 1) {
			switch (no) {
			case 1:
				CurrentCarUI current = new CurrentCarUI();
				current.process();
				break;
			case 2:
				SelectMyAllCarUI myAll = new SelectMyAllCarUI();
				myAll.process();
				break;
			case 3:
				SellCarUI sell = new SellCarUI();
				sell.process();
				break;
			}
		} else {
			System.out.println("잘못 입력하셨습니다. 다시 선택하십시오.");
		}

	}

	private int menu() {
		System.out.println("차량 관리 메뉴입니다.");

		System.out.println("1. 현재 차량 정보");
		System.out.println("2. 소유 차량 리스트");
		System.out.println("3. 차량 판매");

		int num = scanInt("원하시는 활동을 선택하십시오 : ");
		return num;

	}

}
