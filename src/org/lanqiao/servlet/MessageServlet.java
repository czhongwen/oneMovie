package org.lanqiao.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.Moive;
import org.lanqiao.service.MessageService;
import org.lanqiao.service.impl.MessageServiceImpl;
import org.lanqiao.util.Page;

public class MessageServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		MessageService ms = new MessageServiceImpl();
		//创建Moive集合
		List<Moive> moiveList = new ArrayList<>();
		resp.setContentType("text/html;charset=utf-8");
		//每页6条记录
		int pageSize = 6;
		//接受数据
		String curr = req.getParameter("currentPage");
		int currentPage=0;
		if(curr==null) {
			currentPage=1;
		}else {
			currentPage=Integer.parseInt(curr);
		}
		//判断当前页是否小于1
		if(currentPage<1) {
			currentPage=1;
		}
		Page page = new Page(pageSize,currentPage);
		int count = ms.getMoiveCount();
		page.setTotalCount(count);
		//判断当前页是否大于最大页数
		if(currentPage>page.getTotalPage()) {
			currentPage=page.getTotalPage();
		}
		page.setCurrentPage(currentPage);
		moiveList = ms.getMoiveByPage(page);
		req.getSession().setAttribute("moiveList", moiveList);
		req.getSession().setAttribute("page", page);
		req.getRequestDispatcher("admin/list.jsp").forward(req, resp);
	}

	
}
