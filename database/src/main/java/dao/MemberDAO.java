package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Member;

public class MemberDAO {
	
	String id = "hr";
	String pass = "hr";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";	
	
	Connection con;
	PreparedStatement pstm;
	ResultSet rs;
	
	// 데이터이스에 접근할 수 이쓴 메서드
	public void getConnection() {
		try {
			// 데이터 베이스 선언
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, id, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insetMemeber(Member member) {
		try {
			// 쿼리 준비 실행
			getConnection();
			String query = "INSERT INTO member VALUES (?,?,?,?,?,?,?,?,?)";
			PreparedStatement statement = con.prepareStatement(query);
			
			statement.setString(1, member.getId());
			statement.setString(2, member.getEmail());
			statement.setString(3, member.getPass1());
			statement.setString(4, member.getPass2());
			statement.setString(5, member.getTel());
			statement.setString(6, member.getHobby());
			statement.setString(7, member.getJob());
			statement.setString(8, member.getAge());
			statement.setString(9, member.getInfo());
			statement.executeUpdate();
			
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
            close(pstm);
            close(con);
            System.out.println("자원해제");
        }
	}
	
    private void close(AutoCloseable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
