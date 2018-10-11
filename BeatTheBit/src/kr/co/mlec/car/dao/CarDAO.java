package kr.co.mlec.car.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.mlec.car.util.ConnectionFactory;
import kr.co.mlec.car.util.JDBCClose;
import kr.co.mlec.car.vo.CarVO;

public class CarDAO {

	private CarVO car;

	// 1. 내 전체 차량 목록 조회
	public List<CarVO> selectMyAllCar() {

		Connection conn = null;
		PreparedStatement pstmt = null;

		List<CarVO> carList = new ArrayList<CarVO>();

		try {
			conn = ConnectionFactory.getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append("select no, name, price, displ, year, type, spec, grade, property " + " 	from my_car ");

			pstmt = conn.prepareStatement(sql.toString());

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				int no = rs.getInt("no");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				int displ = rs.getInt("displ");
				int year = rs.getInt("year");
				String type = rs.getString("type");
				int spec = rs.getInt("spec");
				String grade = rs.getString("grade");
				String property = rs.getString("property");

				CarVO car = new CarVO(no, name, price, displ, year, type, spec, grade, property);
				carList.add(car);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}

		return carList;

	}

	// 2. 저장된 차량정보 중 고유번호에 해당하는 레코드 조회
	public CarVO selectCar(int no) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		CarVO car = null;

		try {
			conn = ConnectionFactory.getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append("select no, name, price, displ, year, type, spec, grade, property " + " 	from car_board4 "
					+ "		where no = ? ");

			pstmt = conn.prepareStatement(sql.toString());

			pstmt.setInt(1, no);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				int carNo = rs.getInt("no");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				int displ = rs.getInt("displ");
				int year = rs.getInt("year");
				String type = rs.getString("type");
				int spec = rs.getInt("spec");
				String grade = rs.getString("grade");
				String property = rs.getString("property");

				car = new CarVO(carNo, name, price, displ, year, type, spec, grade, property);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}

		return car;

	}

	// 3. 차량정보 삽입
	public void insertCar(CarVO car) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = ConnectionFactory.getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append("insert into my_car(no, name, price, displ, year, type, spec, grade, property)"
					+ "        values(seq_my_car_no.nextval, ?, ?, ?, ?, ?, ?, ?, ?)");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, car.getName());
			pstmt.setInt(2, car.getPrice());
			pstmt.setInt(3, car.getDispl());
			pstmt.setInt(4, car.getYear());
			pstmt.setString(5, car.getType());
			pstmt.setInt(6, car.getSpec());
			pstmt.setString(7, car.getGrade());
			pstmt.setString(8, car.getProperty());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}

	}

	// 4. 현재 차량 조회
	public CarVO currentCar(int num) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		car = null;
		try {
			conn = ConnectionFactory.getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append("select no, name, price, displ, year, type, spec, grade, property " + " 	from my_car order by no asc ");

			pstmt = conn.prepareStatement(sql.toString());
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				if (rs.getInt("no") == num) {
					int carNo = rs.getInt("no");
					String name = rs.getString("name");
					int price = rs.getInt("price");
					int displ = rs.getInt("displ");
					int year = rs.getInt("year");
					String type = rs.getString("type");
					int spec = rs.getInt("spec");
					String grade = rs.getString("grade");
					String property = rs.getString("property");

					car = new CarVO(carNo, name, price, displ, year, type, spec, grade, property);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}

		return car;

	}

	// 5. 차량 판매
	public CarVO sellCar(int carNum) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = ConnectionFactory.getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append("delete from my_car " + "        where no = ? ");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, carNum);

			pstmt.executeUpdate();
			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}
		return car;

	}

	public int currentCarNum() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		int carNo = 0;
		try {
			conn = ConnectionFactory.getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append("select no, name, price, displ, year, type, spec, grade, property " + " 	from my_car order by no asc ");

			pstmt = conn.prepareStatement(sql.toString());
			int size = pstmt.executeUpdate(); // 로우의 갯수를 size가 지금 샜어!
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				
					 carNo = rs.getInt("no");

				}


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}

		return carNo;
		
	}

	public CarVO selectMyCar(int no) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		CarVO car = null;

		try {
			conn = ConnectionFactory.getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append("select no, name, price, displ, year, type, spec, grade, property " + " 	from my_car "
					+ "		where no = ? ");

			pstmt = conn.prepareStatement(sql.toString());

			pstmt.setInt(1, no);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				int carNo = rs.getInt("no");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				int displ = rs.getInt("displ");
				int year = rs.getInt("year");
				String type = rs.getString("type");
				int spec = rs.getInt("spec");
				String grade = rs.getString("grade");
				String property = rs.getString("property");

				car = new CarVO(carNo, name, price, displ, year, type, spec, grade, property);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}

		return car;

	}
	
}

