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
			System.out.println("안녕하십니까. 제 " + cnt + " 회 비트연구소배");
			System.out.println("강남 한 바퀴 운전대회에 오신 것을 환영합니다.");
			Thread.sleep(1000);		
			System.out.println("F1 그랑프리 참가의 영예를 얻기 위해 젊음을 불사르는 라이더들이");
			System.out.println("바로 이 곳 비트연구소 앞에 모여있습니다!");
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
			System.out.println(race + " 번 차량 선두로 치고 나옵니다!");
			Thread.sleep(1500);		
			race = r.nextInt(6) + 1;
			System.out.println("-------------------------------------------------");
			System.out.println("아... " + race + " 번 차량에 문제가 생긴 듯 보입니다! 안타깝군요!");
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
			System.out.println("아니 이건 뭐죠? " + race + " 번 차량 지금 트랙을 반대로 돌고 있나요?");
			Thread.sleep(1500);		
			race = r.nextInt(6) + 1;
			System.out.println("-------------------------------------------------");
			System.out.println("그 와중에 타이어에 구멍이 난 " + race + " 번 차량!! 개판의 연속입니다!!");
			Thread.sleep(1500);		
			race = r.nextInt(6) + 1;
			System.out.println("-------------------------------------------------");
			System.out.println(race + " 번 차량도 전열을 가다듬는 가운데 과연 최종순위는 어떻게 될까요!??");
			Thread.sleep(3000);		
		System.out.println("-------------------------------------------------");
		System.out.println("-------------------------------------------------");
		System.out.println("-----------------경기 끝났습니다!!!-------------------");
		System.out.println("-------------------------------------------------");
		System.out.println("-------------------------------------------------");
		cnt++;
	}

	
	
}
