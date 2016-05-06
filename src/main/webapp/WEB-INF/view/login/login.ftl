<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="img/logo.png"/>
    <title>物资管理调度系统</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/login/login.css" rel="stylesheet">

</head>
<body>
<div class="box">
    <br/>
    <h1 class="text-center text-white"><span class="glyphicon glyphicon-leaf"></span>&nbsp;&nbsp;物资管理调度系统</h1>
    <div class="login-box">
        <div class="login-title text-center">
            <h1><small>登录</small></h1>
        </div>
        <div class="login-content ">
            <div class="form">
                <form action="#" method="post" id="userLogin" name="userLogin">
                    <div class="form-group">
                        <div class="col-xs-12  ">
                            <div class="input-group" style="margin-bottom:10px;">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                <input type="text" id="loginName" name="loginName" class="form-control" placeholder="用户名">  
                            </div>
                            <p id="loginNameError" class="msgError"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12  ">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="text" id="password" name="password" class="form-control" placeholder="密码">
                            </div>
                            <p id="passwordError" class="msgError"></p>
                        </div>
                    </div>
                    <div class="form-group form-actions">
                        <div class="col-xs-4 col-xs-offset-4 " style="margin: 0 37%;">
                            <a href="#" class="btn btn-sm btn-info" onclick="toLogin()"><span class="glyphicon glyphicon-off" ></span> 登录</a>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-6 link">
                            <p class="text-center remove-margin"><small>忘记密码？</small> <a href="javascript:void(0)" ><small>找回</small></a>
                            </p>
                        </div>
                        <div class="col-xs-6 link">
                            <p class="text-center remove-margin"><small>还没注册?</small> <a href="register.html" ><small>注册</small></a>
                            </p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.js"></script>
<script>
    /*Bootlint工具用于对页面中的HTML标签以及Bootstrapclass的使用进行检测
    (function () {
        var s = document.createElement("script");
        s.onload = function () {
            bootlint.showLintReportForCurrentDocument([]);
        };
        s.src = "js/bootlint.js";
        document.body.appendChild(s)
    })();*/
    
    function toLogin(){
    	$.ajax({
    		url:"toLogin.do",
    		async:false,
    		cache:false,
    		type:"POST",
    		dataType:"text",
    		data:$("#userLogin").serialize(),
    		success:function(data){
    			if('success'==data){
    				$("#userLogin").attr('action','toMain.do');
    				$("#userLogin").submit();
    			}else{
    				$("#passwordError").text('登录信息有误，请重新填写！');
    			}
    		}
    	});
    
    }
</script>
</body>
</html>