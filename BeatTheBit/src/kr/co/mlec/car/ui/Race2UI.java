package kr.co.mlec.car.ui;

import java.util.Random;

public class Race2UI extends BaseUI {

	Random r = new Random();
	int race = 0;
	private static int cnt = 1;
	
	@Override
	public void process() throws Exception {

		Thread.sleep(1000);		
		System.out.println("-------------------------------------------------");
		System.out.println("�ȳ��Ͻʴϱ�. �� " + cnt + " ȸ ���ѹα�");
		System.out.println("�ڵ��� ������ȸ�� ���� ���� ȯ���մϴ�.");
		Thread.sleep(1000);		
		System.out.println("F1 �׶����� ������ ���� ���� �ܰ�! ���ζ��ϴ� ���̴�����");
		System.out.println("�ٷ� �� �� ���տ�� �տ� ���ֽ��ϴ�!");
		Thread.sleep(1500);		
		System.out.println("��� �����ڵ� �� �������� ������ ����ϸ�");
		System.out.println(" �� " + cnt + " ȸ ��ȸ ���� �����մϴ�!!!");
		System.out.println("-------------------------------------------------");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("�� ����߽��ϴ�! " + race + " �� ���� ���η� ġ�� ���ɴϴ�!");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println(race + " �� ������ ġ�� �����±���! �ʹݺ��� ġ���� �����Դϴ�!");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println("��... " + race + " �� ���� Ÿ�̾ �̻��� ���峪���ϴ�!");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println(race + " �� ����!! ���� ��������??");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println(race + " �� ������ ���ڱ� ġ�� ���ɴϴ�! ������ ����!!");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println("���������� �쿭�� �����Ⱑ ����ϴ�! ���� ���������� ��� �ɱ��!??");
		Thread.sleep(3000);		
	System.out.println("-------------------------------------------------");
	System.out.println("-------------------------------------------------");
	System.out.println("-----------------��� �������ϴ�!!!-------------------");
	System.out.println("-------------------------------------------------");
	System.out.println("-------------------------------------------------");
	cnt++;
		
	}

	
	
}
