package kr.co.mlec.car.service;

import java.util.List;

import kr.co.mlec.car.dao.UpgradeDAO;
import kr.co.mlec.car.vo.CarVO;

public class UpgradeService {

	private UpgradeDAO dao;
	
	public UpgradeService() {
		dao = new UpgradeDAO();
	}
	
	public List<CarVO> selectCarByGrade(String carGrade) {
		List<CarVO> carList = dao.selectCarByGrade(carGrade);
		
		return carList;
	}

	public List<CarVO> selectCarByDispl(int carDispl) {
		List<CarVO> carList = dao.selectCarByDispl(carDispl);
		return carList;
	}

	public List<CarVO> selectCarByPrice(int carMinPrice, int carMaxPrice) {
		List<CarVO> carList = dao.selectCarByPrice(carMinPrice, carMaxPrice);
		return carList;
	}
	
	public CarVO buyCar(int carNum) {
		CarVO car = dao.buyCar(carNum);
		return car;
	}

	public void payBudget(int price) {
		dao.payBudget(price);
	}

	
	
}
