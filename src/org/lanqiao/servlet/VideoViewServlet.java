package org.lanqiao.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.Moive;
import org.lanqiao.bean.TV;
import org.lanqiao.service.MoiveService;
import org.lanqiao.service.TvService;
import org.lanqiao.service.impl.MoiveServiceImpl;
import org.lanqiao.service.impl.TvServiceImpl;
import org.lanqiao.util.Page;


@WebServlet("/VideoViewServlet")
public class VideoViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MoiveService ms = new MoiveServiceImpl();
	TvService ts = new TvServiceImpl();
	public VideoViewServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//本页面需要三个关键字 flag(电影，电视剧，预告片) key(a,b,c,...z) currentPage(当前页)；
		
		String flag = request.getParameter("flag");
		String key = request.getParameter("key");
		String currentPage = request.getParameter("currentPage");
		
		Page page = new Page();
		page.setPageSize(10);
		
		//请求查询电影的方法
		if("moive".equals(flag)) {
			
			
			//当前关键字为空 查询所有电影
			if(key==null) {
				
				int currPage = 1;
				//判断当前页是否为空
				if(currentPage==null) {
					currPage = 1;
				}else {
					currPage = Integer.parseInt(currentPage);
				}
				//电影总数
				int totalCount = ms.getTotalCount();
				page.setTotalCount(totalCount);
				page.setCurrentPage(currPage);
				
				
				//获得第一页
				List<Moive> list = ms.getMoive(page);
				if(list!=null) {
					request.setAttribute("page", page);
					request.setAttribute("list", list);
					request.setAttribute("url", "flag=moive");
					request.getRequestDispatcher("listMoive.jsp").forward(request, response);
				}
				
			}else {
				
				int currPage = 1;
				//判断当前页是否为空
				if(currentPage==null) {
					currPage = 1;
				}else {
					currPage = Integer.parseInt(currentPage);
				}
				//电影总数
				int totalCount = ms.getTotalByHeadChar(key);
				page.setTotalCount(totalCount);
				page.setCurrentPage(currPage);
				
				
				//获得第一页
				List<Moive> list = ms.getMoiveByChar(page, key);
				if(list!=null) {
					request.setAttribute("page", page);
					request.setAttribute("list", list);
					request.setAttribute("url", "flag=moive&key="+key);
					request.getRequestDispatcher("listMoive.jsp").forward(request, response);
				}
			}
			
		}
		//请求查询电视剧的方法
		else if("tv".equals(flag)) {
			
			//当前关键字为空 查询电视剧电影
			if(key==null) {
				
				int currPage = 1;
				//判断当前页是否为空
				if(currentPage==null) {
					currPage = 1;
				}else {
					currPage = Integer.parseInt(currentPage);
				}
				//电视剧总数
				int totalCount = ts.getTotalCount();
				page.setTotalCount(totalCount);
				page.setCurrentPage(currPage);
				
				
				//获得第一页
				List<TV> list = ts.getByPage(page);
				if(list!=null) {
					request.setAttribute("page", page);
					request.setAttribute("list", list);
					request.setAttribute("url", "flag=tv");
					request.getRequestDispatcher("listTV.jsp").forward(request, response);
				}
				
			}else {
				
				int currPage = 1;
				//判断当前页是否为空
				if(currentPage==null) {
					currPage = 1;
				}else {
					currPage = Integer.parseInt(currentPage);
				}
				//电视剧总数
				int totalCount = ts.getTotalCountByHeadChar(key);
				page.setTotalCount(totalCount);
				page.setCurrentPage(currPage);
				
				
				//获得第一页
				List<TV> list = ts.getTvByHeadChar(page, key);
				if(list!=null) {
					request.setAttribute("page", page);
					request.setAttribute("list", list);
					request.setAttribute("url", "flag=tv&key="+key);
					request.getRequestDispatcher("listTV.jsp").forward(request, response);
				}
			}
			
		}
		//请求查询预告片的方法
		else if("preview".equals(flag)) {
			
		}
		
	}

}
