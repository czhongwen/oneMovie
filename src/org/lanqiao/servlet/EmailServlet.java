package org.lanqiao.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.util.VerifyCodeUtils;
import org.lanqiao.util.mail.MailSenderProperties;
import org.lanqiao.util.mail.SimpleMailSender;


@WebServlet("/EmailServlet")
public class EmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EmailServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		//用户注册邮箱验证
		if("regist".equals(flag)) {
			
			String email = request.getParameter("email");
			
			MailSenderProperties mailInfo = new MailSenderProperties();   
		      mailInfo.setMailServerHost("smtp.qq.com");   
		      mailInfo.setMailServerPort("587");  
		      mailInfo.setValidate(true);   
		      mailInfo.setUserName("897377291@qq.com");   
		      mailInfo.setPassword("lepgcfamronnbdfj");
		      mailInfo.setFromAddress("897377291@qq.com");   
		      mailInfo.setToAddress(email);   
		      mailInfo.setSubject("注册验证码");  
		      
		      //生成验证码
		      String code = VerifyCodeUtils.generateVerifyCode(4);
			  request.getSession().setAttribute("code", code);
		      
		      mailInfo.setContent(code); 
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
