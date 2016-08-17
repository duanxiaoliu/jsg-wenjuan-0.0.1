<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="${contextPath}/img/logo.png"/>
    <title>员工管理系统</title>
    <link href="${contextPath}/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${contextPath}/css/style.css"/>
    <link rel="stylesheet" href="${contextPath}/css/font-awesome.min.css"/>

</head>
<body>
<div id="contentwrapper">
	<div class="main_content">
		<div class="row-fluid">
			<form id="queryUser" action="${contextPath}/userManage/userManage/ope-query/queryUserInfo.do" method="post">				
				<div class="col-xs-12">
					<div class="row-fluid">
						<div class="col-xs-6">
							<span class="formTitle">姓名</span>
							<input type="text" class="col-xs-5" id="userName" name="userName"/>
						</div>
						<div class="col-xs-6">
							<span class="formTitle">登录名</span>
							<input type="text" class="col-xs-5" id="loginName" name="loginName"/>
						</div>
					</div>
					
					<div class="row-fluid">
						<div class="col-xs-6">
							<span class="formTitle">性别</span>
							<select size="1" id="genderDic" class="col-xs-5 selectM" name="genderDic.id" aria-controls="dt_gal">
								<option value="">请选择...</option>
								<#if user.genderDic ??>
									<#list genderDicList as dic>
										<#if dic.id == user.genderDic.id>
											<option value="${dic.id}" selected="selected">${dic.name}</option>
										<#else>
											<option value="${dic.id}">${dic.name}</option>
										</#if>	
									</#list>
								<#else>
									<#list genderDicList as dic>
										<option value="${dic.id}">${dic.name}</option>
									</#list>
								</#if>
							</select>
						</div>
						<div class="col-xs-6">
							<span class="formTitle">状态</span>
							<select size="1" id="statusDic" class="col-xs-5 selectM" name="statusDic.id" aria-controls="dt_gal">
								<option value="">请选择...</option>
								<#if user.statusDic ??>
									<#list statusDicList as dic>
										<#if dic.id == user.statusDic.id>
											<option value="${dic.id}" selected="selected">${dic.name}</option>
										<#else>
											<option value="${dic.id}">${dic.name}</option>
										</#if>	
									</#list>
								<#else>
									<#list statusDicList as dic>
										<option value="${dic.id}">${dic.name}</option>
									</#list>
								</#if>
							</select>
						</div>
					</div>
				</div>
				<div class="btnCenter">
					<button type="button" class="btn btn-info" onclick="queryUser()">查询</button>
				</div>
			</form>
			<hr class="Divider"/>
			<div class="row-fluid">
				<div class="col-xs-12">
					<div id="dt_gal_wrapper" class="dataTables_wrapper" form-inline" role="grid">
						<div class="row">
							<div class="col-xs-10">
								<div class="dt_actions">
									<div class="row-fluid">
										<button class="btn btn-info" type="button" onclick="addUser()">新增</button>
									</div>
								</div>
							</div>
						</div>
						
						<table class="table table-bordered table-striped tablecut" id="smpl_tbl">
							<thead>
								<tr>
									<th>序号</th>
									<th>人员名称</th>
									<th>登录名</th>
									<th>性别</th>
									<th>状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<#if page ??>
									<#list page.result as user>
										<tr>
											<td>${user_index+1}</td>
											<td><#if user.name ??>${user.name !""}</#if></td>
											<td><#if user.userLogin ??>${(user.userLogin.loginName)!""}</#if></td>
											<td><#if user.genderDic ??>${(user.genderDic.name) !""}</#if></td>
											<td><#if user.statusDic ??>${(user.statusDic.name)!""}</#if></td>
											<td>
												<a href="#" title="修改" onclick="editUser('${user.id !""}')"><i class="icon-pencil"></i></a>
												<a href="#" title="删除" onclick="delUser('${user.id !""}')"><i class="icon-trash"></i></a>
												<a href="#" title="查看" onclick="viewUser('${user.id !""}')"><i class="icon-list-alt"></i></a>
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
	//查询
	function queryUser(){
		$('#queryUser').attr('action','${contextPath}/userManage/userManage/ope-query/queryUserInfo.do');
		$('#queryUser').submit();
	}
	//新增
	function addUser(){
		$('#queryUser').attr('action','${contextPath}/userManage/userManage/ope-add/addUserInfo.do');
		$('#queryUser').submit();
	}
	//查看
	function viewUser(id){
		$('#queryUser').attr('action','${contextPath}/userManage/userManage/ope-view/viewUserInfo.do?id='+id);
		$('#queryUser').submit();
	}
	//修改
	function editUser(id){
		$('#queryUser').attr('action','${contextPath}/userManage/userManage/ope-update/updateUserInfo.do?id='+id);
		$('#queryUser').submit();
	}
	//删除
	function delUser(id){
		basejs.confirm("注意，确定要删除吗？",function(r){
			if(r){
				var url = "${contextPath}/userManage/userManage/ope-del/delUserInfo/"+id+".do";
				$.ajax({
					url:url,
					async:false,
					cache:false,
					type:"DELETE",
					dataType:"text",
					success:function(data){
						if(data="success"){
							queryUser();
						}else{
							alert("无法完成删除操作！");
						}
					}
				});
			}
		});
	}
	
</script>
</body>
</html>