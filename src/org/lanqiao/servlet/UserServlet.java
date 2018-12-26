package org.lanqiao.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.User;
import org.lanqiao.service.UserService;
import org.lanqiao.service.impl.UserServiceImpl;


@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserService us = new  UserServiceImpl();  
    public UserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String flag = request.getParameter("flag");
		
		if("login".equals(flag)) {
			String email = request.getParameter("account");
			String password = request.getParameter("password");
			
			User user = new User();
			user.setEmail(email);
			user.setPassword(password);
			User nenUser = us.getUser(user);
			if(nenUser!=null) {
				
				request.getSession().setAttribute("user", nenUser);
				response.getWriter().write("200");
			}else {
				response.getWriter().write("400");
			}
		}
		else if("regist".equals(flag)) {
			String name = request.getParameter("Username");
			String password = request.getParameter("password");
			String email = request.getParameter("Email");
			String phone = request.getParameter("phone");
			String relName = request.getParameter("relName");
			User user = new User(0, name, password, relName, email, phone, 1);
			boolean resFlag = us.addUser(user);
			if(resFlag) {
				User newNser = us.getUser(user);
				if(newNser!=null) {
					request.getSession().setAttribute("user", newNser);
					response.getWriter().write("200");
					return;
				}
			}
			response.getWriter().write("400");
		}
	}

}
