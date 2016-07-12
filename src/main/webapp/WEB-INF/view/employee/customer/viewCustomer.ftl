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
				查看客户信息
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
									<span class="formTitle">客户名称</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="name" name="name" value="${(customer.name)!""}" disabled/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">客户代码</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="code" name="code" value="${(customer.name)!""}" disabled/>
								</div>
							</div>
						</div>
						
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">是否有补助</span>
								</div>
								<div class="col-xs-6">
									<select size="1" id="isMeal" class="col-xs-9" name="isMeal.id" aria-controls="dt_gal" onchange="changeCheck(this)" disabled>
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
									<span class="formTitle">加班费</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="overTimeMoney" name="overTimeMoney" value="${(customer.overTimeMoney)!""}" disabled/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">月工作天数</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="workDays" name="workDays" value="${(customer.workDays)!""}"  disabled/>
								</div>
							</div>
						</div>
					</div>
					<#if customer.isMeal ?? && customer.isMeal.name == '是'>

						<div class="col-xs-12">
							<div class="row-fluid">
								<div class="col-xs-6">
									<div class="col-xs-3">
										<span class="formTitle">饭费补助</span>
									</div>
									<div class="col-xs-6">
										<input type="text" class="col-xs-9" id="food" name="food" value="${(allowance.food)!""}" disabled/>/天
									</div>
								</div>
								<div class="col-xs-6">
									<div class="col-xs-3">
										<span class="formTitle">电脑补助</span>
									</div>
									<div class="col-xs-6">
										<input type="text" class="col-xs-9" id="computer" name="computer" value="${(allowance.computer)!""}" disabled/>/天
									</div>
								</div>
							</div>
							
							<div class="row-fluid">
								<div class="col-xs-6">
									<div class="col-xs-3">
										<span class="formTitle">交通补助</span>
									</div>
									<div class="col-xs-6">
										<input type="text" class="col-xs-9" id="traffic" name="traffic" value="${(allowance.traffic)!""}" disabled/>/天
									</div>
								</div>
								<div class="col-xs-6">
									<div class="col-xs-3">
										<span class="formTitle">住房补助</span>
									</div>
									<div class="col-xs-6">
										<input type="text" class="col-xs-9" id="housing" name="housing" value="${(allowance.housing)!""}" disabled/>/月
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12">
							<div class="row-fluid">
								<div class="col-xs-6">
									<div class="col-xs-3">
										<span class="formTitle">其它补助</span>
									</div>
									<div class="col-xs-6">
										<input type="text" class="col-xs-9" id="otherDay" name="otherDay" value="${(allowance.otherDay)!""}" disabled/>/天
									</div>
								</div>
								<div class="col-xs-6">
									<div class="col-xs-3">
										<span class="formTitle">其它补助</span>
									</div>
									<div class="col-xs-6">
										<input type="text" class="col-xs-9" id="otherMouth" name="otherMouth" value="${(allowance.otherMouth)!""}" disabled/>/月
									</div>
								</div>
							</div>
						</div>
					</#if>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">备注</span>
								</div>
								<div class="col-xs-6">
									<textarea name="comments" class="col-xs-12"  id="comments" clos="80" rows="5" disabled> ${(customer.comments)!""}</textarea>
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
									<button type="button" class="btn" onclick="goList()">返回</button>
								</div>
							</div>
						</div>
					</div>
			</form>
		</div>
	</div>
</div>
<script>
	//返回列表
	function goList(){
    	window.location.href="${contextPath}/employeeManage/customerManage/ope-query/queryCustomer.do?flag=1";
    }
</script>
</body>
</html>