package kr.co.mlec.car.ui;


import java.util.Scanner;

import kr.co.mlec.car.service.CarService;
import kr.co.mlec.car.service.RaceService;
import kr.co.mlec.car.service.ServiceFactory;
import kr.co.mlec.car.service.UpgradeService;

public abstract class BaseUI implements ICarUI {

	protected Scanner sc;
	protected CarService carService;
	protected RaceService raceService;
	protected UpgradeService upgradeService;
	
	public BaseUI() {
		sc = new Scanner(System.in);
		carService = ServiceFactory.getCarInstance();
		raceService = ServiceFactory.getRaceInstance();
		upgradeService = ServiceFactory.getUpgradeInstance();
	}
	
	protected int scanInt(String msg) {
		
		System.out.print(msg);
		int num = Integer.parseInt(sc.nextLine());
		return num;
	}
	
	protected String scanStr(String msg) {
		System.out.print(msg);
		String str = sc.nextLine();
		return str;
	}

	
}
