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
			System.out.println("�߸� �Է��ϼ̽��ϴ�. �ٽ� �����Ͻʽÿ�.");
		}

	}

	private int menu() {
		System.out.println("���� ���� �޴��Դϴ�.");

		System.out.println("1. ���� ���� ����");
		System.out.println("2. ���� ���� ����Ʈ");
		System.out.println("3. ���� �Ǹ�");

		int num = scanInt("���Ͻô� Ȱ���� �����Ͻʽÿ� : ");
		return num;

	}

}
