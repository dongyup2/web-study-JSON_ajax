package UserDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.SignupBean;
import jdbc.DBcon;

public class SignupDao {
	private DBcon pool;

	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String sql;

	public SignupDao() {
		pool = DBcon.getInstance();
	}

	public void insertUser(SignupBean signupBean) {
		sql = "insert into signup_tbl values(?,?,?,?)";
		try {
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, signupBean.getName());
			pstmt.setString(2, signupBean.getEmail());
			pstmt.setString(3, signupBean.getId());
			pstmt.setString(4, signupBean.getPassword());
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				if (con != null) {
					try {
						con.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}

	}
}
