package org.lanqiao.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.Preview;
import org.lanqiao.service.PreviewService;
import org.lanqiao.service.impl.PreviewServiceImpl;
import org.lanqiao.util.Page;


@WebServlet("/PreviewMangerServlet")
public class PreviewMangerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private PreviewService ps = new  PreviewServiceImpl();  

    public PreviewMangerServlet() {
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
			int totalCount = ps.getTotalCount(key);
			page.setTotalCount(totalCount);
			
			page.setCurrentPage(Integer.parseInt(currentPage));
			//获得当前页的信息

			request.setAttribute("key", "&key="+key);
			request.setAttribute("keyWords", key);
			
			List<Preview> list = ps.getByPage(page, key);
			request.setAttribute("list", list);
			request.setAttribute("page", page);
			request.getRequestDispatcher("admin/previewList.jsp").forward(request, response);
		}
		else if("singleDel".equals(flag)) {

			String id = request.getParameter("id");
			boolean resFlag = ps.del(id);
			if(resFlag) {
				response.getWriter().write("200");
			}else {
				response.getWriter().write("400");
			}
		}
		else if("delAll".equals(flag)) {
			String[] ids = (String[])request.getParameter("ids").split(",");
			boolean resFlag = ps.delByids(ids);
			if(resFlag) {
				response.getWriter().write("200");
			}else {
				response.getWriter().write("400");
			}
		}
		
		else if(currentPage!=null && key==null) {
			
			//获得电影总数
			int totalCount = ps.getTotalCount();
			page.setTotalCount(totalCount);
			
			page.setCurrentPage(Integer.parseInt(currentPage));
			//获得当前页的信息
			List<Preview> list = ps.getByPage(page);
			request.setAttribute("list", list);
			request.setAttribute("page", page);
			request.getRequestDispatcher("admin/previewList.jsp").forward(request, response);
		}
	}

}
