package org.lanqiao.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.FilmReview;
import org.lanqiao.bean.Preview;
import org.lanqiao.service.FilmReviewService;
import org.lanqiao.service.PreviewService;
import org.lanqiao.service.impl.FilmReviewServiceImpl;
import org.lanqiao.service.impl.PreviewServiceImpl;
import org.lanqiao.util.Page;


@WebServlet("/AdvanceNoteServlet")
public class AdvanceNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PreviewService ps = new PreviewServiceImpl();
	private FilmReviewService fr = new FilmReviewServiceImpl();
    public AdvanceNoteServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		String currentPage = request.getParameter("currentPage");
		
		if("preview".equals(flag)) {
			//查询所有预告片
			Page page = new Page();
			
			int currPage = 1;
			
			if(currentPage==null) {
				currPage=1;
			}else {
				currPage = Integer.parseInt(currentPage);
			}
			
			page.setCurrentPage(currPage);
			
			page.setTotalCount(ps.getTotalCount());
			page.setPageSize(12);
			
			//获得第一页的预告片
			List<Preview> listPreview = ps.getByPage(page);
			
			//获得第一页预告片影评
			page.setPageSize(10);
			List<FilmReview> listFilmReview1 =  fr.getPreviewFilmReview(page);
			
			//获得第二页预告片影评
			page.setCurrentPage(currPage+1);
			List<FilmReview> listFilmReview2 =  fr.getPreviewFilmReview(page);
			
			request.setAttribute("listPreview", listPreview);
			request.setAttribute("listFilmReview1", listFilmReview1);
			request.setAttribute("listFilmReview2", listFilmReview2);
			
			System.out.println(listPreview);
			System.out.println(listFilmReview1);
			System.out.println(listFilmReview2);
			
			page.setPageSize(12);
			page.setCurrentPage(currPage);
			page.setTotalCount(ps.getTotalCount());
			request.setAttribute("page", page);
			request.setAttribute("totalPage", page.getTotalPage());
			System.out.println(page.toString());
			System.out.println(currPage);
			request.setAttribute("currentPage", currPage);
			
			request.getRequestDispatcher("news.jsp").forward(request, response);
		}
		
	}

}
