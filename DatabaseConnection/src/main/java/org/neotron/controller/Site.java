package org.neotron.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.neotron.entity.User;
import org.neotron.model.UsersModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/site")
public class Site extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Site() {
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = request.getParameter("page").toLowerCase();
		switch (page) {
		case "listusers":
			listusers(request, response);
			break;
		case "adduser":
			adduser(request, response);
			break;
		case "updateuser":
			updateuser(request, response);
			break;
		case "deleteuser":
			new UsersModel().deleteUser(Integer.parseInt(request.getParameter("user_id")));
			listusers(request, response);
			break;
		default:
			request.setAttribute("title", "Error page");
			request.getRequestDispatcher("error.jsp").forward(request, response);
			break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String form = request.getParameter("form").toLowerCase();
		switch (form) {
		case "adduseroperation":
			User user = new User(request.getParameter("username"), request.getParameter("email"));
			new UsersModel().addUser(user);
			listusers(request, response);
			break;
		case "updateuseroperation":
			User updateUser = new User(Integer.parseInt(request.getParameter("user_id")),
					request.getParameter("username"), request.getParameter("email"));
			new UsersModel().updateUser(updateUser);
			listusers(request, response);
			break;
		default:
			request.setAttribute("title", "Error page");
			request.getRequestDispatcher("error.jsp").forward(request, response);
			break;
		}
	}

	protected void listusers(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<User> users = new ArrayList<User>();
		users = new UsersModel().listusers();
		request.setAttribute("listusers", users);
		request.setAttribute("title", "List users");
		request.getRequestDispatcher("listuser.jsp").forward(request, response);

	}

	protected void adduser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("title", "Adduser");
		request.getRequestDispatcher("adduser.jsp").forward(request, response);

	}

	protected void updateuser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("title", "Update user");
		request.getRequestDispatcher("updateuser.jsp").forward(request, response);

	}

}
