package kr.co.mlec.car.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.mlec.car.util.ConnectionFactory;
import kr.co.mlec.car.util.JDBCClose;
import kr.co.mlec.car.vo.CarVO;

public class UpgradeDAO {
		
	// 1. 등급에 따른 차량 검색	
	public List<CarVO> selectCarByGrade(String carGrade) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		List<CarVO> carList = new ArrayList<CarVO>();
		
		try {
			conn = ConnectionFactory.getConnection();
			
			StringBuilder sql = new StringBuilder();
			sql.append("select no, name, price, displ, year, type, spec, grade, property "
					+ " 	from car_board4 "
					+ "		where grade = ? "
					+ "		order by no asc ");
			
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setString(1, carGrade);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int 	no = rs.getInt("no");
				String 	name = rs.getString("name");
				int 	price  = rs.getInt("price");
				int 	displ = rs.getInt("displ");
				int 	year = rs.getInt("year");
				String 	type = rs.getString("type");
				int		spec = rs.getInt("spec");
				String 	grade = rs.getString("grade");
				String property = rs.getString("property");
				
				CarVO car = new CarVO(no, name, price, displ, year, type, spec, grade, property);
				carList.add(car);
			}
				
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				JDBCClose.close(conn, pstmt);
			}
			
			return carList;
		
	}
	
	// 2. 배기량에 따른 차량 검색
	public List<CarVO> selectCarByDispl(int carDispl) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		List<CarVO> carList = new ArrayList<CarVO>();
		
		try {
			conn = ConnectionFactory.getConnection();
			
			StringBuilder sql = new StringBuilder();
			sql.append("select no, name, price, displ, year, type, spec, grade, property "
					+ " 	from car_board4 "
					+ "		where displ >= (? - 500) "
					+ "		and displ <= (? + 500) "
					+ "		order by no asc ");
			
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setInt(1, carDispl);
			pstmt.setInt(2, carDispl);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int 	no = rs.getInt("no");
				String 	name = rs.getString("name");
				int 	price  = rs.getInt("price");
				int 	displ = rs.getInt("displ");
				int 	year = rs.getInt("year");
				String 	type = rs.getString("type");
				int		spec = rs.getInt("spec");
				String 	grade = rs.getString("grade");
				String property = rs.getString("property");
				
				CarVO car = new CarVO(no, name, price, displ, year, type, spec, grade, property);
				carList.add(car);
			}
				
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				JDBCClose.close(conn, pstmt);
			}
			
			return carList;
		
	}
	
	// 3. 가격에 따른 차량 검색
	public List<CarVO> selectCarByPrice(int carMinPrice, int carMaxPrice) {
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		List<CarVO> carList = new ArrayList<CarVO>();
		
		try {
			conn = ConnectionFactory.getConnection();
			
			StringBuilder sql = new StringBuilder();
			sql.append("select no, name, price, displ, year, type, spec, grade, property "
					+ " 	from car_board4 "
					+ "		where price >= ?"
					+ "		and price <= ? "
					+ "		order by no asc ");
			
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setInt(1, carMinPrice);
			pstmt.setInt(2, carMaxPrice);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int 	no = rs.getInt("no");
				String 	name = rs.getString("name");
				int 	price  = rs.getInt("price");
				int 	displ = rs.getInt("displ");
				int 	year = rs.getInt("year");
				String 	type = rs.getString("type");
				int		spec = rs.getInt("spec");
				String 	grade = rs.getString("grade");
				String property = rs.getString("property");
				
				CarVO car = new CarVO(no, name, price, displ, year, type, spec, grade, property);
				carList.add(car);
			}
				
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				JDBCClose.close(conn, pstmt);
			}
				
			return carList;
		
	}
	// 4. 차량번호를 활용한 차량구매
	public CarVO buyCar(int carNum) {
		
		CarVO car = new CarVO();
		
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = ConnectionFactory.getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append("select * from car_board4 where no = ? order by no asc ");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, carNum);

			pstmt.executeUpdate();
			
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

	public void payBudget(int price) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;


		try {
			conn = ConnectionFactory.getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append("insert into my_budget(money) values (?) ");

			pstmt = conn.prepareStatement(sql.toString());

			pstmt.setInt(1, (price * -1));
			pstmt.executeUpdate();


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}
	}

	
	
		
}
