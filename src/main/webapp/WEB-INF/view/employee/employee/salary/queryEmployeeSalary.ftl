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
	<link rel="stylesheet" href="${contextPath}/js/My97DatePicker/skin/WdatePicker.css"/>
    <script src="${contextPath}/js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<div id="contentwrapper">
	<div class="main_content">
		<div class="row-fluid">
			<form id="queryEmployeeSalary" action="${contextPath}/employeeManage/employeeSalary/ope-query/queryEmployeeSalary.do" method="post">				
				<input type="hidden" id="employeeId" name="employee.id" value="${(salaryResult.employee.id)!""}"/>
				<div class="col-xs-12">
					<div class="row-fluid">
						<div class="col-xs-6">
							<span class="formTitle">薪资年月</span>
							<input style="cursor:auto;background-color:#fff;height:30px;" id="salaryDate" class="Wdate col-xs-5" name="salaryDate"  value="${(salaryResult.salaryDate)!""}" onfocus="WdatePicker({dateFmt:'yyyy-MM',isShowClear:true,readOnly:true})"/>
						</div>
					</div>
				</div>
				<div class="btnCenter">
					<button type="button" class="btn btn-info" onclick="queryEmployeeSalary()">查询</button>
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
										<button class="btn btn-info" type="button" onclick="addEmployeeSalary('${(salaryResult.employee.id)!""}')">新增</button>
										<button class="btn btn-info" type="button" onclick="exportEmployeeSalary()">导出</button>
									</div>
								</div>
							</div>
						</div>
						
						<table class="table table-bordered table-striped tablecut" id="smpl_tbl">
							<thead>
								<tr>
									<th width="10%">序号</th>
									<th>薪资年月</th>
									<th>缺勤扣款</th>
									<th>出勤工资</th>
									
									<th>工资及补贴总额</th>
									<th>代扣款</th>
									<th>实发工资</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<#if page ??>
									<#list page.result as salary>
										<tr>
											<td>${salary_index+1}</td>
											<td>${salary.salaryDate !""}</td>
											<td>${(salary.absenceMoney)!""}</td>
											<td>${(salary.attendanceMoney) !""}</td>
											<td>${(salary.sum)!""}</td>
											<td>${(salary.other)!""}</td>
											<td>${(salary.finnalMoney)!""}</td>
											<td>
												<a href="#" title="修改" onclick="editEmployeeSalary('${(salary.employee.id) !""}','${salary.salaryDate !""}')"><i class="icon-pencil"></i></a>
												<a href="#" title="删除" onclick="delEmployeeSalary('${(salary.employee.id) !""}','${salary.salaryDate !""}')"><i class="icon-trash"></i></a>
												<a href="#" title="查看" onclick="viewEmployeeSalary('${(salary.employee.id) !""}','${salary.salaryDate !""}')"><i class="icon-list-alt"></i></a>
											</td>
										</tr>
									</#list>
								</#if>
							</tbody>
						</table>
						<#include "../../../page/pageTag.ftl">
					</div>
 				</div>
			</div>
			
		</div>
	</div>
</div>
<script>
	//查询
	function queryEmployeeSalary(){
		$('#queryEmployeeSalary').attr('action','${contextPath}/employeeManage/employeeSalary/ope-query/queryEmployeeSalary.do');
		$('#queryEmployeeSalary').submit();
	}
	//新增
	function addEmployeeSalary(employeeId){
		$('#queryEmployeeSalary').attr('action','${contextPath}/employeeManage/employeeSalary/ope-add/addEmployeeSalary.do?employeeId='+employeeId);
		$('#queryEmployeeSalary').submit();
	}
	//查看
	function viewEmployeeSalary(employeeId,salaryDate){
		$('#queryEmployeeSalary').attr('action','${contextPath}/employeeManage/employeeSalary/ope-view/viewEmployeeSalary.do?employeeId='+employeeId+'&salaryDate='+salaryDate);
		$('#queryEmployeeSalary').submit();
	}
	//修改
	function editEmployeeSalary(employeeId,salaryDate){
		$('#queryEmployeeSalary').attr('action','${contextPath}/employeeManage/employeeSalary/ope-update/editEmployeeSalary.do?employeeId='+employeeId+'&salaryDate='+salaryDate);
		$('#queryEmployeeSalary').submit();
	}
	//删除
	function delEmployeeSalary(employeeId,salaryDate){
		basejs.confirm("注意，确定要删除吗？",function(r){
			if(r){
				var url = "${contextPath}/employeeManage/employeeSalary/ope-del/delEmployeeSalary/"+employeeId+"/"+salaryDate+".do";
				$.ajax({
					url:url,
					async:false,
					cache:false,
					type:"DELETE",
					dataType:"text",
					success:function(data){
						if(data="success"){
							queryEmployeeSalary();
						}else{
							alert("无法完成删除操作！");
						}
					}
				});
			}
		});
	}
	//导出
	function exportEmployeeSalary(){
	
		$('#queryEmployeeSalary').attr('action','${contextPath}/employeeManage/employeeSalary/ope-query/exportEmployeeSalary.do?employeeId='+employeeId+'&salaryDate='+salaryDate);
		$('#queryEmployeeSalary').submit();
	}
</script>
</body>
</html>