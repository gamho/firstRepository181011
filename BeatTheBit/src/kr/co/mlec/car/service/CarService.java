package kr.co.mlec.car.service;

import java.util.List;

import kr.co.mlec.car.dao.CarDAO;
import kr.co.mlec.car.vo.CarVO;

public class CarService {

	private CarDAO dao;
	
	public CarService() {
		dao = new CarDAO();
	}
	
	public CarVO selectCar(int no) {
		CarVO car = dao.selectCar(no);
		return car;
	}

	public CarVO currentCar() {
		int num = dao.currentCarNum();
		CarVO car = dao.currentCar(num);
		return car;
	}
	
	public void insertCar(CarVO car) {
		dao.insertCar(car);
	}

	public List<CarVO> selectMyAllCar() {
		List<CarVO> carList = dao.selectMyAllCar();
		return carList;
	}

	public CarVO sellCar(int carNum) {
		CarVO car = dao.sellCar(carNum);
		return car;
	}

	public CarVO selectMyCar(int carNum) {
		CarVO car = dao.selectMyCar(carNum);
		return car;
	}

	

	
	
	
	
}
