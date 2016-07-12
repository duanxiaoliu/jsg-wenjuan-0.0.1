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
				<#if allowance.id ??>
					修改补助信息
				<#else>
					新增补助信息
				</#if>
			</h4>
		</div>
		<hr class="Divider"/>
		<div class="row-fluid">
			<form action="${contextPath}/employeeManage/customerManage/ope-add/saveAllowance.do" id="saveAllowance" method="post">		
				<input type="hidden" name="id" id="id" value="${(allowance.id)!""}"/>
				<input type="hidden" name="customer.id" id="customerId" value="${(customer.id)!""}"/>		
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">饭费补助(/天)<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="food" name="food" value="${(allowance.food)!""}"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">电脑补助(/天)<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="computer" name="computer" value="${(allowance.computer)!""}"/>
								</div>
							</div>
						</div>
						
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">交通补助(/天)<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="traffic" name="traffic" value="${(allowance.traffic)!""}"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">住房补助(/月)<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="housing" name="housing" value="${(allowance.housing)!""}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">其它补助(/天)<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="otherDay" name="otherDay" value="${(allowance.otherDay)!""}"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">其它补助(/月)<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" class="col-xs-9" id="otherMouth" name="otherMouth" value="${(allowance.otherMouth)!""}"/>
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
									<button type="button" class="btn btn-info" onclick="saveAllowance()">保存</button>
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
    $("#saveAllowance").validate({
		rules:{
			food:{ required:true,
					number:true,
					min:0,
					maxlength:32,
					digits:true
		   },
			computer:{
				required:true,
				number:true,
				min:0,
				maxlength:32,
				digits:true
			},
			traffic:{required:true,
					number:true,
					min:0,
					maxlength:32,
					digits:true
			   },
		   housing:{ required:true,
		  			 number:true,
					min:0,
					maxlength:32,
					digits:true
		   },
		   otherDay:{
		    required:true,
		    number:true,
			min:0,
			maxlength:32,
			digits:true
		   },
		   otherMouth:{
		    required:true,
		    number:true,
			min:0,
			maxlength:32,
			digits:true
		   }
		},
		messages:{
			food:{required:"饭费补助不能为空"},
			computer:{required:"电脑补助不能为空"},
			traffic:{required:"交通补助不能为空"},
			housing:{required:"住房补助不能为空"},
			otherDay:{required:"每天其它补助不能为空"},
			otherMouth:{required:"每月其它补助不能为空"}
		}
	});
    
	//保存
	function saveAllowance(){
		$("#saveAllowance").attr('action',"${contextPath}/employeeManage/customerManage/ope-save/saveAllowance.do");
		$("#saveAllowance").submit();
	}
	//返回列表
	function goList(){
    	window.location.href="${contextPath}/employeeManage/customerManage/ope-query/queryCustomer.do?flag=1";
    }
</script>
</body>
</html>