<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">

</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">           
            </div>         
            <form action="../AdminServlet" method="post" onsubmit="login()">
            <div class="panel loginbox">
                <div class="text-center margin-big padding-big-top"><h1>后台管理中心</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="text" class="input input-big" name="uname" id="uname" placeholder="登录账号" data-validate="required:请填写账号" />
                            <span class="icon icon-user margin-small"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="password" class="input input-big" name="pwd" id="pwd" placeholder="登录密码" data-validate="required:请填写密码" />
                            <span class="icon icon-key margin-small"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field">
                            <input type="text" class="input input-big" name="code" id="code" placeholder="填写右侧的验证码" data-validate="required:请填写右侧的验证码"  onblur="checkCode()"/>
                           <img src="../verifyCodeUtils" alt="" width="100" height="32" id="verifyCode" class="passcode" style="height:43px;cursor:pointer;" onclick="this.src=this.src+'?'">  
                                                   
                        </div>
                    </div>
                </div>
                <div style="padding:30px;"><input type="submit" class="button button-block bg-main text-big input-big" value="登录"></div>
            </div>
             <input type="hidden" name="flag" value="login">
            </form>          
        </div>
    </div>
</div>
</body>
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script> 
    <script type="text/javascript">
    var flag = false;
    function checkCode(){
    	var code = $("#code").val();
    	$.ajax({
    		url:"../AdminServlet",
    		type:"post",
    		data:{
    			code:code,
    			flag:"code"
    		},
    		success:function(result){
    			if(result=="200"){
    				flag = true;
    			}else if(result=="400"){
    				$("#code").val("");
    			}
    		}
    	})
    }
    
    function login() {
		var name = $("#name").val();
		var pwd =$("#pwd").val();
		if(name!=""&&pwd!=""&&flag==true){
			return true;
		}
		return false;
	}
    
    </script>
</html>