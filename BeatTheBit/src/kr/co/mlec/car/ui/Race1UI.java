package kr.co.mlec.car.ui;

import java.util.Random;

public class Race1UI extends BaseUI {

	Random r = new Random();
	int race = 0;
	private static int cnt = 1;
	
	@Override
	public void process() throws Exception {
			
			Thread.sleep(1000);		
			System.out.println("-------------------------------------------------");
			System.out.println("�ȳ��Ͻʴϱ�. �� " + cnt + " ȸ ��Ʈ�����ҹ�");
			System.out.println("���� �� ���� ������ȸ�� ���� ���� ȯ���մϴ�.");
			Thread.sleep(1000);		
			System.out.println("F1 �׶����� ������ ������ ��� ���� ������ �һ縣�� ���̴�����");
			System.out.println("�ٷ� �� �� ��Ʈ������ �տ� ���ֽ��ϴ�!");
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
			System.out.println(race + " �� ���� ���η� ġ�� ���ɴϴ�!");
			Thread.sleep(1500);		
			race = r.nextInt(6) + 1;
			System.out.println("-------------------------------------------------");
			System.out.println("��... " + race + " �� ������ ������ ���� �� ���Դϴ�! ��Ÿ������!");
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
			System.out.println("�ƴ� �̰� ����? " + race + " �� ���� ���� Ʈ���� �ݴ�� ���� �ֳ���?");
			Thread.sleep(1500);		
			race = r.nextInt(6) + 1;
			System.out.println("-------------------------------------------------");
			System.out.println("�� ���߿� Ÿ�̾ ������ �� " + race + " �� ����!! ������ �����Դϴ�!!");
			Thread.sleep(1500);		
			race = r.nextInt(6) + 1;
			System.out.println("-------------------------------------------------");
			System.out.println(race + " �� ������ ������ ���ٵ�� ��� ���� ���������� ��� �ɱ��!??");
			Thread.sleep(3000);		
		System.out.println("-------------------------------------------------");
		System.out.println("-------------------------------------------------");
		System.out.println("-----------------��� �������ϴ�!!!-------------------");
		System.out.println("-------------------------------------------------");
		System.out.println("-------------------------------------------------");
		cnt++;
	}

	
	
}
