package org.lanqiao.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.MoiveType;
import org.lanqiao.service.MoiveTypeService;
import org.lanqiao.service.impl.MoiveTypeServiceImpl;

import com.google.gson.Gson;


@WebServlet("/MoiveTypeServlet")
public class MoiveTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    MoiveTypeService mts = new MoiveTypeServiceImpl();   
    public MoiveTypeServlet() {
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
			List<MoiveType> list = new ArrayList<>();
			list = mts.getAll();
			request.setAttribute("list", list);
			request.getRequestDispatcher("admin/moiveType.jsp").forward(request, response);
		}
		
		//获取所有分类信息 用json信息返回
		else if("getAllOfJSON".equals(flag)) {
			List<MoiveType> list = new ArrayList<>();
			list = mts.getAll();
			Gson gson = new Gson();
			String result = gson.toJson(list);
			
			response.getWriter().write(result);
			
		}
		
		else if("queryById".equals(flag)) {//根据ID查找
			String id = request.getParameter("id");
			MoiveType mt = mts.queryById(Integer.parseInt(id));
			
			//相应给前端
			if(mt!=null) {
				//创建json对象
				Gson gson = new Gson();
				String result = gson.toJson(mt);
				
				response.getWriter().write(result);
			}else {
				response.getWriter().write("fail");
			}
		}
		
		else if("update".equals(flag)) {//修改分类
			String id = request.getParameter("id");
			String typeName = request.getParameter("name");
			MoiveType moiveType = new MoiveType(Integer.parseInt(id), typeName);
			boolean resFlag = mts.update(moiveType);
			if(resFlag) {
				response.getWriter().write("success");
			}else{
				response.getWriter().write("fail");
			}
		}
		
		else if("add".equals(flag)) {//添加分类
			String typeName = request.getParameter("name");
			MoiveType moiveType = new MoiveType(typeName);
			boolean resFlag = mts.add(moiveType);
			if(resFlag) {
				response.getWriter().write("success");
			}else{
				response.getWriter().write("fail");
			}
		}
		
		else if("del".equals(flag)) {//根据ID删除分类
			int id =Integer.parseInt(request.getParameter("id"));
			boolean resFlag = mts.del(id);
			if(resFlag) {
				response.getWriter().write("success");
			}else{
				response.getWriter().write("fail");
			}
		}
	}

}
