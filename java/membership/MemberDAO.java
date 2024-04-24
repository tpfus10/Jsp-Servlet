package membership;

import common.JDBConnect;

public class MemberDAO extends JDBConnect{
	
	public static void main(String[] args) {
		String drv = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/musthave";
		String id = "musthave";
		String pw = "tiger";
		MemberDAO dao = new MemberDAO(drv, url, id, pw);
		
		MemberDTO dto = dao.getMemberDTO("musthave", "1234");//1부르고 4받아서 참조변수에 저장
		System.out.println(dto); 
	}

	//명시한 데이터베이스로의 연결이 완료된 MemberDAO 객체를 생성
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw); //super는 부모 클래스의 생성자를 뜻함
	}
	
	//명시한 아이디/패스워드와 일치하는 회원 정보를 반환
	public MemberDTO getMemberDTO(String uid, String upass) { //2처리해서
		MemberDTO dto = new MemberDTO(); //회원 정보 DTO 객체 생성
		String query = "SELECT * FROM member WHERE id=? AND pass=?";
		
		try {
			//쿼리 실행
			psmt = con.prepareStatement(query); //동적 쿼리문 준비
			psmt.setString(1, uid); //쿼리문의 첫 번째 인파라미터 값 설정
			psmt.setString(2, upass); //쿼리문의 두 번째 인파라미터 값 설정
			rs = psmt.executeQuery(); //쿼리문 실행
			
			//결과 처리
			if(rs.next()) {
				//쿼리 결과로 얻은 회원 정보를 DTO 객체에 저장
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString(3));
				dto.setRegidate(rs.getString(4));
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		//DTO 객체 반환(toString에 설정해둔 형식으로 반환됨)
		return dto;//3반환하면
	}
}
