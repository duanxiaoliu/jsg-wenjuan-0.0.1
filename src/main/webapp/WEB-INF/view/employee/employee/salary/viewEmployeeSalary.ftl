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
									<span class="formTitle">薪资年月</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
											${(employeeSalary.salaryDate)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">上月调整</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
										${(employeeSalary.adjustment)!"0"}<#if employeeSalary.adjustment == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">岗位津贴</span>
								</div>
								<div class="col-xs-6"> 
									
									<label class="viewLable">
										${(employeeSalary.allowance)!"0"}<#if employeeSalary.allowance == "">0</#if>
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
									<label class="viewLable">
										${(employeeSalary.rewardItems)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">奖金金额</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
										${(employeeSalary.rewardAmount)!"0"}<#if employeeSalary.rewardAmount == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">奖金时间</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
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
									<label class="viewLable">
										${(employeeSalary.other)!"0"}<#if employeeSalary.other == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">离职补偿金</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
										${(employeeSalary.resignMoney)!"0"}<#if employeeSalary.resignMoney == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">罚款</span>
								</div>
								<div class="col-xs-6">
									
									<label class="viewLable">
										${(employeeSalary.punish)!"0"}<#if employeeSalary.punish == "">0</#if>
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">是否全勤</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
										${(employeeSalary.isFullTimeDic.name)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">应出勤天数</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
										${(employeeSalary.fullTime)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">加班小时数</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
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
									<span class="formTitle">是否有加班费</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
										${(employeeSalary.isFixedDic.name)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">公积金自缴</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
										${(employeeSalary.isSelfDic.name)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">公积金金额</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
										${(employeeSalary.fundMoney)!"0"}<#if employeeSalary.fundMoney == "">0</#if>
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
									<label class="viewLable">
										${(employeeSalary.isComputerDic.name)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">转正事假小时数</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
										${(employeeSalary.personalLeave)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">试用期事假小时数</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
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
									<label style="margin-left:2.7%;margin-top:1%">
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
									<label class="viewLable">
										${(employeeSalary.annualLeave)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">年假说明</span>
								</div>
								<div class="col-xs-9">
									<label class="viewLable">
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
									<span class="formTitle">转正病假小时数</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
										${(employeeSalary.sickLeave)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">试用期病假小时数</span>
								</div>
								<div class="col-xs-6">
									<label class="viewLable">
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
									<label style="margin-left:2.7%;margin-top:1%">
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
									<label class="viewLable">
										${(employeeSalary.marriageLeave)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">婚假说明</span>
								</div>
								<div class="col-xs-9">
									<label class="viewLable">
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
									<label class="viewLable">
										${(employeeSalary.maternityLeave)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">产假说明</span>
								</div>
								<div class="col-xs-9">
									<label class="viewLable">
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
									<label class="viewLable">
										${(employeeSalary.funeralLeave)!""}
									</label>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">丧假说明</span>
								</div>
								<div class="col-xs-9">
									<label class="viewLable">
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
											${(salaryResult.absenceDay)!"0"}<#if salaryResult.absenceDay == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">缺勤扣款:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RabsenceMoney">
											${(salaryResult.absenceMoney)!"0"}<#if salaryResult.absenceMoney == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">加班费及补助:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RoverTimeMoney">
											${(salaryResult.overTimeMoney)!"0"}<#if salaryResult.overTimeMoney == "">0</#if>
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
											${(salaryResult.attendanceMoney)!"0"}<#if salaryResult.attendanceMoney == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">转正工资调整:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="Rpromotion">
											${(salaryResult.promotion)!"0"}<#if salaryResult.promotion == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">奖金:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="Rreward">
											${(salaryResult.reward)!"0"}<#if salaryResult.reward == "">0</#if>
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
											${(salaryResult.allowance)!"0"}<#if salaryResult.allowance == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">餐补:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RmealSupplement">
											${(salaryResult.mealSupplement)!"0"}<#if salaryResult.mealSupplement == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">电脑补助:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RcomputerSupplement">
											${(salaryResult.computerSupplement)!"0"}<#if salaryResult.computerSupplement == "">0</#if>
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
											${(salaryResult.adjustment)!"0"}<#if salaryResult.adjustment == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">离职补偿金:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="Rcompensate">
											${(salaryResult.compensate)!"0"}<#if salaryResult.compensate == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">工资及补偿共:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="Rsum">
											${(salaryResult.sum)!"0"}<#if salaryResult.sum == "">0</#if>
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
											${(salaryResult.socialSecurity)!"0"}<#if salaryResult.socialSecurity == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">公积金:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RfundMoney">
											${(salaryResult.fundMoney)!"0"}<#if salaryResult.fundMoney == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">罚款:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="Rpunish">
											${(salaryResult.punish)!"0"}<#if salaryResult.punish == "">0</#if>
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
											${(salaryResult.other)!"0"}<#if salaryResult.other == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">个税:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="Rtax">
											${(salaryResult.tax)!"0"}<#if salaryResult.tax == "">0</#if>
									</label>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<label class="">实发工资:</label>	
								</div>
								<div class="col-xs-6">
									<label class="" id="RfinnalMoney">
											${(salaryResult.finnalMoney)!"0"}<#if salaryResult.finnalMoney == "">0</#if>
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
									<button type="button" class="btn" onclick="goList('${(employeeSalary.employee.id)!""}')">取消</button>
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
	function goList(employeeId){
		window.location.href="${contextPath}/employeeManage/employeeSalary/ope-query/queryEmployeeSalary.do?flag=1&&employee.id="+employeeId;
	}
</script>
</body>
</html>