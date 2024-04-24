//테이블 Board를 생성하고 데이터 입력하기

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;

public class JDBCTable {

	public static void main(String[] args) {
		PreparedStatement psmt = null;
		Random random = new Random();

		 // JDBC 연결 정보 설정
        String url = "jdbc:mysql://localhost:3306/musthave";
        String username = "musthave";
        String password = "tiger";

        try (Connection con = DriverManager.getConnection(url, username, password)) {
			psmt = con.prepareStatement("insert into Board(title, content, id, visitcount) values(?,?,?,?)");
			
					psmt.setString(1, "지금은 겨울입니다.");
					psmt.setString(2, "겨울 연가");
					psmt.setString(3, "musthave"); 
					psmt.setInt(4, random.nextInt(100));
					int result = psmt.executeUpdate();
					System.out.println("Board 테이블에 " + result + "개가 입력되었습니다.");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("Done");
	}
}
