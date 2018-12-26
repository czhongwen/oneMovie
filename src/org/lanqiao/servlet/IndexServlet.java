package org.lanqiao.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.Index;
import org.lanqiao.bean.Moive;
import org.lanqiao.service.IndexService;
import org.lanqiao.service.MoiveService;
import org.lanqiao.service.impl.IndexServiceImpl;
import org.lanqiao.service.impl.MoiveServiceImpl;
import org.lanqiao.util.Page;

@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IndexService is = new  IndexServiceImpl();
	private MoiveService ms =new MoiveServiceImpl();
    public IndexServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		
		if("index".equals(flag)) {
			
			//获得首页轮播
			List<Index> listIndex = is.queryAll();
			
			Page page = new Page(12, 1);
			
			//最新上映
			List<Moive> newList = ms.getNewMoive(page);
			//评分最高
			List<Moive> highScore = ms.getHighScore(page);
			//播放最多
			List<Moive> highPlay = ms.getHighPlay(page);
			//精选
			List<Moive> chosen = ms.getByPage(page);
			
			//最新上映第二页
			page.setCurrentPage(2);
			List<Moive> newListPage2 = ms.getNewMoive(page);
			
			page.setPageSize(21);
			page.setCurrentPage(1);
			//最受欢迎
			List<Moive> hoter = ms.getBestMoive(page);
			
			request.setAttribute("listIndex", listIndex);
			request.setAttribute("newList", newList);
			request.setAttribute("newListPage2", newListPage2);
			request.setAttribute("highScore", highScore);
			request.setAttribute("highPlay", highPlay);
			request.setAttribute("chosen", chosen);
			request.setAttribute("hoter", hoter);
			
			request.getSession().setAttribute("user", null);
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
