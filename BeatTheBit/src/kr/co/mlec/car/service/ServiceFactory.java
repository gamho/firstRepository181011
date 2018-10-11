package kr.co.mlec.car.service;

public class ServiceFactory {

	private static final CarService carInstance = new CarService();
	private static final RaceService raceInstance = new RaceService();
	private static final UpgradeService upgradeInstance = new UpgradeService();
	
	public static CarService getCarInstance() {
		return carInstance;
	}
	public static RaceService getRaceInstance() {
		return raceInstance;
	}
	public static UpgradeService getUpgradeInstance() {
		return upgradeInstance;
	}
	
}
