package org.lanqiao.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.Admin;
import org.lanqiao.service.IAdminService;
import org.lanqiao.service.impl.AdminServiceImpl;


public class AdminServlet extends HttpServlet {
	

	private static final long serialVersionUID = 1L;
	IAdminService ids = new AdminServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String flag = req.getParameter("flag");
		
		
		PrintWriter pw = resp.getWriter();
		if("code".equals(flag))
		{
			String code=req.getParameter("code");
			//获取session中的验证码
			String sessionCode=(String)req.getSession().getAttribute("code");
			//对比code
			
			if(code!=null&&code.equalsIgnoreCase(sessionCode)){
				pw.write("200");
			}else {
				pw.write("400");
			}
		}
		if("login".equals(flag)) {
			
			String name = req.getParameter("uname");
			String pass = req.getParameter("pwd");
			
			Admin admin = new Admin(name,pass);
			Admin rtnadmin = ids.getAdmin(admin);
			if(rtnadmin!=null) {
								
				req.getSession().setAttribute("rtnadmin", rtnadmin);
				req.getRequestDispatcher("admin/index.html").forward(req, resp);
			}else {
				resp.sendRedirect("admin/login.jsp");
			}
		}
		
		else if("updatePage".equals(flag)) {
			req.getRequestDispatcher("admin/pass.jsp").forward(req, resp);
		}
		
		else if("checkOldPass".equals(flag)) {
			Admin admin = (Admin)req.getSession().getAttribute("rtnadmin");
			String oldPass = req.getParameter("pass");
			
			if(admin.getPass().equals(oldPass)) {
				resp.getWriter().write("200");
			}else {
				resp.getWriter().write("400");
			}
		}
		
		else if("updatePass".equals(flag)) {
			Admin admin = (Admin)req.getSession().getAttribute("rtnadmin");

			String newPass = (String)req.getParameter("newPass");

			admin.setPass(newPass);
			
			boolean resFlag = ids.updatePass(admin);
			if(resFlag) {
				req.getSession().setAttribute("rtnadmin", admin);
				resp.getWriter().write("200");
			}else {
				resp.getWriter().write("400");
			}
		}else if("out".equals(flag)) {
			req.getSession().removeAttribute("rtnadmin");
		}
	}
}
