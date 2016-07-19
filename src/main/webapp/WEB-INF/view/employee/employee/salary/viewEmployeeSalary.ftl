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
				查看员工薪资信息
			</h4>
		</div>
		<hr class="Divider"/>
		<div class="row-fluid">
			<form action="${contextPath}/employeeManage/employeeManage/ope-add/saveEmployee.do" id="saveEmployeeSalary" method="post">		
				<input type="hidden" name="employee.id" id="employeeId" value="${(employeeSalary.employee.id)!""}"/>		
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">薪资年月<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<label class="">
											${(employeeSalary.salaryDate)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">上月调整</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.adjustment)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">岗位津贴</span>
								</div>
								<div class="col-xs-6"> 
									
									<label class="">
										${(employeeSalary.allowance)!""}
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">奖金内容</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.rewardItems)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">奖金金额</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.rewardAmount)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">奖金时间</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.rewardTime)!""}
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">代扣款</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.other)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">离职补偿金</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.resignMoney)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">罚款</span>
								</div>
								<div class="col-xs-6">
									
									<label class="">
										${(employeeSalary.punish)!""}
									</label>
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
									<label class="">
										${(employeeSalary.isFullTimeDic.name)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">应出勤天数<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.fullTime)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">加班小时数</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.overTime)!""}
									</label>
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
									<label class="">
										${(employeeSalary.isFixedDic.name)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">公积金自缴<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.isSelfDic.name)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">公积金金额</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.fundMoney)!""}
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">电脑补贴</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.isComputerDic.name)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">转正事假小时数</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.personalLeave)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">试用期事假小时数</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.tryPersonalLeave)!""}
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-12">
								<div class="col-xs-3" style="width:11%">
									<span class="formTitle">事假说明</span>
								</div>
								<div class="col-xs-9">
									<label class="">
										${(employeeSalary.personalRemark)!""}
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">年假天数</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.annualLeave)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">年假说明</span>
								</div>
								<div class="col-xs-9">
									<label class="">
										${(employeeSalary.annualRemark)!""}
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">转正病假天数</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.sickLeave)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">试用期病假天数</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.trySickLeave)!""}
									</label>
								</div>
							</div>

						</div>
					</div>	
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-12">
								<div class="col-xs-3" style="width:11%"> 
									<span class="formTitle">病假说明</span>
								</div>
								<div class="col-xs-9">
									<label class="">
										${(employeeSalary.sickRemark)!""}
									</label>
								</div>
							</div>
						</div>
					</div>		
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">婚假天数</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.marriageLeave)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">婚假说明</span>
								</div>
								<div class="col-xs-9">
									<label class="">
										${(employeeSalary.marriageRemark)!""}
									</label>
								</div>
							</div>
						</div>
					</div>	
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">产假天数</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.maternityLeave)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">产假说明</span>
								</div>
								<div class="col-xs-9">
									<label class="">
										${(employeeSalary.maternityRemark)!""}
									</label>
								</div>
							</div>
						</div>
					</div>	
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">丧假天数</span>
								</div>
								<div class="col-xs-6">
									<label class="">
										${(employeeSalary.funeralLeave)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">丧假说明</span>
								</div>
								<div class="col-xs-9">
									<label class="">
										${(employeeSalary.funeralRemark)!""}
									</label>
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
									<label class="" id="RattendanceMoney">
											${(salaryResult.attendanceMoney)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">转正工资调整:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="Rpromotion">
											${(salaryResult.promotion)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">奖金:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="Rreward">
											${(salaryResult.reward)!""}
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
									<label class="" id="Rallowance">
											${(salaryResult.allowance)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">餐补:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RmealSupplement">
											${(salaryResult.mealSupplement)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">电脑补助:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RcomputerSupplement">
											${(salaryResult.computerSupplement)!""}
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
									<label class="" id="Radjustment">
											${(salaryResult.adjustment)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">离职补偿金:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="Rcompensate">
											${(salaryResult.compensate)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">工资及补偿总额:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="Rsum">
											${(salaryResult.sum)!""}
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
									<label class="" id="RsocialSecurity">
											${(salaryResult.socialSecurity)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">公积金:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RfundMoney">
											${(salaryResult.fundMoney)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">罚款:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="Rpunish">
											${(salaryResult.punish)!""}
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
									<label class="" id="Rother">
											${(salaryResult.other)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">个税:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="Rtax">
											${(salaryResult.tax)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">实发工资:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RfinnalMoney">
											${(salaryResult.finnalMoney)!""}
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
	//返回
	function goList(){
		window.location.href="${contextPath}/employeeManage/employeeSalary/ope-query/queryEmployeeSalary.do?flag=1";
	}
</script>
</body>
</html>