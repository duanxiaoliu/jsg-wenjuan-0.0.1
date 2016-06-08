<!DOCTYPE html>
<html>
<body>
<div id="contentwrapper">
	<div class="main_content">
		<div>
			<h4>
				<#if baseDic.id ??>
					修改数据字典
				<#else>
					新增数据字典
				</#if>
			</h4>
		</div>
		<hr class="Divider"/>
		<div class="row-fluid">
			<form action="${contextPath}/dicManage/dicManage/ope-save/saveDicCategory.do" id="saveDicInfo" method="post">	
				<input type="hidden" name="dicCategory.id" id="dicCategoryId" value="${(baseDic.dicCategory.id)!""}"/>	
				<input type="hidden" name="id" id="id" value="${(baseDic.id)!""}"/>			
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">字典名称<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" id="name" name="name" value="${(baseDic.name)!""}"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">字典编码<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" id="code" name="code" value="${(baseDic.code)!""}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">字典状态<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<#if baseDic.status ??>
										<input type="radio" value="1" name="status" <#if baseDic.status=="1">checked</#if>/>启用
										<input type="radio" value="0" name="status" <#if baseDic.status=="0">checked</#if>/>禁用
									<#else>
										<input type="radio" value="1" name="status" checked/>启用
										<input type="radio" value="0" name="status" />禁用
									</#if>
									
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
									<textarea name="comments" id="comments" clos="12" rows="5"> ${(baseDic.comments)!""}</textarea>
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
									<button type="button" class="btn btn-info" onclick="saveDicInfo()">保存</button>
									<button type="button" class="btn" onclick="goList()">取消</button>
								</div>
							</div>
						</div>
					</div>
			</from>
		</div>
	</div>
</div>
<script>
    $(function () {
        $('dt').click(function () {
            $(this).parent().find('dd').show().end().siblings().find('dd').hide();
        });
    });
    //表单验证
    $("#saveDicInfo").validate({
		rules:{
			name:{ required:true,
				   remote:{
				   		type:"POST",
				   		url:"${contextPath}/dicManage/dicManage/ope-check/checkDicNameExist.do",
				   		data:{id:function(){return $("#id").val();},
				   			  dicCategoryId:function(){return $("#dicCategoryId").val();},
				   			  name:function(){return $("#name").val();}
				   		}
				   }
			},
			code:{required:true
					remote:{
				   		type:"POST",
				   		url:"${contextPath}/dicManage/dicManage/ope-check/checkDicCodeExist.do",
				   		data:{id:function(){return $("#id").val();},
				   			  dicCategoryId:function(){return $("#dicCategoryId").val();},
				   			  code:function(){return $("#code").val();}
				   		}
				   }
			}
		},
		messages:{
			name:{required:$.format("字典名称不能为空"),
				  remote:$.format("字典名称已存在")},
			code:{required:$.format("字典编码不能为空"),
				  remote:$.format("字典编码已存在")}
		}
	});
	//保存
	function saveDicInfo(){
		$("#saveDicInfo").attr('action',"${contextPath}/dicManage/dicInfoManage/ope-save/saveDicInfo.do");
		$("#saveDicInfo").submit();
	}
		//返回列表
	function goList(){
    	window.location.href="${contextPath}/dicManage/dicInfoManage/ope-query/queryDicInfo.do?flag=1";
    }
</script>
</body>
</html>