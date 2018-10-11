package kr.co.mlec.car.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.mlec.car.util.ConnectionFactory;
import kr.co.mlec.car.util.JDBCClose;
import kr.co.mlec.car.vo.CarVO;

public class RaceDAO {

	// 1. 상대 차량 랜덤으로 선정
	public List<CarVO> selectEnemyCars(int[] numList) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;

		List<CarVO> carList = new ArrayList<CarVO>();

		try {
			conn = ConnectionFactory.getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append("select * from car_board\r\n" + 
					"    where no in (?, ?, ?, ?, ?) ");

			pstmt = conn.prepareStatement(sql.toString());

			pstmt.setInt(1, numList[0]);
			pstmt.setInt(2, numList[1]);
			pstmt.setInt(3, numList[2]);
			pstmt.setInt(4, numList[3]);
			pstmt.setInt(5, numList[4]);

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
	//2. 슈퍼카 랜덤으로 추출
	public List<CarVO> selectSuperCars(int[] numList3) {

	
	Connection conn = null;
	PreparedStatement pstmt = null;

	List<CarVO> carList = new ArrayList<CarVO>();

	try {
		conn = ConnectionFactory.getConnection();

		StringBuilder sql = new StringBuilder();
		sql.append("select * from car_board3\r\n" + 
				"    where no in (?, ?, ?, ?, ?, ?, ?, ?, ?) ");

		pstmt = conn.prepareStatement(sql.toString());

		pstmt.setInt(1, numList3[0]);
		pstmt.setInt(2, numList3[1]);
		pstmt.setInt(3, numList3[2]);
		pstmt.setInt(4, numList3[3]);
		pstmt.setInt(5, numList3[4]);
		pstmt.setInt(6, numList3[5]);
		pstmt.setInt(7, numList3[6]);
		pstmt.setInt(8, numList3[7]);
		pstmt.setInt(9, numList3[8]);

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
	
	// 3. 상금 잔고에 추가
	public int addPrize(int prize) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = ConnectionFactory.getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append("insert into my_budget(money) values (?) ");

			pstmt = conn.prepareStatement(sql.toString());

			pstmt.setInt(1, prize);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}
		return prize;

	}
	// 4. 현재 잔고 조회
	public int showBudget() {

		Connection conn = null;
		PreparedStatement pstmt = null;

		int budget = 0;

		try {
			conn = ConnectionFactory.getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append("select money from my_budget ");

			pstmt = conn.prepareStatement(sql.toString());

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				budget += rs.getInt("money");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}
		return budget;
	}
	
	
}
