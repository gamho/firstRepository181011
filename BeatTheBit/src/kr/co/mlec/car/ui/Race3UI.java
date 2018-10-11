package kr.co.mlec.car.ui;

import java.util.Random;

public class Race3UI extends BaseUI {

	Random r = new Random();
	int race = 0;
	private static int cnt = 1;
	
	@Override
	public void process() throws Exception {

		Thread.sleep(1000);		
		System.out.println("-------------------------------------------------");
		System.out.println("Good Afternoon, ladies and gentlemen!");
		System.out.println("Welcome to " + cnt + "th F1 Grand Prix in Korea!");
		Thread.sleep(1000);		
		System.out.println("The winner of the match would take 500 million won");
		System.out.println("for the prize and the great honor of whole F1 history.");
		Thread.sleep(1500);		
		System.out.println("Challengers look a bit anxious, but also high,");
		System.out.println("which is the best state for the match.!");
		System.out.println("-------------------------------------------------");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("Everyone has been ready. Now get, set, Roll!!!");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println("No." + race + " is surpassing everyone else!!");
		System.out.println("What a phenomenal start!!");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println("No." + race + " has been taken the 2nd place!");
		System.out.println("No one has an idea who is going to beat the match!!");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println("Oh!!! huge crash from No." + race + "!!");
		System.out.println("I'm afraid he may need a medic!!");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println("No." + race + " is boosting the race!!");
		System.out.println("He's been taking 3 vehicles just in 30 seconds!!");
		Thread.sleep(1500);		
		race = r.nextInt(6) + 1;
		System.out.println("-------------------------------------------------");
		System.out.println("Here it comes the last circuit!!");
		System.out.println("Who's going to write another page of F1 history!??");
		Thread.sleep(3000);		
	System.out.println("-------------------------------------------------");
	System.out.println("-------------------------------------------------");
	System.out.println("-----------------경기 끝났습니다!!!-------------------");
	System.out.println("-------------------------------------------------");
	System.out.println("-------------------------------------------------");
	cnt++;
		
	}

	
	
}
