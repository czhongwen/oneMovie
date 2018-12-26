package org.lanqiao.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.Moive;
import org.lanqiao.bean.Preview;
import org.lanqiao.bean.TV;
import org.lanqiao.service.MoiveService;
import org.lanqiao.service.PreviewService;
import org.lanqiao.service.TvService;
import org.lanqiao.service.impl.MoiveServiceImpl;
import org.lanqiao.service.impl.PreviewServiceImpl;
import org.lanqiao.service.impl.TvServiceImpl;
import org.lanqiao.util.Page;

@WebServlet("/VideoMangerServlet")
public class VideoMangerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    MoiveService ms = new  MoiveServiceImpl();
    TvService ts = new TvServiceImpl();
    PreviewService ps = new PreviewServiceImpl();
    public VideoMangerServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String flag = request.getParameter("vedioType");
		//记录管理上次访问的类型
		request.setAttribute("videoManger", "vedioType="+flag);
		Page page = new Page();
		
		if(" moive".equals(flag)) {
			
			//当前页面
			String currentPage = request.getParameter("currentPage");
			flag = request.getParameter("flag");
			
			if("page".equals(flag)) {
				//每页8条信息
				page.setPageSize(8);
				page.setCurrentPage(Integer.parseInt(currentPage));
				
				//获得电影总数
				int totalCount = ms.getTotalCount();
				page.setTotalCount(totalCount);
				
				//获得当前页的信息
				List<Moive> list = ms.getByPage(page);
				
				request.setAttribute("list", list);
				request.setAttribute("page", page);
				
				request.getRequestDispatcher("admin/moiveList.jsp").forward(request, response);
			}
			
		}else if(" tv".equals(flag)) {
			//当前页面
			String currentPage = request.getParameter("currentPage");
			flag = request.getParameter("flag");
			
			if("page".equals(flag)) {
				//每页8条信息
				page.setPageSize(8);
				page.setCurrentPage(Integer.parseInt(currentPage));
				
				//获得电影总数
				int totalCount = ts.getTotalCount();
				page.setTotalCount(totalCount);
				
				//获得当前页的信息
				List<TV> list = ts.getByPage(page);
				
				request.setAttribute("list", list);
				request.setAttribute("page", page);
				
				request.getRequestDispatcher("admin/tvList.jsp").forward(request, response);
			}
			
		}else if(" preview".equals(flag)) {
			
			//当前页面
			String currentPage = request.getParameter("currentPage");
			flag = request.getParameter("flag");
			
			if("page".equals(flag)) {
				//每页8条信息
				page.setPageSize(8);
				page.setCurrentPage(Integer.parseInt(currentPage));
				
				//获得电影总数
				int totalCount = ps.getTotalCount();
				page.setTotalCount(totalCount);
				
				//获得当前页的信息
				List<Preview> list = ps.getByPage(page);
				
				request.setAttribute("list", list);
				request.setAttribute("page", page);
				
				request.getRequestDispatcher("admin/previewList.jsp").forward(request, response);
			}
			
		}
	}
}
