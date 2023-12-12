package Member;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDao {
   public Connection getConnection() {
         Connection conn = null;
         PreparedStatement pstmt = null;

         try {
            Class.forName("oracle.jdbc.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "kic", "1111");
            return conn;
         } catch (ClassNotFoundException e) {

            e.printStackTrace();
         } catch (SQLException e) {

            e.printStackTrace();
         }

         return null;
      }
public int insertMember(Member kicmem) throws UnsupportedEncodingException, SQLException {
         
      Connection conn = getConnection();
          
         PreparedStatement pstmt = conn.prepareStatement("insert into member "
                + "values (?,?,?,?,?,?)");
         //mapping
         pstmt.setString(1,kicmem.getLoginId());
         pstmt.setString(2,kicmem.getLoginPw());
         pstmt.setString(3,kicmem.getName());
         pstmt.setString(4,kicmem.getCellphoneNo());
         pstmt.setString(5,kicmem.getEmail());
         pstmt.setString(6,kicmem.getNickname());
         //4)excute
         int num = pstmt.executeUpdate();
         return num;
                  
   }

public Member oneMember(String loginId) throws SQLException {
	 Connection conn = getConnection();
     
     PreparedStatement pstmt = conn.prepareStatement("select * from member where loginId= ?");
	pstmt.setString(1, loginId);
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()) {
		Member m = new Member();
		m.setLoginId(rs.getString("loginId"));
		m.setLoginPw(rs.getString("loginPw"));
		m.setName(rs.getString("name"));
		m.setCellphoneNo(rs.getString("cellphoneNo"));
		m.setEmail(rs.getString("email"));
		return m;
	}
	return null;
}



}// class end