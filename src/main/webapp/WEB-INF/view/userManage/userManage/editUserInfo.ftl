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
				<#if user.id ??>
					修改用户信息
				<#else>
					新增用户信息
				</#if>
			</h4>
		</div>
		<hr class="Divider"/>
		<div class="row-fluid">
			<form action="${contextPath}/userManage/userManage/ope-add/saveUserInfo.do" id="saveUser" method="post">		
				<input type="hidden" name="id" id="id" value="${(user.id)!""}"/>		
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">用户名称<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="name" name="name" value="${(user.name)!""}"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">性别<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<select size="1" id="genderDic" class="col-xs-9" name="genderDic.id" aria-controls="dt_gal">
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
									<select size="1" id="cerTypeDic" class="col-xs-9" name="cerTypeDic.id" aria-controls="dt_gal" onchange="changeCheck(this)">
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
									<input type="text" class="col-xs-9" id="cerNum" name="cerNum" value="${(user.cerNum)!""}"/>
								</div>
							</div>
						</div>
						
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">出生日期</span>
								</div>
								<div class="col-xs-6">
									<input style="cursor:auto;background-color:#fff;" id="birthday" class="Wdate col-xs-9" name="birthday"  value="${(user.birthday)!""}" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'%y-%M-{%d}',isShowClear:true,readOnly:true})"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">联系电话</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="phone" name="phone" value="${(user.phone)!""}"/>
								</div>
							</div>
						</div>

						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">家庭住址</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="address" name="address" value="${(user.address)!""}"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">邮件</span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="email" name="email" value="${(user.email)!""}"/>
								</div>
							</div>
						</div>	
						
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">登录名<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="loginName" name="userLogin.loginName" value="${(user.userLogin.loginName)!""}"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">密码<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="password" class="col-xs-9" id="password" name="userLogin.password" value="${(user.userLogin.password)!""}"/>
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
									<select size="1" id="statusDic" class="col-xs-9"  name="statusDic.id" aria-controls="dt_gal">
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
									<textarea name="comments" class="col-xs-12"  id="comments" clos="80" rows="5"> ${(user.comments)!""}</textarea>
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
									<button type="button" class="btn btn-info" onclick="saveUser()">保存</button>
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
$(function(){
	initFormValid();
	changeCheck($("#cerTypeDic"));
});
//验证身份证
function changeCheck(obj){
	var flag = $(obj).find("option:selected").text();
	switch(flag){
		case '护照':
			//验证护照
			jQuery.validator.addMethod("certificateCheck", function(value,element){return checkPassPosrt(value,element)}, "请输入正确格式护照证号!");
		break;
		case "军官证":
			//验证军官证
			jQuery.validator.addMethod("certificateCheck", function(value,element){return checkOfficerCard(value,element)}, "请输入正确格式军官证号!");
		break;
		case "身份证":	
		//数据校验身份证号
		jQuery.validator.addMethod("certificateCheck", function(value,element){return checkCertificate(value,element)}, "请输入正确格式身份证号!");
		break;	
		default:
		//为空时验证
		jQuery.validator.addMethod("certificateCheck", function(value,element){return checkLength(value,element)}, "请选择证件类型，并填写正确的证件号码!");
	
	}
}
//初始化验证
function initFormValid(){
//表单验证
    $("#saveUser").validate({
		rules:{
			name:{ required:true
		   },
			"genderDic.id":{
				required:true
			},
			cerNum:{required:true,
					certificateCheck:true,
					remote:{
				   		type:"POST",
				   		url:"${contextPath}/userManage/userManage/ope-check/checkUserExist.do",
				   		data:{id:function(){return $("#id").val();},
				   			  cerNum:function(){return $("#cerNum").val();}
				   		}
				   }
			   },
		   "userLogin.loginName":{ required:true,
		   		remote:{
				   		type:"POST",
				   		url:"${contextPath}/userManage/userManage/ope-check/checkUserLoginNameExist.do",
				   		data:{id:function(){return $("#id").val();},
				   			  loginName:function(){return $("#loginName").val();}
				   		}
				   }
		   },
		  "userLogin.password":{ required:true
		   },
		   "statusDic.id":{
		   	required:true
		   }
		},
		messages:{
			name:{required:"用户名称不能为空"},
			"statusDic.id":{required:"状态不能为空"},
			"genderDic.id":{required:"性别不能为空"},
			"userLogin.loginName":{required:"登录名不能为空",
						remote:"登录名已存在"},
			"userLogin.password":{required:"密码不能为空"},
			cerNum:{required:"证件号码不能为空",remote:"本用户已存在"}
		}
	});

}
    
	//保存
	function saveUser(){
		$("#saveUser").attr('action',"${contextPath}/userManage/userManage/ope-add/saveUserInfo.do");
		$("#saveUser").submit();
	}
	//返回列表
	function goList(){
    	window.location.href="${contextPath}/userManage/userManage/ope-query/queryUserInfo.do?flag=1";
    }
</script>
</body>
</html>