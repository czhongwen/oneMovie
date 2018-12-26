package org.lanqiao.servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.lanqiao.bean.Moive;
import org.lanqiao.service.MoiveService;
import org.lanqiao.service.impl.MoiveServiceImpl;

@WebServlet("/MoiveUpdateLoadServlet")
public class MoiveUpdateLoadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MoiveService ms = new MoiveServiceImpl();
	public MoiveUpdateLoadServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//创建Moive
		Moive moive = new Moive();
		moive.setMoiveId(UUID.randomUUID().toString());
		// 创建保存文件的地址
		String filePath = "";

		// 判断是否是混合类型提交
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (isMultipart) {

			// 将文件放在当前项目的upload
			filePath = request.getSession().getServletContext().getRealPath("files/");

			// 创建FileItemFactory
			FileItemFactory factory = new DiskFileItemFactory();

			// 创建ServletFileUpload
			ServletFileUpload upload = new ServletFileUpload(factory);

			try {
				// 获得form中的所有数据
				List<FileItem> itms = upload.parseRequest(request);

				// 声明name属性
				String name = "";
				for (FileItem fileItem : itms) {
					if (fileItem.isFormField()) {// 普通表单文本
						
						name = fileItem.getFieldName();
						
						// 使用UTF-8字符编码获取文件名
						String value = fileItem.getString("UTF-8");
						if("movieName".equals(name)) {
							moive.setMoiveName(value);
						}else if("typeId".equals(name)) {
							moive.setTypeId(Integer.parseInt(value));
						}else if("countrId".equals(name)) {
							moive.setCountryId(Integer.parseInt(value));
						}else if("comment".equals(name)) {
							moive.setMoiveDescribe(value);
						}else if("showTime".equals(name)) {
							moive.setShowTime(value);
						}else if("loadTime".equals(name)) {
							moive.setLoadTime(value);
						}

					} else {// 表单附件
						// 将附件存到项目upload目录下
						name = fileItem.getName();
						String newName = "files/"+getNewFileName(name);;
						if("pic".equals(fileItem.getFieldName())) {
							moive.setMoivePic(newName);
						}else if("videoAdress".equals(fileItem.getFieldName())) {
							moive.setMoiveAddress(newName);
						}
						// 创建一个文件流保存附件数据
						File file = new File(filePath, newName);
						// 将文件储存起来
						fileItem.write(file);
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} 
		moive.setMoivePlay(1000);
		moive.setMoiveScore(500);
		boolean flag = ms.add(moive);
		if(flag) {
			response.getWriter().println("<script>alert('添加成功');history.go(-1);</script>");
		}else {
			response.getWriter().println("<script>alert('添加失败');history.go(-1);</script>");
		}
	}

	private String getNewFileName(String fileName) {

		// 创建一个UUID作为文件名
		String newFileName = UUID.randomUUID().toString();
		;
		// 截取文件名的后缀名
		newFileName += fileName.substring(fileName.lastIndexOf("."));
		return newFileName;
	}
}