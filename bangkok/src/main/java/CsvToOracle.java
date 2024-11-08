import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CsvToOracle {
    public static void main(String[] args) {
        // JDBC 연결 정보
        String jdbcUrl = "jdbc:oracle:thin:@project-db-campus.smhrd.com:1523:xe"; // 데이터베이스 URL
        String username = "mp_24K_bigdata13_p2_3"; // Oracle DB 사용자명
        String password = "smhrd3"; // Oracle DB 비밀번호

        // CSV 파일 경로
        String csvFilePath = "C:\\list\\dataOfPhoto_1.csv";

        // 데이터베이스 연결
        try (Connection conn = DriverManager.getConnection(jdbcUrl, username, password)) {
            // CSV 파일 읽기
            BufferedReader reader = new BufferedReader(new FileReader(csvFilePath));
            String line;

            // 첫 번째 줄은 컬럼명이므로 건너뜁니다
            reader.readLine();

            // SQL Insert 구문 준비
            String insertSQL = "INSERT INTO urls(URL_ID, ROOM_ID, IMG_URL, CREATE_DT) "
                    + "VALUES (?, ?, ?, ?)";

            // PreparedStatement 생성
            try (PreparedStatement pstmt = conn.prepareStatement(insertSQL)) {
                int count = 0; // 행 수를 세기 위한 변수

                while ((line = reader.readLine()) != null && count < 376) {
                    // CSV 파일의 데이터를 쉼표로 분리
                    String[] data = line.split(",");

                    // 각 컬럼에 데이터를 삽입
                    java.util.Date utilDate = new java.util.Date();
                    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

                    // 데이터가 부족한 경우를 대비해 체크
                    if (data.length >= 3) {
                        pstmt.setString(1, data[0]);  // URL_ID
                        pstmt.setInt(2, Integer.parseInt(data[1]));  // ROOM_ID
                        pstmt.setString(3, data[2]);  // IMG_URL
                        pstmt.setDate(4, sqlDate);  // CREATE_DT
                        pstmt.addBatch();
                        count++;  // 카운트 증가
                    }
                }

                // 배치 실행
                pstmt.executeBatch();
                System.out.println("CSV 데이터 상위 376개 행이 성공적으로 오라클 DB에 삽입되었습니다.");
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
