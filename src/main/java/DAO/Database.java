package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {

    public static Connection getConnection() {
        Connection c = null;
        try {
            // Load SQL Server JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/qlchxm";
            String username = "root";
            String password = "";

            c = DriverManager.getConnection(url, username, password);

        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Không tìm thấy driver SQL Server", e);
        } catch (SQLException ex) {
        }
        return c;
    }

    public static void closeConnection(Connection c) {
        try {
            if (c != null)
                c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}