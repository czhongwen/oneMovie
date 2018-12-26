package org.lanqiao.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.Moive;
import org.lanqiao.service.MoiveService;
import org.lanqiao.service.impl.MoiveServiceImpl;
import org.lanqiao.util.Page;


@WebServlet("/MoiveMangerServlet")
public class MoiveMangerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    MoiveService ms = new  MoiveServiceImpl();  

    public MoiveMangerServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Page page = new Page();
		
		String key = request.getParameter("key");
		String currentPage = request.getParameter("currentPage");
		String flag = request.getParameter("flag");
		System.out.println("关键字key:"+key+"  currentPage:"+currentPage+"  flag:"+flag);
		//每页8条信息
		page.setPageSize(8);
		if(currentPage==null) {
			currentPage="1";
		}
		
		if(key!=null) {
			//获得电影总数
			int totalCount = ms.getTotalCount(key);
			page.setTotalCount(totalCount);
			
			page.setCurrentPage(Integer.parseInt(currentPage));
			//获得当前页的信息

			request.setAttribute("key", "&key="+key);
			request.setAttribute("keyWords", key);
			
			List<Moive> list = ms.getMoiveByPage(key, page);
			request.setAttribute("list", list);
			request.setAttribute("page", page);
			request.getRequestDispatcher("admin/moiveList.jsp").forward(request, response);
		}
		else if("singleDel".equals(flag)) {

			String id = request.getParameter("id");
			boolean resFlag = ms.del(id);
			if(resFlag) {
				response.getWriter().write("200");
			}else {
				response.getWriter().write("400");
			}
		}
		else if("delAll".equals(flag)) {
			String[] ids = (String[])request.getParameter("ids").split(",");
			boolean resFlag = ms.delMoiveByIds(ids);
			if(resFlag) {
				response.getWriter().write("200");
			}else {
				response.getWriter().write("400");
			}
		}
		
		else if(currentPage!=null && key==null) {
			
			//获得电影总数
			int totalCount = ms.getTotalCount();
			page.setTotalCount(totalCount);
			
			page.setCurrentPage(Integer.parseInt(currentPage));
			//获得当前页的信息
			List<Moive> list = ms.getByPage(page);
			request.setAttribute("list", list);
			request.setAttribute("page", page);
			request.getRequestDispatcher("admin/moiveList.jsp").forward(request, response);
		}
	}

}
