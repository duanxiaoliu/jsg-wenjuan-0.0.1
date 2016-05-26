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
		<div>
			<h4>
				<#if dicCategory ??>
					修改数据字典
				<#else>
					新增数据字典
				</#if>
			</h4>
		</div>
		<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=2)" width="100%" color=#987cb9 SIZE=10/>
		<div class="row-fluid">
			<form action="${contextPath}/dicManage/dicManage/jsg-save/saveDicCategory.do" id="saveDicCategory" mothod="post">			
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">分类名称</span>
								</div>
								<div class="col-xs-6">
									<input type="text" id="name" name="name"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">分类编码</span>
								</div>
								<div class="col-xs-6">
									<input type="text" id="code" name="code"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">备注</span>
								</div>
								<div class="col-xs-6">
									<textarea name="comments" id="comments" clos="12" rows="5"></textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									
								</div>
								<div class="col-xs-6" style="margin-top:20px;">
									<button type="button" class="btn btn-info" onclick="saveDicCategory()">保存</button>
								</div>
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