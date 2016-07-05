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
			<form id="queryCustomer" action="${contextPath}/employeeManage/customerManage/ope-query/queryCustomer.do" method="post">				
				<div class="col-xs-12">
					<div class="row-fluid">
						<div class="col-xs-6">
							<span class="formTitle">客户姓名</span>
							<input type="text" class="col-xs-5" id="name" name="name" value="${customer.name!""}"/>
						</div>
						<div class="col-xs-6">
							<span class="formTitle">客户代码</span>
							<input type="text" class="col-xs-5" id="code" name="code" value="${customer.code!""}"/>
						</div>
					</div>
				</div>
				<div class="btnCenter">
					<button type="button" class="btn btn-info" onclick="queryCustomer()">查询</button>
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
										<button class="btn btn-info" type="button" onclick="addCustomer()">新增</button>
									</div>
								</div>
							</div>
						</div>
						
						<table class="table table-bordered table-striped tablecut" id="smpl_tbl">
							<thead>
								<tr>
									<th>序号</th>
									<th>客户名称</th>
									<th>客户代码</th>
									<th>加班费</th>
									<th>是否有餐补</th>
									<th>月平均工作日天数</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<#if page ??>
									<#list page.result as customer>
										<tr>
											<td>${customer_index+1}</td>
											<td><#if customer.name ??>${customer.name !""}</#if></td>
											<td><#if customer.code ??>${(customer.code)!""}</#if></td>
											<td><#if customer.overTimeMoney ??>${(customer.overTimeMoney) !""}</#if></td>
											<td><#if customer.isMeal ??>${(customer.isMeal.name)!""}</#if></td>
											<td><#if customer.workDays ??>${(customer.workDays)!""}</#if></td>
											<td>
												<a href="#" title="修改" onclick="editCustomer('${customer.id !""}')"><i class="icon-pencil"></i></a>
												<a href="#" title="删除" onclick="delCustomer('${customer.id !""}')"><i class="icon-trash"></i></a>
												<a href="#" title="查看" onclick="viewCustomer('${customer.id !""}')"><i class="icon-list-alt"></i></a>
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
	function queryCustomer(){
		$('#queryCustomer').attr('action','${contextPath}/employeeManage/customerManage/ope-query/queryCustomer.do');
		$('#queryCustomer').submit();
	}
	//新增
	function addCustomer(){
		$('#queryCustomer').attr('action','${contextPath}/employeeManage/customerManage/ope-add/addCustomer.do');
		$('#queryCustomer').submit();
	}
	//查看
	function viewCustomer(id){
		$('#queryCustomer').attr('action','${contextPath}/employeeManage/customerManage/ope-view/viewCustomer.do?id='+id);
		$('#queryCustomer').submit();
	}
	//修改
	function editCustomer(id){
		$('#queryCustomer').attr('action','${contextPath}/employeeManage/customerManage/ope-update/editCustomer.do?id='+id);
		$('#queryCustomer').submit();
	}
	//删除
	function delCustomer(id){
		basejs.confirm("注意，确定要删除吗？",function(r){
			if(r){
				var url = "${contextPath}/employeeManage/customerManage/ope-del/delCustomer/"+id+".do";
				$.ajax({
					url:url,
					async:false,
					cache:false,
					type:"DELETE",
					dataType:"text",
					success:function(data){
						if(data="success"){
							queryCustomer();
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