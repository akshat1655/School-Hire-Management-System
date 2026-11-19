package config;

import java.sql.Connection;
import java.sql.DriverManager;

public class GetConnection {
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String DEFAULT_URL = "jdbc:mysql://localhost:3306/schoolhire?useSSL=false&allowPublicKeyRetrieval=true";
    private static final String DEFAULT_USER = "root";
    private static final String DEFAULT_PASS = "root";

    public static Connection getConnect() {
        Connection con = null;
        try {
            Class.forName(DRIVER);
            
            // Support cloud environment variables with local fallback
            String envUrl = System.getenv("DB_URL");
            String envUser = System.getenv("DB_USER");
            String envPass = System.getenv("DB_PASSWORD");
            
            String url = (envUrl != null && !envUrl.isEmpty()) ? envUrl : DEFAULT_URL;
            String user = (envUser != null && !envUser.isEmpty()) ? envUser : DEFAULT_USER;
            String pass = (envPass != null) ? envPass : DEFAULT_PASS;
            
            con = DriverManager.getConnection(url, user, pass);
            if (con != null) {
                System.out.println("Database connection established successfully.");
            }
        } catch (Exception e) {
            System.out.println("Database Connection Exception: " + e);
        }
        return con;
    }
}
