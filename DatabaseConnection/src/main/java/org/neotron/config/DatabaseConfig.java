package org.neotron.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConfig {
	public static Connection getConnection() {
		// Initialize all the information regarding Database Connection
		String dbURL = "jdbc:mysql://localhost:3306/demo";
		// Database name and password
		String dbUsername = "root";
		String dbPassword = "5656";
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
