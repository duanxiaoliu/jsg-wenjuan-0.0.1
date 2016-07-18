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
			<form action="${contextPath}/employeeManage/employeeManage/ope-add/saveEmployee.do" id="saveEmployeeSalary" method="post">		
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
									<span class="formTitle">上月调整</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="adjustment" name="adjustment" value="${(employeeSalary.adjustment)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">岗位津贴</span>
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
									<span class="formTitle">奖金内容</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="rewardItems" name="rewardItems" value="${(employeeSalary.rewardItems)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">奖金金额</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="rewardAmount" name="rewardAmount" value="${(employeeSalary.rewardAmount)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">奖金时间</span>
								</div>
								<div class="col-xs-6">
									<input style="cursor:auto;background-color:#fff;height:27px;" id="rewardTime" class="Wdate col-xs-9" name="rewardTime"  value="${(employeeSalary.rewardTime)!""}" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'%y-%M-{%d}',isShowClear:true,readOnly:true})"/>
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
									<input type="text" class="col-xs-9" id="other" name="other" value="${(employeeSalary.other)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">离职补偿金</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="resignMoney" name="resignMoney" value="${(employeeSalary.resignMoney)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">罚款</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="punish" name="punish" value="${(employeeSalary.punish)!""}"/>
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
									<#if employeeSalary.isFullTimeDic ?? >
										<#list YNListDic as dic>
											<#if dic.id==employeeSalary.isFullTimeDic.id >
												<input type="radio" id="isFullTime_${dic_index}" name="isFullTimeDic.id"  value='${dic.id}' checked/>
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<#else>
												<input type="radio" id="isFullTime_${dic_index}" name="isFullTimeDic.id"  value='${dic.id}' />
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</#if>
										</#list>
									<#else>
										<#list YNListDic as dic>
											<#if dic.name=='是'>
												<input type="radio" id="isFullTime_${dic_index}" name="isFullTimeDic.id"  value='${dic.id}' checked/>
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<#else>
												<input type="radio" id="isFullTime_${dic_index}" name="isFullTimeDic.id"  value='${dic.id}' />
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</#if>
											
										</#list>
									</#if>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">应出勤天数<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="fullTime" name="fullTime" value="${(employeeSalary.fullTime)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">加班小时数</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="overTime" name="overTime" value="${(employeeSalary.overTime)!""}"/>
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
									<#if employeeSalary.isFixedDic?? >
										<#list YNListDic as dic>
											<#if dic.id==employeeSalary.isFixedDic.id >
												<input type="radio" id="isFixed_${dic_index}" name="isFixedDic.id"  value='${dic.id}' checked/>
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<#else>
												<input type="radio" id="isFixed_${dic_index}" name="isFixedDic.id"  value='${dic.id}' />
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</#if>
										</#list>
									<#else>
										<#list YNListDic as dic>
											<#if dic.name='是'>
												<input type="radio" id="isFixed_${dic_index}" name="isFixedDic.id"  value='${dic.id}' checked/>
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<#else>
												<input type="radio" id="isFixed_${dic_index}" name="isFixedDic.id"  value='${dic.id}' />
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</#if>
										</#list>
									</#if>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">公积金自缴<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<#if employeeSalary.isSelfDic?? >
										<#list YNListDic as dic>
											<#if dic.id==employeeSalary.isSelfDic.id >
												<input type="radio" id="isSelf_${dic_index}" name="isSelfDic.id"  value='${dic.id}' checked/>
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<#else>
												<input type="radio" id="isSelf_${dic_index}" name="isSelfDic.id"  value='${dic.id}' />
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</#if>
										</#list>
									<#else>
										<#list YNListDic as dic>
											<#if dic.name=='是'>
												<input type="radio" id="isSelf_${dic_index}" name="isSelfDic.id"  value='${dic.id}' checked/>
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<#else>
												<input type="radio" id="isSelf_${dic_index}" name="isSelfDic.id"  value='${dic.id}' />
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</#if>
										</#list>
									</#if>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">公积金金额</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="fundMoney" name="fundMoney" value="${(employeeSalary.fundMoney)!""}"/>
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
									<#if employeeSalary.isComputerDic?? >
										<#list YNListDic as dic>
											<#if dic.id==employeeSalary.isComputerDic.id >
												<input type="radio" id="isComputer_${dic_index}" name="isComputerDic.id"  value='${dic.id}' checked/>
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<#else>
												<input type="radio" id="isComputer_${dic_index}" name="isComputerDic.id"  value='${dic.id}' />
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</#if>
										</#list>
									<#else>
										<#list YNListDic as dic>
											<#if dic.name=='是'>
												<input type="radio" id="isComputer_${dic_index}" name="isComputerDic.id"  value='${dic.id}' checked/>
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<#else>
												<input type="radio" id="isComputer_${dic_index}" name="isComputerDic.id"  value='${dic.id}' />
												${dic.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</#if>
											
										</#list>
									</#if>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">转正事假小时数</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="personalLeave" name="personalLeave" value="${(employeeSalary.personalLeave)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">试用期事假小时数</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="tryPersonalLeave" name="tryPersonalLeave" value="${(employeeSalary.tryPersonalLeave)!""}"/>
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
									<input type="text" class="col-xs-10" id="personalRemark" name="personalRemark" value="${(employeeSalary.personalRemark)!""}"/>
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
									<input type="text" class="col-xs-9" id="annualLeave" name="annualLeave" value="${(employeeSalary.annualLeave)!""}"/>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">年假说明</span>
								</div>
								<div class="col-xs-9">
									<input type="text" class="col-xs-9" id="annualRemark" name="annualRemark" value="${(employeeSalary.annualRemark)!""}"/>
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
									<input type="text" class="col-xs-9" id="sickLeave" name="sickLeave" value="${(employeeSalary.sickLeave)!""}"/>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="col-xs-5">
									<span class="formTitle">试用期病假天数</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="trySickLeave" name="trySickLeave" value="${(employeeSalary.trySickLeave)!""}"/>
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
									<input type="text" class="col-xs-10" id="sickRemark" name="sickRemark" value="${(employeeSalary.sickRemark)!""}"/>
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
									<input type="text" class="col-xs-9" id="marriageLeave" name="marriageLeave" value="${(employeeSalary.marriageLeave)!""}"/>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">婚假说明</span>
								</div>
								<div class="col-xs-9">
									<input type="text" class="col-xs-9" id="marriageRemark" name="marriageRemark" value="${(employeeSalary.marriageRemark)!""}"/>
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
									<input type="text" class="col-xs-9" id="maternityLeave" name="maternityLeave" value="${(employeeSalary.maternityLeave)!""}"/>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">产假说明</span>
								</div>
								<div class="col-xs-9">
									<input type="text" class="col-xs-9" id="maternityRemark" name="maternityRemark" value="${(employeeSalary.maternityRemark)!""}"/>
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
									<input type="text" class="col-xs-9" id="funeralLeave" name="funeralLeave" value="${(employeeSalary.funeralLeave)!""}"/>
								</div>
							</div>
							<div class="col-xs-8">
								<div class="col-xs-3" style="width: 20%;">
									<span class="formTitle">丧假说明</span>
								</div>
								<div class="col-xs-9">
									<input type="text" class="col-xs-9" id="funeralRemark" name="funeralRemark" value="${(employeeSalary.funeralRemark)!""}"/>
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
	//表单验证
	$("document").ready(function(){
		$('#saveEmployeeSalary').compValidate({
			onkeyup: false,
			onfocusout: function(element) {if ($(element).val()) $(element).valid(); },
			debug:false,
			errorClass: 'error',
			validClass: 'valid',
			focusCleanup:true,
			focusInvalid:false,
			rules: {
				salaryDate: { 
					required: true,
					remote:{
						type:"POST",
						url:"${rc.contextPath}/salary/employeeSalary/check/checkEmployeeSalaryIsExist.do",
						data:{
							id:function(){return $('#id').val();},
							employeeId:function(){return $('#empId').val();},
							salaryDate:function(){return $('#salaryDate').val();}
						}
					}
				},
				adjustment: { 
					number: true,
					range:[-99999,+99999]
				},
				allowance: { 
					number: true,
					range:[-99999,+99999]
				},
				rewardItems:{
					maxlength:30
				},
				rewardAmount:{
					number: true,
					range:[-99999,+99999]
				},
				other: { 
					number: true,
					range:[-99999,+99999]
				},
				resignMoney: { 
					number: true,
					range:[-99999,+99999]
				},
				punish: { 
					number: true,
					range:[-99999,+99999]
				},
				fullTime: { 
					required: true,
					digits:true,
					range:[1,31]
				},
				overTime: { 
					number: true,
					range:[0,500]
				},
				fundMoney: { 
					number: true,
					range:[-99999,+99999]
				},
				personalLeave: { 
					digits:true,
					range:[0,250]
				},
				tryPersonalLeave:{
					digits:true,
					range:[0,250]
				},
				personalRemark: { 
					maxlength:90
				},
				annualLeave: { 
					digits:true,
					range:[0,30]
				},
				annualRemark: { 
					maxlength:90
				},
				sickLeave: { 
					digits:true,
					range:[0,250]
				},
				trySickLeave:{
					digits:true,
					range:[0,250]
				},
				sickRemark: { 
					maxlength:90
				},
				marriageLeave: { 
					digits:true,
					range:[0,30]
				},
				marriageRemark: { 
					maxlength:90
				},
				maternityLeave: { 
					digits:true,
					range:[0,30]
				},
				maternityRemark: { 
					maxlength:90
				},
				funeralLeave: { 
					digits:true,
					range:[0,30]
				},
				funeralRemark: { 
					maxlength:90
				},
			},
			messages: {
				salaryDate: {required:$.format("薪资年月不能为空."),
								remote:$.format("本薪资年月已合算工资")},
				adjustment: {number:$.format("必须输入合法的数字（负数，小数）.")},
				allowance: {number:$.format("必须输入合法的数字（负数，小数）.")},
				rewardAmount: {number:$.format("必须输入合法的数字（负数，小数）.")},
				other: {number:$.format("必须输入合法的数字（负数，小数）.")},
				resignMoney: {number:$.format("必须输入合法的数字（负数，小数）.")},
				punish: {number:$.format("必须输入合法的数字（负数，小数）.")},
				overTime: {number:$.format("必须输入合法的数字（负数，小数）.")},
				fundMoney: {number:$.format("必须输入合法的数字（负数，小数）.")},
				personalLeave: {number:$.format("必须输入合法的数字（负数，小数）.")},
				tryPersonalLeave: {number:$.format("必须输入合法的数字（负数，小数）.")},
				annualLeave: {number:$.format("必须输入合法的数字（负数，小数）.")},
				sickLeave: {number:$.format("必须输入合法的数字（负数，小数）.")},
				trySickLeave: {number:$.format("必须输入合法的数字（负数，小数）.")},
				marriageLeave: {number:$.format("必须输入合法的数字（负数，小数）.")},
				maternityLeave: {number:$.format("必须输入合法的数字（负数，小数）.")},
				funeralLeave: {number:$.format("必须输入合法的数字（负数，小数）.")},
				fullTime: {required:$.format("应出勤天数不能为空."),
						   number:$.format("必须输入合法的数字（负数，小数）.")}
			},
			highlight: function(element) {
				$(element).closest('div').addClass("f_error");
			},
			unhighlight: function(element) {
				$(element).closest('div').removeClass("f_error");
			},
			errorPlacement: function(error, element) {
				$(element).closest('div').append(error);
			}
		});
	});
</script>
</body>
</html>