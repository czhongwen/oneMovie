package org.lanqiao.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.bean.MoiveCountry;
import org.lanqiao.bean.MoiveType;
import org.lanqiao.bean.PageTopInfo;
import org.lanqiao.service.MoiveCountryService;
import org.lanqiao.service.MoiveTypeService;
import org.lanqiao.service.impl.MoiveCountryServiceImpl;
import org.lanqiao.service.impl.MoiveTypeServiceImpl;
import org.lanqiao.util.VerifyCodeUtils;
import org.lanqiao.util.mail.MailSenderProperties;
import org.lanqiao.util.mail.SimpleMailSender;

import com.google.gson.Gson;


@WebServlet("/PageTopBottomManger")
public class PageTopBottomManger extends HttpServlet {
	private static final long serialVersionUID = 1L;
    MoiveTypeService mts = new  MoiveTypeServiceImpl();
    MoiveCountryService mcs = new MoiveCountryServiceImpl();
    public PageTopBottomManger() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		//页面顶部信息
		if("top".equals(flag)) {
			//获取数据
			List<MoiveType> moiveType = mts.getAll();
			List<MoiveCountry> moiveCountry = mcs.getAll();
			//封装数据
			PageTopInfo pti = new PageTopInfo(moiveType, moiveCountry);
			
			if(moiveType!=null && moiveCountry!=null) {
				//创建GSON 
				Gson gson = new Gson();
				String res = gson.toJson(pti);
				
				response.getWriter().write(res);
			}else {
				response.getWriter().write("400");
			}
			
		}
		//查询页面底部信息
		if("bottom".equals(flag)) {
			String email = request.getParameter("email");
			
			MailSenderProperties mailInfo = new MailSenderProperties();   
		      mailInfo.setMailServerHost("smtp.qq.com");   
		      mailInfo.setMailServerPort("587");  
		      mailInfo.setValidate(true);   
		      mailInfo.setUserName("897377291@qq.com");   
		      mailInfo.setPassword("lepgcfamronnbdfj");
		      mailInfo.setFromAddress("897377291@qq.com");   
		      mailInfo.setToAddress(email);   
		      mailInfo.setSubject("一部电影");  
		      
		      
		      mailInfo.setContent("您的关注是我们的动力,我们将持续更新优质电影。"); 
		      SimpleMailSender sms = new SimpleMailSender();  
		      boolean resFlag = sms.sendTextMail(mailInfo); 
		      if(resFlag) {
		    	  response.getWriter().write("200");
		      }else {
		    	  response.getWriter().write("400");
		      }
		}
	}

}
