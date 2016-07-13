<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${contextPath}/js/My97DatePicker/skin/WdatePicker.css"/>
    <script src="${contextPath}/js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<div id="contentwrapper">
	<div class="main_content">
		<div>
			<h4 class="pageTitle">
				<#if employee.id ??>
					修改员工信息
				<#else>
					新增员工信息
				</#if>
			</h4>
		</div>
		<hr class="Divider"/>
		<div class="row-fluid">
			<form action="${contextPath}/employeeManage/employeeManage/ope-add/saveEmployee.do" id="saveEmployee" method="post">		
				<input type="hidden" name="id" id="id" value="${(employee.id)!""}"/>		
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">员工名称<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="employeeName" name="employeeName" value="${(employee.employeeName)!""}"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">员工代码<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="employeeCode" name="employeeCode" value="${(employee.employeeCode)!""}"/>
								</div>
							</div>
						</div>
						
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">所属部门<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
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
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">所在客户<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<select size="1" id="customer" class="col-xs-9" name="customer.id" aria-controls="dt_gal" onchange="changeCheck(this)">
										<option value="">请选择...</option>
										<#if employee.customer ??>
											<#list customerList as customer>
												<#if dic.id == employee.customer.id>
													<option value="${customer.id}" selected="selected">${customer.name}</option>
												<#else>
													<option value="${customer.id}">${customer.name}</option>
												</#if>	
											</#list>
										<#else>
											<#list customerList as customer>
												<option value="${customer.id}">${customer.name}</option>
											</#list>
										</#if>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">邮箱</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="email" name="email" value="${(employee.email)!""}"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">户口性质<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<select size="1" id="register" class="col-xs-9" name="register.id" aria-controls="dt_gal" onchange="changeCheck(this)">
										<option value="">请选择...</option>
										<#if employee.register ??>
											<#list registerList as register>
												<#if dic.id == employee.register.id>
													<option value="${register.id}" selected="selected">${register.name}</option>
												<#else>
													<option value="${register.id}">${register.name}</option>
												</#if>	
											</#list>
										<#else>
											<#list registerList as register>
												<option value="${register.id}">${register.name}</option>
											</#list>
										</#if>
									</select>								
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">基本工资<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="salary" name="salary" value="${(employee.salary)!""}"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">试用期是否全薪<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<select size="1" id="probationState" class="col-xs-9" name="probationState.id" aria-controls="dt_gal" onchange="changeCheck(this)">
										<option value="">请选择...</option>
										<#if employee.probationState ??>
											<#list YNDicList as dic>
												<#if dic.id == employee.probationState.id>
													<option value="${dic.id}" selected="selected">${dic.name}</option>
												<#else>
													<option value="${dic.id}">${dic.name}</option>
												</#if>	
											</#list>
										<#else>
											<#list YNDicList as dic>
												<option value="${dic.id}">${dic.name}</option>
											</#list>
										</#if>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">入职时间<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input style="cursor:auto;background-color:#fff;" id="entryTime" class="Wdate col-xs-9" name="entryTime"  value="${(employee.entryTime)!""}" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'%y-%M-{%d}',isShowClear:true,readOnly:true})"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">是否在职<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<select size="1" id="isJob" class="col-xs-9" name="isJob.id" aria-controls="dt_gal" onchange="addQuitTimeCheck()">
										<option value="">请选择...</option>
										<#if employee.register ??>
											<#list YNDicList as dic>
												<#if dic.id == employee.register.id>
													<option value="${dic.id}" selected="selected">${dic.name}</option>
												<#else>
													<option value="${dic.id}">${dic.name}</option>
												</#if>	
											</#list>
										<#else>
											<#list YNDicList as dic>
												<option value="${dic.id}">${dic.name}</option>
											</#list>
										</#if>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">离职时间</span>
								</div>
								<div class="col-xs-6">
									<input style="cursor:auto;background-color:#fff;" id="quitTime" class="Wdate col-xs-9" name="quitTime"  value="${(employee.quitTime)!""}" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'%y-%M-{%d}',isShowClear:true,readOnly:true})" disabled />
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
									<textarea name="comments" class="col-xs-12"  id="comments" clos="80" rows="5"> ${(customer.comments)!""}</textarea>
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
									<button type="button" class="btn btn-info" onclick="saveEmployee()">保存</button>
									<button type="button" class="btn" onclick="goList()">取消</button>
								</div>
							</div>
						</div>
					</div>
			</form>
		</div>
	</div>
</div>
<script>
$(
	function(){
		addQuitTimeCheck();
	}
);
//表单验证
    $("#saveEmployee").validate({
		rules:{
			employeeName:{ required:true
		   },
			employeeCode:{
				required:true,
				remote:{
				   		type:"POST",
				   		url:"${contextPath}/employeeManage/employeeManage/ope-query/isExistEmployeeCode.do",
				   		data:{id:function(){return $("#id").val();},
				   			  code:function(){return $("#employeeCode").val();}
				   		}
				   }
			},
			"department.id":{required:true
			   },
		    "customer.id":{ required:true
		      },
		   email:{
		    email:true
		   },
		   "probationState.id":{
		   	required:true,
		   },
		   salary:{
		   	required:true,
		   	number:true,
		   	min:0,
		   	maxlength:32
		   },
		   "register.id":{
		   	required:true
		   },
		   entryTime:{
		   	required:true
		   },
		   "isJob.id":{
		   	required:true
		   },
		   quitTime:{
		   	quitTimeVal:true
		   }
		   
		},
		messages:{
			employeeName:{required:"员工名称不能为空"},
			employeeCode:{required:"员工代码不能为空"},
			"department.id":{required:"所在部门不能为空"},
			"customer.id":{required:"所在客户不能为空"},
			"register.id":{required:"户口类型不能为空"},
			email:{required:"请填写正确的邮箱"},
			"probationState.id":{required:"试用期是否全薪不能为空"},
			salary:{required:"基本工资不能为空"},
			entryTime:{required:"入职时间不能为空"},
			"isJob.id":{required:"是否在职不能为空"}
		}
	});
    //添加离职时间验证
    function addQuitTimeCheck(){
    	var isJob = $("#isJob").find("option:selected").text();
    	if(isJob != null && isJob!="" && isJob=='否'){
    		$("#quitTime").attr('disabled',false);
    		 jQuery.validator.addMethod("quitTimeVal", function(value, element) {
			      var value = $('#quitTime').val();
			      if(value=="" || value==null){  
			          return false;  
			      }else{  
			          return true;  
			      }  
			  
			  }, "离职时间不能为空!");
    	}else{
    		$("#quitTime").attr('disabled',true);
    	}
    }
	//保存
	function saveEmployee(){
		$("#saveEmployee").attr('action',"${contextPath}/employeeManage/employeeManage/ope-save/saveEmployee.do");
		$("#saveEmployee").submit();
	}
	//返回列表
	function goList(){
    	window.location.href="${contextPath}/employeeManage/EmployeeManage/ope-query/queryEmployee.do?flag=1";
    }
</script>
</body>
</html>