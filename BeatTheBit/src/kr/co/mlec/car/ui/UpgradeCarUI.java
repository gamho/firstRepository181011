package kr.co.mlec.car.ui;

import java.util.ArrayList;
import java.util.List;

import kr.co.mlec.car.vo.CarVO;

public class UpgradeCarUI extends BaseUI {

	String carGrade = null;
	int carDispl = 0;
	int carMinPrice = 0;
	int carMaxPrice = 0;
	
	@Override
	public void process() throws Exception {

		List<CarVO> carList = new ArrayList<CarVO>();
		int no = menu();
		
		if(no >= 1 && no <= 3) {
		switch (no) {
		case 1 :
			carGrade = scanStr("�˻���  ����� �Է��ϼ��� (����, ����, ����, ������, ����, ������ī �� ��1) : ");
			System.out.println("�����Ͻ� �������� ����� ��������Դϴ�.");
			carList = upgradeService.selectCarByGrade(carGrade);
			break;
		case 2 :
			carDispl = scanInt("�˻��� ��ⷮ(cc)�� �Է��ϼ��� (+- 500�� �����ϴ� ����Ʈ�� ����մϴ�. ���ڸ� �Է�) : ");
			System.out.println("�����Ͻ� �������� ����� ��������Դϴ�.");
			carList = upgradeService.selectCarByDispl(carDispl);
			break;
		case 3 : 
			carMinPrice = scanInt("�˻��� �ּ� ������ �Է��ϼ��� : ");
			carMaxPrice = scanInt("�˻��� �ִ� ������ �Է��ϼ��� : ");
			System.out.println("�����Ͻ� �������� ����� ��������Դϴ�.");
		    carList = upgradeService.selectCarByPrice(carMinPrice, carMaxPrice);
			break;
		case 0 :
			CarUI main = new CarUI();
			main.process();
		}
		
		
		System.out.println("==================================================");
		System.out.println("������ȣ\t�𵨸�\t\t����\t��ⷮ\t����\t�������\t���");
		System.out.println("==================================================");
			for (CarVO mycar : carList) {
				System.out.println(
						mycar.getNo() + "\t" + mycar.getName() + "\t\t" + mycar.getPrice() + "\t" + mycar.getDispl()
									+ "\t" + mycar.getYear() + "\t" + mycar.getType() + "\t"  + mycar.getGrade());
			
		}
			BuyCarUI buy = new BuyCarUI();
			buy.process();
		} else {
			System.out.println("�߸� �Է��߽��ϴ�. �ٽ� �Է��Ͻʽÿ�.");
		}
		
		
		
	} 

	private int menu() {
		
		System.out.println("���� ���׷��̵� �޴��Դϴ�.");
		int budget = raceService.showBudget();
		System.out.println("=======================================");
		System.out.println("���� ����� �ܰ� : " + budget);
		System.out.println("=======================================");
		System.out.println("1. ��� ��ȸ");
		System.out.println("2. ��ⷮ ��ȸ");
		System.out.println("3. ���� ��ȸ");
		System.out.println("4. ���ư���");
		int num = scanInt("���Ͻô� ���͸� ������ ���ʽÿ� : ");
		
		return num;
	}
	
}
