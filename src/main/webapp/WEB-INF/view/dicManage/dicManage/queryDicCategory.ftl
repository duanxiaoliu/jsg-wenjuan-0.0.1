<!DOCTYPE html>
<html lang="zh-CN">

<body>
<div id="contentwrapper">
	<div class="main_content">
		<div class="row-fluid">
			<form id="queryDicCategory" action="${contextPath}/dicManage/dicManage/queryDicCategory.do" method="post">			
				<input type="hidden" name="pageNo" id="pageNo" value="${(page.currentPageNo)!""}"/>	
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-4">
								<span class="formTitle">分类名称</span>
								<input type="text" id="name" name="name" value="${(dicCategory.name)!""}"/>
							</div>
							<div class="col-xs-4">
								<span class="formTitle">分类编码</span>
								<input type="text" id="code" name="code" value="${(dicCategory.code)!""}"/>
							</div>
						</div>

						
					</div>
					<div class="btnCenter">
						<button type="button" class="btn btn-info" onclick="queryDicCategory()">查询</button>
					</div>
					
			</from>
			<hr class="Divider"/>
			<div class="row-fluid">
				<div class="col-xs-12">
					<div id="dt_gal_wrapper" class="dataTables_wrapper" form-inline" role="grid">
						<div class="row">
							<div class="col-xs-10">
								<div class="dt_actions">
									<div class="row-fluid">
										<button class="btn btn-info" type="button" onclick="addDicCategory()">新增</button>
									</div>
								</div>
							</div>
						</div>
						
						<table class="table table-bordered table-striped tablecut" id="smpl_tbl">
							<thead>
								<tr>
									<th>序号</th>
									<th>分类名称</th>
									<th>分类编码</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<#if page ??>
									<#list page.result as dicCategory>
										<tr>
											<td>${dicCategory_index+1}</td>
											<td><#if dicCategory.name ??>${dicCategory.name !""}</#if></td>
											<td><#if dicCategory.code ??>${dicCategory.code !""}</#if></td>
											<td><a href="#" title="设置字典" onclick="setDicInfo('${dicCategory.id!""}')"><i class="icon-cog"></i></a>
												<a href="#" title="修改" onclick="editDicCategory('${dicCategory.id !""}')"><i class="icon-pencil"></i></a>
												<a href="#" title="删除" onclick="delDicCategory('${dicCategory.id !""}')"><i class="icon-trash"></i></a>
												<a href="#" title="查看" onclick="viewDicCategory('${dicCategory.id !""}')"><i class="icon-list-alt"></i></a>
											</td>
										</tr>
									</#list>
								</#if>
							</tbody>
						</table>
						<#include "../../page/pageTag.ftl">
					</div>
 				</div>
			
			</div>
		</div>
	</div>
</div>
<script>
	//设置数据字典信息
	function setDicInfo(id){
		$('#queryDicCategory').attr('action',"${contextPath}/dicManage/dicInfoManage/ope-query/queryDicInfo.do?dicCategoryId="+id);
		$('#queryDicCategory').submit();
	}
	//新增
	function addDicCategory(){
		$('#queryDicCategory').attr('action',"${contextPath}/dicManage/dicManage/ope-add/addDicCategory.do");
		$('#queryDicCategory').submit();
	}
	//查询
	function queryDicCategory(){
		$('#queryDicCategory').attr('action',"${contextPath}/dicManage/dicManage/ope-query/queryDicCategory.do");
		$('#queryDicCategory').submit();
	}
	//删除
	function delDicCategory(id){
		basejs.confirm("注意，确定要删除吗？",function(r){
			if(r){
				var url = "${contextPath}/dicManage/dicManage/ope-del/delDicCategory/"+id+".do";
				$.ajax({
					url:url,
					async:false,
					cache:false,
					type:"DELETE",
					dataType:"text",
					success:function(data){
						if(data="success"){
							queryDicCategory();
						}else{
							alert("无法完成删除操作！");
						}
					}
				});
			}
		});
	}
	//查看
	function viewDicCategory(id){
		$('#queryDicCategory').attr('action',"${contextPath}/dicManage/dicManage/ope-view/viewDicCategory.do?id="+id);
		$('#queryDicCategory').submit();
	}
	//修改
	function editDicCategory(id){
		$('#queryDicCategory').attr('action',"${contextPath}/dicManage/dicManage/ope-update/editDicCategory.do?id="+id);
		$('#queryDicCategory').submit();
	}
	
    $(function () {
        $('dt').click(function () {
            $(this).parent().find('dd').show().end().siblings().find('dd').hide();
        });
    });
    
</script>
</body>
</html>