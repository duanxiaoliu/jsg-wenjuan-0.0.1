<!DOCTYPE html>
<html>
<body>
<div id="contentwrapper">
	<div class="main_content">
		<div>
			<h4>
				<#if dicCategory ??>
					修改数据字典
				<#else>
					新增数据字典
				</#if>
			</h4>
		</div>
		<hr class="Divider"/>
		<div class="row-fluid">
			<form action="${contextPath}/dicManage/dicManage/ope-save/saveDicCategory.do" id="saveDicCategory" method="post">	
				<input type="hidden" name="id" id="id" value="${(dicCategory.id)!""}"/>		
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">字典名称<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" id="name" name="name" value="${(dicCategory.name)!""}"/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">字典编码<span class="f_waring">*</span></span>
								</div>
								<div class="col-xs-6">
									<input type="text" id="code" name="code" value="${(dicCategory.code)!""}"/>
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
									<textarea name="comments" id="comments" clos="12" rows="5"> ${(dicCategory.comments)!""}</textarea>
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
									<button type="button" class="btn btn-info" onclick="saveDicCategory()">保存</button>
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
    $("#saveDicCategory").validate({
		rules:{
			name:{ required:true},
			code:{required:true}
		},
		messages:{
			name:{required:"分类名称不能为空"},
			code:{required:"分类编码不能为空"}
		}
	});
	//保存
	function saveDicCategory(){
		$("#saveDicCategory").attr('action',"${contextPath}/dicManage/dicManage/ope-save/saveDicCategory.do");
		$("#saveDicCategory").submit();
	}
</script>
</body>
</html>