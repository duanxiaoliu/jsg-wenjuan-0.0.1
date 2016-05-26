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
			<form id="queryDicCategory" action="${contextPath}/dicManage/dicManage/queryDicCategory.do" mothod="post">			
				<input type="hidden" name="pageNo" id="pageNo" value="${(page.currentPageNo)!""}"/>	
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-4">
								<span class="formTitle">分类名称</span>
								<input type="text" id="userName" name="userName"/>
							</div>
							<div class="col-xs-4">
								<span class="formTitle">分类编码</span>
								<input type="text" id="loginName" name="loginName"/>
							</div>
						</div>

						
					</div>
					<div class="btnCenter">
						<button type="button" class="btn btn-info" onclick="queryDicInfo()">查询</button>
					</div>
					
			</from>
			<div class="row-fluid">
				<div class="col-xs-12">
					<div id="dt_gal_wrapper" class="dataTables_wrapper" form-inline" role="grid">
						<div class="row">
							<div class="col-xs-10">
								<div class="dt_actions">
									<div class="row-fluid">
										<button class="btn btn-info" type="button" onclick="addDicCategory()">新增</button>
									</div>
								</div>
							</div>
						</div>
						
						<table class="table table-bordered table-striped tablecut" id="smpl_tbl">
							<thead>
								<tr>
									<th>序号</th>
									<th>字典名称</th>
									<th>字典编码</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<#if page ??>
									<#list page.result as dicCategory>
										<tr>
											<td>${dicCategory_index+1}</td>
											<td><#if dicCategory.name ??>${dicCategory.name !""}</#if></td>
											<td><#if dicCategory.code ??>${dicCategory.code !""}</#if></td>
											<td><a href="#" title="设置字典"><i class="icon-cog"></i></a>
												<a href="#" title="修改"><i class="icon-pencil"></i></a>
												<a href="#" title="删除"><i class="icon-trash"></i></a>
												<a href="#" title="查看"><i class="icon-list-alt"></i></a>
											</td>
										</tr>
									</#list>
								</#if>
							</tbody>
						</table>
						<#include "../../page/pageTag.ftl">
					</div>
 				</div>
			
			</div>
		</div>
	</div>
</div>
<script>
	//新增
	function addDicCategory(){
		$('#queryDicCategory').attr('action',"${contextPath}/dicManage/dicManage/jsg-add/addDicCategory.do");
		$('#queryDicCategory').submit();
	}

    $(function () {
        $('dt').click(function () {
            $(this).parent().find('dd').show().end().siblings().find('dd').hide();
        });
    });
</script>
</body>
</html>