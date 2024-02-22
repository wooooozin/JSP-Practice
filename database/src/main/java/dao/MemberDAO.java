package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
	
	public List<Member> allSelectMember() {
		List<Member> list = new ArrayList<>();
		
		try {
			getConnection();
			String query = "SELECT * FROM member";
			PreparedStatement statement = con.prepareStatement(query);
			rs = statement.executeQuery();
			
			while (rs.next()) {
				Member member = new Member();
				member.setId(rs.getString("id"));
				member.setEmail(rs.getString("email"));
				member.setPass1(rs.getString("pass1"));
				member.setPass2(rs.getString("pass2"));
				member.setTel(rs.getString("tel"));
				member.setHobby(rs.getString("hobby"));
				member.setJob(rs.getString("job"));
				member.setAge(rs.getString("age"));
				member.setInfo(rs.getString("info"));
				
				list.add(member);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("목록 조회 중 에러");
		} finally {
            close(pstm);
            close(con);
            close(rs);
            System.out.println("자원해제");
		}
		
		return list;
	}
	
	public Member oneSelecetMember(String id) {
		Member member = new Member();
		
		try {
			getConnection();
			String query = "SELECT * FROM member WHERE id = ?";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1, id);
			rs = statement.executeQuery();
			
			if (rs.next()) {
				member.setId(rs.getString("id"));
				member.setEmail(rs.getString("email"));
				member.setPass1(rs.getString("pass1"));
				member.setPass2(rs.getString("pass2"));
				member.setTel(rs.getString("tel"));
				member.setHobby(rs.getString("hobby"));
				member.setJob(rs.getString("job"));
				member.setAge(rs.getString("age"));
				member.setInfo(rs.getString("info"));
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("목록 조회 중 에러");
		} finally {
            close(pstm);
            close(con);
            close(rs);
            System.out.println("자원해제");
		}
		
		return member;
	}
	
	public String getPass(String id) {
		String pass = null;
		try {
			getConnection();
			String query = "SELECT pass1 from MEMBER WHERE id = ?";
			pstm = con.prepareStatement(query);
			pstm.setString(1, id);
			rs = pstm.executeQuery();
			if (rs.next()) {
				pass = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstm);
            close(con);
            close(rs);
            System.out.println("자원해제");
        }
		return pass;
	}
	
	public void updateMember(Member member) {
		try {
			getConnection();
			String sql = "update member set email=?, tel=? where id = ?";
			pstm = con.prepareStatement(sql);
			pstm.setString(1, member.getEmail());
			pstm.setString(2, member.getTel());
			pstm.setString(3, member.getId());
			pstm.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstm);
            close(con);
            close(rs);
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
