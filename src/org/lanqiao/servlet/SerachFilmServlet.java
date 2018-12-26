package org.lanqiao.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.Moive;
import org.lanqiao.bean.MoiveCountry;
import org.lanqiao.bean.MoiveType;
import org.lanqiao.service.MoiveCountryService;
import org.lanqiao.service.MoiveService;
import org.lanqiao.service.MoiveTypeService;
import org.lanqiao.service.impl.MoiveCountryServiceImpl;
import org.lanqiao.service.impl.MoiveServiceImpl;
import org.lanqiao.service.impl.MoiveTypeServiceImpl;
import org.lanqiao.util.Page;

import com.google.gson.Gson;


@WebServlet("/SerachFilmServlet")
public class SerachFilmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MoiveService ms = new  MoiveServiceImpl();
	private MoiveTypeService mts = new MoiveTypeServiceImpl();
	MoiveCountryService mcs = new MoiveCountryServiceImpl();
    public SerachFilmServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		request.setAttribute("flag", "flag="+flag);

		if("serach".equals(flag)) {
			String key = request.getParameter("key");
			Page page = new Page();
			
			page.setPageSize(24);
			page.setTotalCount(ms.getTotalCount(key));
			
			int currPage = 1;
			
			String cunrrent = request.getParameter("currentPage");
			if(cunrrent!=null) {
				currPage = Integer.parseInt(cunrrent);
			}else {
				currPage = 1;
			}
			
			page.setCurrentPage(currPage);
			
			//因为未知错误 （无法获得总页数）特殊处理
			request.setAttribute("totalPage", page.getTotalPage());
			request.setAttribute("currentPage", page.getCurrentPage());
			List<Moive> list = ms.getMoiveByPage(key, page);
			
			request.setAttribute("list", list);
			request.getRequestDispatcher("genres.jsp").forward(request, response);
			
			
		}
		//根据电影类型查询影视资源
		else if("typeId".equals(flag)) {
			
			String typId = request.getParameter("typeId");
			
			request.setAttribute("key", "&typeId="+typId);
			
			int typeId = Integer.parseInt(typId);
			//一共有多少条电影
			int totalCount = ms.getTotalCountByTypeId(typeId);
			//创建Page
			Page page = new Page();
			
			//每页24
			page.setPageSize(24);
			page.setTotalCount(totalCount);
			
			//创建当前页的接收值
			int currPage = 1;
			
			//判断是否是超过页面
			String currentPage = request.getParameter("currentPage");
			if(currentPage==null) {
				currPage = 1;
			}else {
				currPage = Integer.parseInt(currentPage);
				if(currPage <1) {
					currPage = 1;
				}
				else if(currPage>page.getTotalPage()) {
					currPage = page.getTotalPage();
				}
			}
			//设置当前页
			page.setCurrentPage(currPage);
			
			
			//因为未知错误 （无法获得总页数）特殊处理
			request.setAttribute("totalPage", page.getTotalPage());
			request.setAttribute("currentPage", page.getCurrentPage());
			
			List<Moive> list = ms.getMoiveByTypeId(page, typeId);
			if(list!=null) {
					MoiveType mt = mts.queryById(typeId);
					if(mt!=null) {
						request.setAttribute("typeName", mt.getTypeName());
						request.setAttribute("list", list);
						request.getRequestDispatcher("genres.jsp").forward(request, response);
					}
			}else {
				response.getWriter().write("400");
			}

		}
		//根据电影国家查询影视资源
		else if("countryId".equals(flag)) {
			
			String countrId = request.getParameter("countryId");
			
			request.setAttribute("key", "&countryId="+countrId);
			
			int countryId = Integer.parseInt(countrId);
			//一共有多少条电影
			int totalCount = ms.getTotalCountByTypeId(countryId);
			//创建Page
			Page page = new Page();
			
			//每页24
			page.setPageSize(24);
			page.setTotalCount(totalCount);
			
			//创建当前页的接收值
			int currPage = 1;
			
			//判断是否是超过页面
			String currentPage = request.getParameter("currentPage");
			if(currentPage==null) {
				currPage = 1;
			}else {
				currPage = Integer.parseInt(currentPage);
				if(currPage <1) {
					currPage = 1;
				}
				else if(currPage>page.getTotalPage()) {
					currPage = page.getTotalPage();
				}
			}
			//设置当前页
			page.setCurrentPage(currPage);
			
			//因为未知错误 （无法获得总页数）特殊处理
			request.setAttribute("totalPage", page.getTotalPage());
			request.setAttribute("currentPage", page.getCurrentPage());
			
			List<Moive> list = ms.getMoiveByCountryId(page, countryId);
			
			if(list!=null) {
					//获得国家名称
					MoiveCountry mc = mcs.queryById(countryId);
					if(mc!=null) {
						request.setAttribute("typeName", mc.getCountryName());
						request.setAttribute("list", list);
						request.getRequestDispatcher("genres.jsp").forward(request, response);
					}
				}
			}
	}

}
