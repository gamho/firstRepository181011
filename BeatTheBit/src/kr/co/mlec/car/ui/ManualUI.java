package kr.co.mlec.car.ui;


public class ManualUI extends BaseUI {

	@Override
	public void process() throws Exception {
	
		while(true) {
			int type = menu();
			switch (type) {
			case 1 :
				System.out.println("-		차량 생성에 관하여		-");
				System.out.println("*************************");
				System.out.println("**		5대의 차량 중 택1		**");
				System.out.println("**		최초 1회만 지원		**");
				break;
			case 2 :
				System.out.println("-		차량 관리에 관하여		-");
				System.out.println("*************************");
				break;
			case 3 : 
				System.out.println("-		경주 진행에 관하여		-");
				System.out.println("*************************");
				System.out.println("  	세 등급으로 나뉘는 레이스	 ");
				System.out.println("	상금을 모아 드림카를 타보자	 ");
				break;
			case 4 :
				System.out.println("-		차량 업그레이드로		-");
				System.out.println("*************************");
				System.out.println("  	보유한 차의 성능을 높여보자  	 ");
				break;
			case 5:
				CarUI car = new CarUI();
				car.process();
			default:
				System.out.println("잘못 입력하셨습니다. 다시 선택하십시오.");
			}
				
		}
	}

	private int menu() {
		System.out.println("\t\t -정보 수집은 기본이다.-");
		System.out.println("1. 차량 생성에 관하여");
		System.out.println("2. 차량 관리에 관하여");
		System.out.println("3. 경주 진행에 관하여");
		System.out.println("4. 차량 업그레이드에 관하여");
		System.out.println("5. 돌아가기");
		int type = scanInt("항목을 선택하세요 : ");
		return type;
	}
}