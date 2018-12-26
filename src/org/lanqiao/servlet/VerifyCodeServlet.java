package org.lanqiao.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.util.VerifyCodeUtils;
public class VerifyCodeServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//生成4字验证码
		String code = VerifyCodeUtils.generateVerifyCode(4);
		req.getSession().setAttribute("code", code);
		//生成制定验证图片流
		VerifyCodeUtils.outputImage(100, 43, resp.getOutputStream(), code);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}

	
}
