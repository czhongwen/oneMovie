package org.lanqiao.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.MoiveCountry;
import org.lanqiao.service.MoiveCountryService;
import org.lanqiao.service.impl.MoiveCountryServiceImpl;

import com.google.gson.Gson;


@WebServlet("/MoiveCountryServlet")
public class MoiveCountryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private MoiveCountryService mcs = new MoiveCountryServiceImpl();  
    public MoiveCountryServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//获得旗标
		String flag = request.getParameter("flag");
				
		//判断请求的方式
		if("getAll".equals(flag)) {//获取所有分类信息
			List<MoiveCountry> list = new ArrayList<>();
			list = mcs.getAll();
			request.setAttribute("list", list);
			request.getRequestDispatcher("admin/moiveCountry.jsp").forward(request, response);
		}
		
		//获取所有分类信息 用json信息返回
		else if("getAllOfJSON".equals(flag)) {
			List<MoiveCountry> list = new ArrayList<>();
			list = mcs.getAll();
			Gson gson = new Gson();
			String result = gson.toJson(list);
					
			response.getWriter().write(result);
					
		}
		
		else if("add".equals(flag)) {//添加分类
			String countryName = request.getParameter("name");
			MoiveCountry moiveCountry = new MoiveCountry(countryName);
			boolean resFlag = mcs.add(moiveCountry);
			if(resFlag) {
				response.getWriter().write("success");
			}else{
				response.getWriter().write("fail");
			}
		}
		
		else if("del".equals(flag)) {//根据ID删除分类
			int id =Integer.parseInt(request.getParameter("id"));
			boolean resFlag = mcs.del(id);
			if(resFlag) {
				response.getWriter().write("success");
			}else{
				response.getWriter().write("fail");
			}
		}
		
		else if("add".equals(flag)) {//添加分类
			String countryName = request.getParameter("name");
			MoiveCountry moiveCountry = new MoiveCountry(countryName);
			boolean resFlag = mcs.add(moiveCountry);
			if(resFlag) {
				response.getWriter().write("success");
			}else{
				response.getWriter().write("fail");
			}
		}
		
		else if("queryById".equals(flag)) {//根据ID查找
			String id = request.getParameter("id");
			MoiveCountry mc = mcs.queryById(Integer.parseInt(id));
			
			//相应给前端
			if(mc!=null) {
				//创建json对象
				Gson gson = new Gson();
				String result = gson.toJson(mc);
				
				response.getWriter().write(result);
			}else {
				response.getWriter().write("fail");
			}
		}
		
		else if("add".equals(flag)) {//添加分类
			String countryName = request.getParameter("name");
			MoiveCountry moiveCountry = new MoiveCountry(countryName);
			boolean resFlag = mcs.add(moiveCountry);
			if(resFlag) {
				response.getWriter().write("success");
			}else{
				response.getWriter().write("fail");
			}
		}
		
	}

}
