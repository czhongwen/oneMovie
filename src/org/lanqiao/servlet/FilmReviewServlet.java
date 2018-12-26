package org.lanqiao.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.FilmReview;
import org.lanqiao.bean.User;
import org.lanqiao.service.FilmReviewService;
import org.lanqiao.service.impl.FilmReviewServiceImpl;
import org.lanqiao.util.Page;

@WebServlet("/FilmReviewServlet")
public class FilmReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	FilmReviewService frs = new FilmReviewServiceImpl();
	
    public FilmReviewServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Page page = new Page();
		
		String key = request.getParameter("key");
		request.setAttribute("key", "key="+key);
		String currentPage = request.getParameter("currentPage");
		String flag = request.getParameter("flag");
		System.out.println("请求的类型："+flag+"  当前页："+currentPage + "  关键字:"+key);
		
		if(currentPage!=null) {
			//每页8条信息
			page.setPageSize(8);
			page.setCurrentPage(Integer.parseInt(currentPage));
			
			//获得电影总数
			int totalCount = frs.getFilmReviewCount(Integer.parseInt(key));
			page.setTotalCount(totalCount);
			
			//获得当前页的信息
			List<FilmReview> list = frs.getFilmReviewAll(page, Integer.parseInt(key));
			request.setAttribute("list", list);
			request.setAttribute("page", page);
			request.getRequestDispatcher("admin/book.jsp").forward(request, response);
		}else if("delAll".equals(flag)) {
			String[] ids = (String[])request.getParameter("ids").split(",");
			int[] idS=new int[ids.length];
			for (int i=0 ;i<ids.length ; i++) {
				idS[i] = Integer.parseInt(ids[i]);
			}
			boolean resFlag = frs.delByIds(idS);
			if(resFlag) {
				response.getWriter().write("200");
			}else {
				response.getWriter().write("400");
			}
		}else if("pass".equals(flag)) {
			String[] ids = (String[])request.getParameter("ids").split(",");
			int[] idS=new int[ids.length];
			for (int i=0 ;i<ids.length ; i++) {
				idS[i] = Integer.parseInt(ids[i]);
			}
			boolean resFlag = frs.updateByIds(idS);
			if(resFlag) {
				response.getWriter().write("200");
			}else {
				response.getWriter().write("400");
			}
		}else if("sigleDel".equals(flag)) {
			int id = Integer.parseInt((String)request.getParameter("id"));
			boolean resFlag = frs.delFilmReviewById(id);
			if(resFlag) {
				response.getWriter().write("200");
			}else {
				response.getWriter().write("400");
			}
		}else if("addFilemReview".equals(flag)) {
			
			String videoId = request.getParameter("videoId");
			String comment = request.getParameter("comment");
			User user =(User)request.getSession().getAttribute("user");
			FilmReview fr = new FilmReview(videoId, user.getId(), comment, null, 1, 0);
			
			boolean resFlag = frs.addFilmReview(fr);
			if(resFlag) {
				response.getWriter().write("200");
			}else {
				response.getWriter().write("400");
			}
		}
	
	}

}
