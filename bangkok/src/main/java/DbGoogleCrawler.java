import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class DbGoogleCrawler {

    // 데이터베이스 연결 정보
	private static final String jdbcUrl = "jdbc:oracle:thin:@project-db-campus.smhrd.com:1523:xe"; // 데이터베이스 URL
	private static final String username = "mp_24K_bigdata13_p2_3"; // Oracle DB 사용자명
	private static final String password = "smhrd3"; // Oracle DB 비밀번호

    public static void main(String[] args) {
        try (Connection conn = DriverManager.getConnection(jdbcUrl,username,password)) {
            // 검색할 데이터를 가져오는 SQL
            String selectSql = "SELECT LOD_NAME FROM lodgings";
            String insertSql = "UPDATE lodgings SET LOD_TYPE = ? WHERE LOD_NAME = ?";


            try (PreparedStatement selectStmt = conn.prepareStatement(selectSql);
                 ResultSet rs = selectStmt.executeQuery()) {

                while (rs.next()) {
                    String searchQuery = rs.getString("LOD_NAME");
                    System.out.println("검색어: " + searchQuery);

                    String encodedSearchQuery = URLEncoder.encode(searchQuery, StandardCharsets.UTF_8);
                    String url = "https://www.yanolja.com/search/" + encodedSearchQuery;

                    try {
                        Document doc = Jsoup.connect(url).userAgent("Mozilla/5.0").get();
                        Elements searchResults = doc.select("div.PlaceListItemText_extraInfos__3Bp2B>.PlaceListGrade_container__1oIhJ"); // 검색 결과 제목 선택

                        for (Element result : searchResults) {
                            String resultTitle = result.text();
                            System.out.println("검색 결과 제목: " + resultTitle);

                            // 검색 결과를 DB에 저장
                            try (PreparedStatement insertStmt = conn.prepareStatement(insertSql)) {
                                insertStmt.setString(2, searchQuery);
                                insertStmt.setString(1, resultTitle);
                                insertStmt.executeUpdate();
                            } catch (SQLException e) {
                                System.out.println("데이터 저장 실패: " + resultTitle);
                                e.printStackTrace();
                            }
                        }
                    } catch (IOException e) {
                        System.out.println("크롤링 실패: " + searchQuery);
                        e.printStackTrace();
                    }
                }
            }
        } catch (SQLException e) {
            System.out.println("데이터베이스 연결 실패");
            e.printStackTrace();
        }
    }
}