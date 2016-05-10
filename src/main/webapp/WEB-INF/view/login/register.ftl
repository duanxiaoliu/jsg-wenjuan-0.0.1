<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="img/logo.png"/>
    <title>物资管理调度系统</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/login/register.css" rel="stylesheet">

    <!--[if lt IE 9]>
  <script src="js/html5shiv.min.js"></script>
  <script src="js/respond.min.js"></script>
  
  <![endif]-->

</head>
<body>
<div class="box">
    <br/>
    <h1 class="text-center text-white"><span class="glyphicon glyphicon-leaf"></span>&nbsp;&nbsp;物资管理调度系统</h1>
    <div class="login-box">
        <div class="login-title text-center">
            <h1><small>注册</small></h1>
        </div>
        <div class="login-content ">
            <div class="form">
                <form action="#" method="post" id="saveRegister" name="saveRegister">
                    <div class="form-group">
                        <div class="col-xs-12  ">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                <input type="text" id="loginName" name="loginName" class="form-control" placeholder="用户名">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12  ">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="text" id="password" name="password" class="form-control" placeholder="密码">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12  ">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="text" id="repassword" name="password" class="form-control" placeholder="重复密码">
                            </div>
                        </div>
                    </div>

                    <div class="form-group form-actions">
                        <div class="col-xs-4 col-xs-offset-4 " style="margin: 0 37%;">
                            <a href="#" class="btn btn-sm btn-info" onclick="saveRegisterInfo()"><span class="glyphicon glyphicon-record"></span> 注册</a>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12 link">
                            <p class="text-center remove-margin"><small>已有账号,请点击</small> <a href="#" onclick="toLogin()" ><small>登录</small></a>
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
    
    //跳转到登录页面
      function toLogin(){
      	$("#saveRegister").attr('action','login.do');
    	$("#saveRegister").submit();
      }
        //进行注册
    function saveRegisterInfo(){
    	$.ajax({
    		url:"saveRegister.do",
    		async:false,
    		cache:false,
    		type:"POST",
    		dataType:"text",
    		data:$("#saveRegister").serialize(),
    		success:function(data){
    			if('success'==data){
    				alert(data);
    			}else{
    				
    			}
    		}
    	});
      }
</script>
</body>
</html>