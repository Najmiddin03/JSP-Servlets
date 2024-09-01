package org.neotron.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.neotron.config.DatabaseConfig;
import org.neotron.entity.User;

public class UsersModel {
	public List<User> listusers() {
		List<User> listusers = new ArrayList<User>();
		// Initialization of connection object
		Connection connection = DatabaseConfig.getConnection();
		Statement stmt = null;
		ResultSet rs = null;

		// Create the database query
		String query = "Select * from users";
		try {
			stmt = connection.createStatement();

			// Execution of statement
			rs = stmt.executeQuery(query);
			while (rs.next()) {
				listusers.add(new User(rs.getInt("user_id"), rs.getString("username"), rs.getString("email")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listusers;
	}

	public void addUser(User newUser) {
		Connection conn = null;
		PreparedStatement statement = null;
		try {
			conn = DatabaseConfig.getConnection();
			String username = newUser.getUsername();
			String email = newUser.getEmail();
			String query = "insert into users (username,email) values (?,?)";
			statement = conn.prepareStatement(query);
			statement.setString(1, username);
			statement.setString(2, email);
			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void updateUser(User updateUser) {
		Connection conn = null;
		PreparedStatement statement = null;
		try {
			conn = DatabaseConfig.getConnection();
			int userId = updateUser.getUser_id();
			String username = updateUser.getUsername();
			String email = updateUser.getEmail();
			String query = "update users set username=?, email=? where user_id=?";
			statement = conn.prepareStatement(query);
			statement.setString(1, username);
			statement.setString(2, email);
			statement.setInt(3, userId);
			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleteUser(int userId) {
		Connection conn = null;
		PreparedStatement statement = null;
		try {
			conn = DatabaseConfig.getConnection();
			String query = "delete from users where user_id=?";
			statement = conn.prepareStatement(query);
			statement.setInt(1, userId);
			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
