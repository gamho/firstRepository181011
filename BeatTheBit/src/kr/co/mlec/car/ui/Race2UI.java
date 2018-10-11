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
		System.out.println("안녕하십니까. 제 " + cnt + " 회 대한민국");
		System.out.println("자동차 운전대회에 오신 것을 환영합니다.");
		Thread.sleep(1000);		
		System.out.println("F1 그랑프리 참가를 위한 최종 단계! 내로라하는 라이더들이");
		System.out.println("바로 이 곳 종합운동장 앞에 모여있습니다!");
		Thread.sleep(1500);		
		System.out.println("모든 참가자들 및 차량들의 안전을 기원하며");
		System.out.println(" 제 " + cnt + " 회 대회 지금 시작합니다!!!");
		System.out.println("-------------------------------------------------");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("자 출발했습니다! " + race + " 번 차량 선두로 치고 나옵니다!");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println(race + " 번 차량이 치고 나오는군요! 초반부터 치열한 접전입니다!");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println("아... " + race + " 번 차량 타이어에 이상이 생겼나봅니다!");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println(race + " 번 차량!! 상태 괜찮나요??");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println(race + " 번 차량이 갑자기 치고 나옵니다! 반전의 연속!!");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println("마지막까지 우열을 가리기가 힘듭니다! 과연 최종순위는 어떻게 될까요!??");
		Thread.sleep(3000);		
	System.out.println("-------------------------------------------------");
	System.out.println("-------------------------------------------------");
	System.out.println("-----------------경기 끝났습니다!!!-------------------");
	System.out.println("-------------------------------------------------");
	System.out.println("-------------------------------------------------");
	cnt++;
		
	}

	
	
}
