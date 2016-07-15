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
				<#if employeeSalary.id ??>
					修改员工薪资信息
				<#else>
					新增员工薪资信息
				</#if>
			</h4>
		</div>
		<hr class="Divider"/>
		<div class="row-fluid">
			<form action="${contextPath}/employeeManage/employeeManage/ope-add/saveEmployee.do" id="saveEmployee" method="post">		
				<input type="hidden" name="employee.id" id="employeeId" value="${(employeeSalary.employee.id)!""}"/>		
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">薪资年月<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input style="cursor:auto;background-color:#fff;height:27px;" id="salaryDate" class="Wdate col-xs-9" name="salaryDate"  value="${(employeeSalary.salaryDate)!""}" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'%y-%M-{%d}',isShowClear:true,readOnly:true})"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">上月调整<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">岗位津贴<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="allowance" name="allowance" value="${(employeeSalary.allowance)!""}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">奖金内容<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">奖金金额<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">奖金时间<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="allowance" name="allowance" value="${(employeeSalary.allowance)!""}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">代扣款<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">离职补偿金<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">罚款<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="allowance" name="allowance" value="${(employeeSalary.allowance)!""}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">是否全勤<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">应出勤天数<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">加班小时数<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="allowance" name="allowance" value="${(employeeSalary.allowance)!""}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">是否有加班费<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">公积金自缴<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">公积金金额<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="allowance" name="allowance" value="${(employeeSalary.allowance)!""}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">电脑补贴<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">转正事假小时数<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">试用期事假小时数<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="allowance" name="allowance" value="${(employeeSalary.allowance)!""}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-12">
								<div class="col-xs-3" style="width:11%">
									<span class="formTitle">事假说明<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-9">
									<input type="text" class="col-xs-10" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">年假天数<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">年假说明<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-9">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">转正病假小时数<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">试用期病假小时数<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>

						</div>
					</div>	
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-12">
								<div class="col-xs-3" style="width:11%"> 
									<span class="formTitle">病假说明<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-9">
									<input type="text" class="col-xs-10" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
						</div>
					</div>		
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">婚假天数<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">婚假说明<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-9">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
						</div>
					</div>	
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">产假天数<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">产假说明<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-9">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
						</div>
					</div>	
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">丧假天数<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">丧假说明<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-9">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
						</div>
					</div>	
					<div class="col-xs-12">	
						<hr class="Divider"/>	
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">缺勤天数:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RabsenceDay">
											${(salaryResult.absenceDay)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">缺勤扣款:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RabsenceMoney">
											${(salaryResult.absenceMoney)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">加班费及补助:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RoverTimeMoney">
											${(salaryResult.overTimeMoney)!""}
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">出勤工资:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RabsenceDay">
											${(salaryResult.absenceDay)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">转正工资调整:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RabsenceMoney">
											${(salaryResult.absenceMoney)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">奖金:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RoverTimeMoney">
											${(salaryResult.overTimeMoney)!""}
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">岗位津贴:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RabsenceDay">
											${(salaryResult.absenceDay)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">餐补:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RabsenceMoney">
											${(salaryResult.absenceMoney)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">电脑补助:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RoverTimeMoney">
											${(salaryResult.overTimeMoney)!""}
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">上月调整:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RabsenceDay">
											${(salaryResult.absenceDay)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">离职补偿金:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RabsenceMoney">
											${(salaryResult.absenceMoney)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">工资及补偿总额:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RoverTimeMoney">
											${(salaryResult.overTimeMoney)!""}
									</label>
								</div>
							</div>
						</div>
					</div>		
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">社保:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RabsenceDay">
											${(salaryResult.absenceDay)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">公积金:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RabsenceMoney">
											${(salaryResult.absenceMoney)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">罚款:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RoverTimeMoney">
											${(salaryResult.overTimeMoney)!""}
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">代扣款:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RabsenceDay">
											${(salaryResult.absenceDay)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">个税:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RabsenceMoney">
											${(salaryResult.absenceMoney)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">实发工资:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RoverTimeMoney">
											${(salaryResult.overTimeMoney)!""}
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									
								</div>
								<div class="col-xs-6" style="margin-top:20px;margin-bottom:70px;">
									<button type="button" class="btn btn-info" onclick="saveEmployeeSalary('1')">保存</button>
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

</script>
</body>
</html>