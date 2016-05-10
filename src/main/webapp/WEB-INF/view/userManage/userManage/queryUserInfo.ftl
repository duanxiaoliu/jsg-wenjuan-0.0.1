<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="${contextPath}/img/logo.png"/>
    <title>物资管理调度系统</title>
    <link href="${contextPath}/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${contextPath}/css/style.css"/>
    <link rel="stylesheet" href="${contextPath}/css/font-awesome.min.css"/>

</head>
<body>
<div id="contentwrapper">
	<div class="main_content">
		<div class="row-fluid">
			<from>				
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-4">
								<span class="formTitle">姓名</span>
								<input type="text" class="col-xs-6" id="userName" name="userName"/>
							</div>
							<div class="col-xs-4">
								<span class="formTitle">登录名</span>
								<input type="text" class="col-xs-6" id="loginName" name="loginName"/>
							</div>
							<div class="col-xs-4">
								<span class="formTitle">电话</span>
								<input type="text" class="col-xs-6" id="phone" name="phone"/>
							</div>
						</div>
						
					</div>
					
			</from>
		</div>
	</div>
</div>
<script>


    $(function () {
        $('dt').click(function () {
            $(this).parent().find('dd').show().end().siblings().find('dd').hide();
        });
    });
</script>
</body>
</html>