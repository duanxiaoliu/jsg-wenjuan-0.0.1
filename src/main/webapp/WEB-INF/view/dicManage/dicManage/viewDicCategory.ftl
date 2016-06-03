<!DOCTYPE html>
<html>
<body>
<div id="contentwrapper">
	<div class="main_content">
		<div>
			<h4>
				查看数据字典
			</h4>
		</div>
		<hr class="Divider"/>
		<div class="row-fluid">
			<form action="${contextPath}/dicManage/dicManage/ope-save/saveDicCategory.do" id="saveDicCategory" method="post">			
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">分类名称</span>
								</div>
								<div class="col-xs-6">
									<input type="text" id="name" name="name" value="${(dicCategory.name) !""}" disabled/>
								</div>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-3">
									<span class="formTitle">分类编码</span>
								</div>
								<div class="col-xs-6">
									<input type="text" id="code" name="code" value="${(dicCategory.code) !""}" disabled/>
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
									<textarea name="comments" id="comments" clos="12" rows="5" disabled>${(dicCategory.comments) !""}</textarea>
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
									<button type="button" class="btn btn-info" onclick="goList()">返回</button>
								</div>
							</div>
						</div>
					</div>
			</from>
		</div>
	</div>
</div>
<script>
    function goList(){
    	window.location.href="${contextPath}/dicManage/dicManage/ope-query/queryDicCategory.do?flag=1";
    }
</script>
</body>
</html>