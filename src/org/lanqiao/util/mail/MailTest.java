package org.lanqiao.util.mail;


public class MailTest {
	public static void main(String[] args) {
		 MailSenderProperties mailInfo = new MailSenderProperties();   
	      mailInfo.setMailServerHost("smtp.qq.com");   
	      mailInfo.setMailServerPort("587");   
	      //�����ʼ���������imap.qq.com��ʹ��SSL���˿ں�993
	      //�����ʼ���������smtp.qq.com��ʹ��SSL���˿ں�465��587
	      mailInfo.setValidate(true);   
	      mailInfo.setUserName("897377291@qq.com");   
	      mailInfo.setPassword("lepgcfamronnbdfj");//�ͻ�����Ȩ����
	      mailInfo.setFromAddress("897377291@qq.com");   
	      mailInfo.setToAddress("1312128079@qq.com");   
	      mailInfo.setSubject("测试呀");   
	      mailInfo.setContent("hahahaha");   
	         //这个类主要来发�?�邮�?  
	      SimpleMailSender sms = new SimpleMailSender();  
	      boolean flag = sms.sendTextMail(mailInfo);//发�?�文体格�?   
	      if(flag)
	    	  System.out.println("测试成功");
//	          sms.sendHtmlMail(mailInfo);//发�?�html格式  
	}
}
