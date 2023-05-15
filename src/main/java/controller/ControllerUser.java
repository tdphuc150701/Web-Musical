package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.User;
import serviceImp.UserImp;

@WebServlet("/ControllerUser")
public class ControllerUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserImp userService = new UserImp();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			userService.setup();

			String theCommand = request.getParameter("command");

			switch (theCommand) {
			case "LOGOUT":
				logoutUser(request, response);
				break;

//
//			default:
//				listProduct(request, response);
//
			}

		} catch (Exception e) {

		}

	}

	private void logoutUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// Lấy đối tượng HttpSession hiện tại
		HttpSession session = request.getSession();

		// Xóa thuộc tính 'username' khỏi session
		session.removeAttribute("user");
		response.sendRedirect("Controller");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		userService.setup();

		try {
			userService.setup();

			String theCommand = request.getParameter("command");

			switch (theCommand) {
			case "LOGGIN":
				loginUser(request, response);
				break;
			case "REGISTER":
				registerUser(request, response);
				break;

			}

		} catch (Exception e) {

		}

	}

	private int registerUser(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String userName1 = request.getParameter("userName");
		String password = request.getParameter("password");
		String name = request.getParameter("name");

		User user = new User();
		user.setUser_email(email);
		user.setUser_name(userName1);
		user.setUser_password(password);
		user.setName(name);

		try {
			userService.addUser(user);

		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("notice", "Register Success");
		RequestDispatcher dispatcher = request.getRequestDispatcher("regiterForm.jsp");
		dispatcher.forward(request, response);

		return 0;
	}

	private void loginUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		System.out.println(username);

		User user = userService.getUserByUserName(username);

		// Kiểm tra thông tin đăng nhập
		if (username.equals(user.getUser_name()) && password.equals(user.getUser_password())) {
			// Lưu thông tin đăng nhập vào phiên của người dùng
			HttpSession session = request.getSession();
			session.setAttribute("user", user);

			// Chuyển hướng đến trang chính của ứng dụng
			response.sendRedirect(request.getContextPath() + "/Controller");
		} else {
			// Hiển thị thông báo lỗi đăng nhập trên trang đăng nhập
			request.setAttribute("error", "Tên đăng nhập hoặc mật khẩu không đúng");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}

	}

}
