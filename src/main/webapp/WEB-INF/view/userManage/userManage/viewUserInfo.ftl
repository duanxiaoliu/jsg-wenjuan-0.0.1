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
				查看用户信息
			</h4>
		</div>
		<hr class="Divider"/>
		<div class="row-fluid">
			<form action="${contextPath}/userManage/userManage/ope-view/viewUserInfo.do" id="viewUser" method="post">		
				<input type="hidden" name="id" id="id" value="${(user.id)!""}"/>		
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">用户名称<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="name" name="name" value="${(user.name)!""}" disabled/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">性别<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<select size="1" id="genderDic" class="col-xs-9" name="genderDic.id" aria-controls="dt_gal" disabled>
										<option value="">请选择...</option>
										<#if user.genderDic ??>
											<#list genderDicList as dic>
												<#if dic.id == user.genderDic.id>
													<option value="${dic.id}" selected="selected">${dic.name}</option>
												<#else>
													<option value="${dic.id}">${dic.name}</option>
												</#if>	
											</#list>
										<#else>
											<#list genderDicList as dic>
												<option value="${dic.id}">${dic.name}</option>
											</#list>
										</#if>
									</select>
								</div>
							</div>
						</div>
						
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">证件类型</span>
								</div>
								<div class="col-xs-6">
									<select size="1" id="cerTypeDic" class="col-xs-9" name="cerTypeDic.id" aria-controls="dt_gal" onchange="changeCheck(this)" disabled>
										<option value="">请选择...</option>
										<#if user.cerTypeDic ??>
											<#list cardtypeDicList as dic>
												<#if dic.id == user.cerTypeDic.id>
													<option value="${dic.id}" selected="selected">${dic.name}</option>
												<#else>
													<option value="${dic.id}">${dic.name}</option>
												</#if>	
											</#list>
										<#else>
											<#list cardtypeDicList as dic>
												<option value="${dic.id}">${dic.name}</option>
											</#list>
										</#if>
									</select>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">证件号码<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="cerNum" name="cerNum" value="${(user.cerNum)!""}"  disabled/>
								</div>
							</div>
						</div>
						
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">出生日期</span>
								</div>
								<div class="col-xs-6">
									<input style="cursor:auto;background-color:#fff;" id="birthday" class="Wdate col-xs-9" name="birthday"  value="${(user.birthday)!""}" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'%y-%M-{%d}',isShowClear:true,readOnly:true})"  disabled/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">联系电话</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="phone" name="phone" value="${(user.phone)!""}" disabled/>
								</div>
							</div>
						</div>

						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">家庭住址</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="address" name="address" value="${(user.address)!""}"  disabled/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">邮件</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="email" name="email" value="${(user.email)!""}"  disabled/>
								</div>
							</div>
						</div>	
						
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">登录名<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="loginName" name="userLogin.loginName" value="${(user.userLogin.loginName)!""}"  disabled/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">密码<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="password" class="col-xs-9" id="password" name="userLogin.password" value="${(user.userLogin.password)!""}"   disabled/>
								</div>
							</div>
						</div>			
						
					</div>
		
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">状态</span>
								</div>
								<div class="col-xs-6">
									<select size="1" id="statusDic" class="col-xs-9"  name="statusDic.id" aria-controls="dt_gal" disabled>
										<option value="">请选择...</option>
										<#if user.statusDic ??>
											<#list statusDicList as dic>
												<#if dic.id == user.statusDic.id>
													<option value="${dic.id}" selected="selected">${dic.name}</option>
												<#else>
													<option value="${dic.id}">${dic.name}</option>
												</#if>	
											</#list>
										<#else>
											<#list statusDicList as dic>
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
									<span class="formTitle">备注</span>
								</div>
								<div class="col-xs-6">
									<textarea name="comments" class="col-xs-12"  id="comments" clos="80" rows="5" disabled> ${(user.comments)!""}</textarea>
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
	//返回列表
	function goList(){
    	window.location.href="${contextPath}/userManage/userManage/ope-query/queryUserInfo.do?flag=1";
    }
</script>
</body>
</html>