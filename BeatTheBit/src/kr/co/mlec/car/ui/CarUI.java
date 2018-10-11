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
					System.out.println("����� �̹� �ʱ� ������ ������ ����� �ֽ��ϴ�.");
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
				System.out.println("�߸� �Է��ϼ̽��ϴ�. �ٽ� �����Ͻʽÿ�.");
		}

	}


	private int menu() {
		System.out.println("\t\t -Beat the Bit-");
		System.out.println("1. ���� ����");
		System.out.println("2. ���� ����");
		System.out.println("3. ���� ����");
		System.out.println("4. ���� ���׷��̵�");
		System.out.println("5. ����");
		System.out.println("0. ���� ����");
		int type = scanInt("�׸��� �����ϼ��� : ");
		return type;

	}

}
