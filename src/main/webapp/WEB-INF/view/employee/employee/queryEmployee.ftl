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
			<form id="queryEmployee" action="${contextPath}/employeeManage/employeeManage/ope-query/queryEmployee.do" method="post">				
				<div class="col-xs-12">
					<div class="row-fluid">
						<div class="col-xs-6">
							<span class="formTitle">员工姓名</span>
							<input type="text" class="col-xs-5" id="employeeName" name="employeeName" value="${employee.employeeName!""}"/>
						</div>
						<div class="col-xs-6">
							<span class="formTitle">员工代码</span>
							<input type="text" class="col-xs-5" id="employeeCode" name="employeeCode" value="${employee.employeeCode!""}"/>
						</div>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="row-fluid">
						<div class="col-xs-6">
							<span class="formTitle">所在部门</span>
							<select size="1" id="department" class="col-xs-9" name="department.id" aria-controls="dt_gal" onchange="changeCheck(this)">
								<option value="">请选择...</option>
								<#if employee.department ??>
									<#list departmentDicList as dic>
										<#if dic.id == employee.department.id>
											<option value="${dic.id}" selected="selected">${dic.name}</option>
										<#else>
											<option value="${dic.id}">${dic.name}</option>
										</#if>	
									</#list>
								<#else>
									<#list departmentDicList as dic>
										<option value="${dic.id}">${dic.name}</option>
									</#list>
								</#if>
							</select>
						</div>
						<div class="col-xs-6">
							<span class="formTitle">所在客户</span>
							<select size="1" id="customer" class="col-xs-9" name="customer.id" aria-controls="dt_gal">
								<option value="">请选择...</option>
								<#if employee.customer ??>
									<#list customerList as dic>
										<#if dic.id == employee.customer.id>
											<option value="${dic.id}" selected="selected">${dic.name}</option>
										<#else>
											<option value="${dic.id}">${dic.name}</option>
										</#if>	
									</#list>
								<#else>
									<#list customerList as dic>
										<option value="${dic.id}">${dic.name}</option>
									</#list>
								</#if>
							</select>
						</div>
					</div>
				</div>
				<div class="btnCenter">
					<button type="button" class="btn btn-info" onclick="queryEmployee()">查询</button>
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
										<button class="btn btn-info" type="button" onclick="addEmployee()">新增</button>
									</div>
								</div>
							</div>
						</div>
						
						<table class="table table-bordered table-striped tablecut" id="smpl_tbl">
							<thead>
								<tr>
									<th>序号</th>
									<th>员工名称</th>
									<th>员工代码</th>
									<th>所在部门</th>
									<th>所在客户</th>
									<th>邮箱</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<#if page ??>
									<#list page.result as employee>
										<tr>
											<td>${employee_index+1}</td>
											<td><#if employee.employeeName ??>${employee.employeeName !""}</#if></td>
											<td><#if employee.employeeCode ??>${(employee.employeeCode)!""}</#if></td>
											<td><#if employee.department ??>${(employee.department.name) !""}</#if></td>
											<td><#if employee.customer ??>${(employee.customer.name)!""}</#if></td>
											<td><#if employee.email ??>${(employee.email)!""}</#if></td>
											<td>
												<a href="#" title="修改" onclick="editEmployee('${employee.id !""}')"><i class="icon-pencil"></i></a>
												<a href="#" title="删除" onclick="delEmployee('${employee.id !""}')"><i class="icon-trash"></i></a>
												<a href="#" title="查看" onclick="viewEmployee('${employee.id !""}')"><i class="icon-list-alt"></i></a>
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
	function queryEmployee(){
		$('#queryEmployee').attr('action','${contextPath}/employeeManage/EmployeeManage/ope-query/queryEmployee.do');
		$('#queryEmployee').submit();
	}
	//新增
	function addEmployee(){
		$('#queryEmployee').attr('action','${contextPath}/employeeManage/employeeManage/ope-add/addEmployee.do');
		$('#queryEmployee').submit();
	}
	//查看
	function viewEmployee(id){
		$('#queryEmployee').attr('action','${contextPath}/employeeManage/employeeManage/ope-view/viewEmployee.do?id='+id);
		$('#queryEmployee').submit();
	}
	//修改
	function editEmployee(id){
		$('#queryEmployee').attr('action','${contextPath}/employeeManage/employeeManage/ope-update/editEmployee.do?id='+id);
		$('#queryEmployee').submit();
	}
	//删除
	function delEmployee(id){
		basejs.confirm("注意，确定要删除吗？",function(r){
			if(r){
				var url = "${contextPath}/employeeManage/employeeManage/ope-del/delEmployee/"+id+".do";
				$.ajax({
					url:url,
					async:false,
					cache:false,
					type:"DELETE",
					dataType:"text",
					success:function(data){
						if(data="success"){
							queryEmployee();
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