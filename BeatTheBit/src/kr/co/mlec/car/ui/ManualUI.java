package kr.co.mlec.car.ui;


public class ManualUI extends BaseUI {

	@Override
	public void process() throws Exception {
	
		while(true) {
			int type = menu();
			switch (type) {
			case 1 :
				System.out.println("-		���� ������ ���Ͽ�		-");
				System.out.println("*************************");
				System.out.println("**		5���� ���� �� ��1		**");
				System.out.println("**		���� 1ȸ�� ����		**");
				break;
			case 2 :
				System.out.println("-		���� ������ ���Ͽ�		-");
				System.out.println("*************************");
				break;
			case 3 : 
				System.out.println("-		���� ���࿡ ���Ͽ�		-");
				System.out.println("*************************");
				System.out.println("  	�� ������� ������ ���̽�	 ");
				System.out.println("	����� ��� �帲ī�� Ÿ����	 ");
				break;
			case 4 :
				System.out.println("-		���� ���׷��̵��		-");
				System.out.println("*************************");
				System.out.println("  	������ ���� ������ ��������  	 ");
				break;
			case 5:
				CarUI car = new CarUI();
				car.process();
			default:
				System.out.println("�߸� �Է��ϼ̽��ϴ�. �ٽ� �����Ͻʽÿ�.");
			}
				
		}
	}

	private int menu() {
		System.out.println("\t\t -���� ������ �⺻�̴�.-");
		System.out.println("1. ���� ������ ���Ͽ�");
		System.out.println("2. ���� ������ ���Ͽ�");
		System.out.println("3. ���� ���࿡ ���Ͽ�");
		System.out.println("4. ���� ���׷��̵忡 ���Ͽ�");
		System.out.println("5. ���ư���");
		int type = scanInt("�׸��� �����ϼ��� : ");
		return type;
	}
}