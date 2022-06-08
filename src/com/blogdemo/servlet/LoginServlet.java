package com.blogdemo.servlet;

import com.blogdemo.dao.UserDao;
import com.blogdemo.dao.impl.UserDaoImpl;
import com.blogdemo.model.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String account = request.getParameter("username");
		String password = request.getParameter("password" );
		UserDao userDao =  new UserDaoImpl();
		Users user = userDao.login(account, password);
		if (user != null) { //登陆成功
			request.getSession().setAttribute("user", user);
			//String rootPath = request.getServletPath(); //获取项目根目录的绝对路径
			response.sendRedirect("/blogdemo_Web_exploded/admin/index.jsp");
		} else { //登陆失败
			request.setAttribute("error", "账户或密码错误！");
			request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
		}
	}
}
