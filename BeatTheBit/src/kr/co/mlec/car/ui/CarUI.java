package kr.co.mlec.car.ui;

public class CarUI extends BaseUI {

	public static int cnt = 0;

	@Override
	public void process() throws Exception {
		
		ICarUI ui = null;

		while (true) {
			int type = menu();
			switch (type) {
			case 1:
				if(cnt == 0) {
					ui = new CreateCarUI();
					cnt++;
				} else {
					System.out.println("당신은 이미 초기 차량을 생성한 경력이 있습니다.");
					cnt++;
					CarUI main = new CarUI();
					main.process();
				}
				break;
			case 2:
				ui = new CheckCarUI();
				break;
			case 3:
				ui = new BeginRaceUI();
				break;
			case 4:
				ui = new UpgradeCarUI();
				break;
			case 5:
				ui = new ManualUI();
				break;
			case 0:
				ui = new ExitUI();
				break;
			}
			if (ui != null)
				ui.process();
			else
				System.out.println("잘못 입력하셨습니다. 다시 선택하십시오.");
		}

	}


	private int menu() {
		System.out.println("\t\t -Beat the Bit-");
		System.out.println("1. 차량 생성");
		System.out.println("2. 차량 관리");
		System.out.println("3. 경주 진행");
		System.out.println("4. 차량 업그레이드");
		System.out.println("5. 도움말");
		System.out.println("0. 게임 종료");
		int type = scanInt("항목을 선택하세요 : ");
		return type;

	}

}
