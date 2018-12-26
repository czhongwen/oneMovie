package org.lanqiao.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.Index;
import org.lanqiao.service.IndexService;
import org.lanqiao.service.impl.IndexServiceImpl;

import com.google.gson.Gson;

@WebServlet("/CarouselServlet")
public class CarouselServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//创建indexServiceImpl业务层对象
    IndexService is = new IndexServiceImpl(); 
    
    public CarouselServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//获得旗标
		String flag = request.getParameter("flag");
		
		//得到所有首页轮播信息
		if("getAll".equals(flag)) {
			//创建集合
			List<Index> listIndexs = new ArrayList<>();
			//将查询的数据封装到集合里
			listIndexs = is.queryAll();
			//设置缓存
			request.setAttribute("listIndexs", listIndexs);
			//跳转到轮播锅里页面
			request.getRequestDispatcher("admin/abv.jsp").forward(request, response);
		}
		
		//根据id查询单个index信息
		else if("del".equals(flag)) {
			//获得管理员想要删除的数据
			String id = request.getParameter("id");
			//业务层删除数据
			boolean resFlag = is.del(Integer.parseInt(id));
			if(resFlag) {//当数据库删除成功
				response.getWriter().write("success");
			}else {
				response.getWriter().write("fail");
			}
		}
		
		//根据ID查询单个轮播的信息
		else if("queryById".equals(flag)) {
			//获取想要的轮播信息的ID
			String id = request.getParameter("id");
			//根据ID查询信息
			Index index= is.queryById(Integer.parseInt(id));
			
			//创建gson对象
			Gson gson = new Gson();
			if(index!=null) {//index不为空说明查询成功
				String reult = gson.toJson(index);
				response.getWriter().write(reult);
			}else {
				response.getWriter().write("fail");
			}
		}
		

		else if ("update".equals(flag)) {
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String pic = request.getParameter("pic");
			String moiveAddress = request.getParameter("moiveAddress");
			String moiveComment = request.getParameter("moiveComment");
			Index index = new Index(id, pic, name, moiveComment, moiveAddress);
			boolean resFlag = is.update(index);
			if(resFlag) {
				response.getWriter().write("success");
			}else {
				response.getWriter().write("fail");
			}
		}
		
		else if ("add".equals(flag)) {
			String name = request.getParameter("name");
			String pic = request.getParameter("pic");
			String moiveAddress = request.getParameter("moiveAddress");
			String moiveComment = request.getParameter("moiveComment");
			Index index = new Index( pic, name, moiveComment, moiveAddress);
			boolean resFlag = is.add(index);
			if(resFlag) {
				response.getWriter().write("success");
			}else {
				response.getWriter().write("fail");
			}
		}
		
	}

	
}
