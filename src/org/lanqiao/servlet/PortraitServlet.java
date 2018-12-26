package org.lanqiao.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;




public class PortraitServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setHeaderEncoding("UTF-8"); 
		if(!ServletFileUpload.isMultipartContent(req)){
			 return;
		}
		ServletRequestContext servletRequestContext = new ServletRequestContext(req);
		try {
			List<FileItem> list = upload.parseRequest(servletRequestContext);
			System.out.println(list.size());
			for (FileItem item : list) {
				
				if(item.isFormField()){
					System.out.println("");
				}else{
					//获取文件名
					String fileName = item.getName();
					PrintWriter out = resp.getWriter();
					if(fileName!=null&&!fileName.equals("")) {
						System.out.println(fileName);
						String ext=fileName.substring(fileName.lastIndexOf(".")+1);
						if("png".equals(ext)||"bmp".equals(ext)||"jpg".equals(ext)) {
							fileName = fileName.substring(fileName.lastIndexOf("\\")+1); 
							InputStream in = item.getInputStream();
							//替换头像
							OutputStream ops = new FileOutputStream(new File("F:\\apache-tomcat-9.0.11\\webapps\\movies\\admin\\images\\y.jpg"));
							int read = in.read();
							while(read!=-1){
								ops.write(read);
								read=in.read();
							}
							in.close();
							ops.close();
							//重定向
							resp.sendRedirect("admin/index.jsp");
						}else {
						//图片格式错误
						resp.sendRedirect("admin/uploadPic.jsp ");
						}
					}else {
						//无图
						resp.sendRedirect("admin/uploadPic.jsp ");
					}
					
				}
			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		
	}
}


		