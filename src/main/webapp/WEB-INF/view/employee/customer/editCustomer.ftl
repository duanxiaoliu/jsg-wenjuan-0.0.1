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
				<#if customer.id ??>
					修改客户信息
				<#else>
					新增客户信息
				</#if>
			</h4>
		</div>
		<hr class="Divider"/>
		<div class="row-fluid">
			<form action="${contextPath}/employeeManage/customerManage/ope-add/saveCustomer.do" id="saveCustomer" method="post">		
				<input type="hidden" name="id" id="id" value="${(customer.id)!""}"/>		
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">客户名称<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="name" name="name" value="${(customer.name)!""}"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">客户代码<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="code" name="code" value="${(customer.name)!""}"/>
								</div>
							</div>
						</div>
						
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">是否有补助<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<select size="1" id="isMeal" class="col-xs-9" name="isMeal.id" aria-controls="dt_gal">
										<option value="">请选择...</option>
										<#if customer.isMeal ??>
											<#list dicListIsMeal as dic>
												<#if dic.id == customer.isMeal.id>
													<option value="${dic.id}" selected="selected">${dic.name}</option>
												<#else>
													<option value="${dic.id}">${dic.name}</option>
												</#if>	
											</#list>
										<#else>
											<#list dicListIsMeal as dic>
												<option value="${dic.id}">${dic.name}</option>
											</#list>
										</#if>
									</select>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">加班费/小时<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="overTimeMoney" name="overTimeMoney" value="${(customer.overTimeMoney)!""}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">月工作天数<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="workDays" name="workDays" value="${(customer.workDays)!""}"/>
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
									<button type="button" class="btn btn-info" onclick="saveCustomer()">保存</button>
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

//表单验证
    $("#saveCustomer").validate({
		rules:{
			name:{ required:true,
			remote:{
				   		type:"POST",
				   		url:"${contextPath}/employeeManage/customerManage/ope-query/isExistCustomerName.do",
				   		data:{id:function(){return $("#id").val();},
				   			  name:function(){return $("#name").val();}
				   		}
				   }
		   },
			"isMeal.id":{
				required:true
			},
			code:{required:true,
				 remote:{
				   		type:"POST",
				   		url:"${contextPath}/employeeManage/customerManage/ope-query/isExistCustomerCode.do",
				   		data:{id:function(){return $("#id").val();},
				   			  code:function(){return $("#code").val();}
				   		}
				   }
			   },
		   overTimeMoney:{ required:true
		   },
		   workDays:{
		    required:true
		   }
		},
		messages:{
			name:{required:"客户名称不能为空"},
			"isMeal.id":{required:"是否有补助不能为空"},
			"code":{required:"客户不能为空"},
			"overTimeMoney":{required:"加班费不能为空"}
		}
	});
    
	//保存
	function saveCustomer(){
		$("#saveCustomer").attr('action',"${contextPath}/employeeManage/customerManage/ope-add/saveCustomer.do");
		$("#saveCustomer").submit();
	}
	//返回列表
	function goList(){
    	window.location.href="${contextPath}/employeeManage/customerManage/ope-query/queryCustomer.do?flag=1";
    }
</script>
</body>
</html>