import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class CsvToOracle {
	public static void main(String[] args) {
		// JDBC 연결 정보
		String jdbcUrl = "jdbc:oracle:thin:@project-db-campus.smhrd.com:1523:xe"; // 데이터베이스 URL
		String username = "mp_24K_bigdata13_p2_3"; // Oracle DB 사용자명
		String password = "smhrd3"; // Oracle DB 비밀번호

		// CSV 파일 경로
		String csvFilePath = "C:\\soso\\dataOfService.csv";

		// 데이터베이스 연결
		try (Connection conn = DriverManager.getConnection(jdbcUrl, username, password)) {
			// CSV 파일 읽기
			BufferedReader reader = new BufferedReader(new FileReader(csvFilePath));
            String line;
			
			reader.readLine();

			// SQL Insert 구문 준비
			String insertSQL = "INSERT INTO LOD_ROOMS (ROOM_ID, ROOM_NAME, MAX_PRICE, MIN_PRICE, LOD_ID, PEOPLE_NUM, BED_NUM) VALUES (lod_rooms_seq.nextval, ?, ?)";

			// PreparedStatement 생성
            try (PreparedStatement pstmt = conn.prepareStatement(insertSQL)) {
                while ((line = reader.readLine()) != null) {
                    // CSV 파일의 데이터를 쉼표로 분리
                    String[] data = line.split(",");

                    // 각 컬럼에 데이터를 삽입
                    pstmt.setInt(1, Integer.parseInt(data[0]));  // col1에 data[0] 값 삽입
                    pstmt.setString(2, data[1]);  // col2에 data[1] 값 삽입
                   

                    // 배치 실행
                    pstmt.addBatch();
                }

                // 배치 실행
                pstmt.executeBatch();
                System.out.println("CSV 데이터가 성공적으로 오라클 DB에 삽입되었습니다.");
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                reader.close();
            }
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }
}