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


@WebServlet("/TvServlet")
public class TvServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TvService ts = new   TvServiceImpl(); 
	private MoiveService ms = new MoiveServiceImpl();
    public TvServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String flag = request.getParameter("flag");
			
			if("tv".equals(flag)) {
				Page page = new Page();
				page.setPageSize(18);
				page.setCurrentPage(1);
				page.setTotalCount(ts.getTotalCount());
				
				
				//精选
				List<TV> chosenList = ts.getByPage(page);
				
				// 最新
				List<TV> newList = ts.getNewTv(page);
				
				// 评分最高
				List<TV> scoreList = ts.getHighScore(page);
				
				//播放最多
				List<TV> playList = ts.getHot(page);
				
				request.setAttribute("chosenList", chosenList);
				request.setAttribute("newList", newList);
				request.setAttribute("scoreList", scoreList);
				request.setAttribute("playList", playList);
				
				
				
				request.getRequestDispatcher("tvSeries.jsp").forward(request, response);
			}
			else if("moive".equals(flag)) {
				
				Page page = new Page(18, 1);
				
				//最新上映
				List<Moive> newList = ms.getNewMoive(page);
				//评分最高
				List<Moive> highScore = ms.getHighScore(page);
				//播放最多
				List<Moive> highPlay = ms.getHighPlay(page);
				//精选
				List<Moive> chosen = ms.getByPage(page);
				
				
				request.setAttribute("newList", newList);
				request.setAttribute("highScore", highScore);
				request.setAttribute("highPlay", highPlay);
				request.setAttribute("chosen", chosen);

				System.out.println("最新:"+newList.size());
				System.out.println("高分:"+highScore.size());
				System.out.println("最热:"+highPlay.size());
				System.out.println("精选:"+chosen.size());
				
				request.getRequestDispatcher("moiveSeries.jsp").forward(request, response);
			}
		
		}
	
	}
