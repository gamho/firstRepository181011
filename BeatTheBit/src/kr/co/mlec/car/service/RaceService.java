package kr.co.mlec.car.service;

import java.util.List;

import kr.co.mlec.car.dao.RaceDAO;
import kr.co.mlec.car.vo.CarVO;

public class RaceService {
	
	private RaceDAO dao;
	public RaceService() {
		dao = new RaceDAO();
	}
	
	public List<CarVO> selectEnemyCars(int[] numList) {
		List<CarVO> carList = dao.selectEnemyCars(numList);
		return carList;
	}

	public int addPrize(int prize) {
		int result = dao.addPrize(prize);
		return result;
	}

	public int showBudget() {
		int budget = dao.showBudget();
		return budget;
	}

	public List<CarVO> selectSuperCars(int[] numList3) {
		List<CarVO> carList = dao.selectSuperCars(numList3);
		return carList;
	}
	
}
