package org.lanqiao.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.FilmReview;
import org.lanqiao.bean.Moive;
import org.lanqiao.bean.TV;
import org.lanqiao.bean.TvDetail;
import org.lanqiao.service.FilmReviewService;
import org.lanqiao.service.MoiveService;
import org.lanqiao.service.TvDetailService;
import org.lanqiao.service.TvService;
import org.lanqiao.service.impl.FilmReviewServiceImpl;
import org.lanqiao.service.impl.MoiveServiceImpl;
import org.lanqiao.service.impl.TvDetailServiceImpl;
import org.lanqiao.service.impl.TvServiceImpl;
import org.lanqiao.util.Page;


@WebServlet("/PlayVideoServlet")
public class PlayVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MoiveService ms = new  MoiveServiceImpl();
	private FilmReviewService frs = new FilmReviewServiceImpl();
	private TvService ts = new TvServiceImpl();
	private TvDetailService  tds = new TvDetailServiceImpl();
	public PlayVideoServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String flag = request.getParameter("flag");
		
		if("videoId".equals(flag)) {
			String videoType = request.getParameter("videoType");
			String videoId = request.getParameter("videoId");
			
			if("moive".equals(videoType)) {
				
				Page pageFilm = new Page(3, 1);
				
				int totalCount = frs.getTvFilmReview(videoId).size();
				
				List<FilmReview> listFilmReview = null;
				
				//播放量加1
				ms.addPlayback(videoId);
				
				Moive moive = ms.getById(videoId);
				if(0<totalCount) {
					pageFilm.setTotalCount(totalCount);
					listFilmReview = frs.getPreviewFilmReview(pageFilm);
				}
				request.setAttribute("page", pageFilm);
				
				Page page = new Page();
				int currentPage = new Random().nextInt(ms.getTotalCount()/16-2)+1;
				page.setTotalCount(ms.getTotalCount());
				page.setPageSize(16);
				page.setCurrentPage(currentPage);
				
				List<Moive> listMoive = ms.getMoive(page);
				
				request.setAttribute("moive", moive);
				request.setAttribute("listMoive", listMoive);
				request.setAttribute("listFilmReview", listFilmReview);
				
				request.getRequestDispatcher("moiveSingle.jsp").forward(request, response);
				
			}else if("tv".equals(videoType)) {
				Page pageFilm = new Page(3, 1);
				
				//电视剧播放量加1
				ts.addPlayback(videoId);
				
				System.out.println("播放电影："+flag+"  videoType"+videoType+"  videoId"+videoId);
				
				int totalCount = frs.getTvFilmReview(videoId).size();
				List<FilmReview> listFilmReview = null;
				TV tv = ts.getById(videoId);
				if(totalCount>0) {
					pageFilm.setTotalCount(totalCount);
					listFilmReview = frs.getPreviewFilmReview(pageFilm);
				}
				request.setAttribute("page", listFilmReview);
				
				Page page = new Page();
				int currentPage = new Random().nextInt(ts.getTotalCount()/16-2)+1;
				page.setTotalCount(ts.getTotalCount());
				page.setPageSize(16);
				page.setCurrentPage(currentPage);
				
				List<TV> listTv = ts.getByPage(page);
				
				
				//获得电视剧详情
				List<TvDetail> listTvDetail = tds.getAll(tv.getTvId());
				
				System.out.println(listTvDetail.size());
				
				request.setAttribute("listTvDetail", listTvDetail);
				request.setAttribute("listTv", listTv);
				request.setAttribute("tv", tv);
				request.setAttribute("listFilmReview", listFilmReview);
				
				request.getRequestDispatcher("tvSingle.jsp").forward(request, response);
			}
		}
	}

}
