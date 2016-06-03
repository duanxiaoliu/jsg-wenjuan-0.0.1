<!DOCTYPE html>
<html lang="zh-CN">

<body>
<div id="contentwrapper">
	<div class="main_content">
		<span style="margin-left:90%;">
			<button class="btn" onclick="goToList()" type="button">返回列表</button>
		</span>
		<hr class="Divider"/>
		<div class="row-fluid">
			<form id="queryDicInfo" action="${contextPath}/dicManage/dicInfoManage/ope-query/queryDicInfo.do" method="post">			
				<input type="hidden" name="pageNo" id="pageNo" value="${(page.currentPageNo)!""}"/>	
				<input type="hidden" name="dicCategory.id" id="dicCategoryId" value="${(baseDic.dicCategory.id)!""}"/>
					<div class="col-xs-12">
					
						<div class="row-fluid">
							<div class="col-xs-4">
								<span class="formTitle">字段名称</span>
								<input type="text" id="name" name="name" value="${(baseDic.name)!""}"/>
							</div>
							<div class="col-xs-4">
								<span class="formTitle">字段编码</span>
								<input type="text" id="code" name="code" value="${(baseDic.code)!""}"/>
							</div>
						</div>

						
					</div>
					<div class="btnCenter">
						<button type="button" class="btn btn-info" onclick="queryDicInfo()">查询</button>
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
										<button class="btn btn-info" type="button" onclick="addDicInfo()">新增</button>
									</div>
								</div>
							</div>
						</div>
						
						<table class="table table-bordered table-striped tablecut" id="smpl_tbl">
							<thead>
								<tr>
									<th>序号</th>
									<th>字典名称</th>
									<th>字典编码</th>
									<th>字典状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<#if page ??>
									<#list page.result as dicInfo>
										<tr>
											<td>${dicInfo_index+1}</td>
											<td><#if dicInfo.name ??>${dicInfo.name !""}</#if></td>
											<td><#if dicInfo.code ??>${dicInfo.code !""}</#if></td>
											<td>
												<#if dicInfo.status ?? && dicInfo.status=='1'>
													<i id="${dicInfo.id}_dicStatus" class="icon-green" title="启用"></i>
													<a id="${dicInfo.id}_dicStatus_ope" href="###" onclick="stopDic('${dicInfo.id}')" title="停用"><i class="icon-stop" ></i></a>
												<#else>
													<i id="${dicInfo.id}_dicStatus" class="icon-green" title="停用"></i>
													<a id="${dicInfo.id}_dicStatus_ope" href="###" onclick="startDic('${dicInfo.id}')" title="启用"><i class="icon-play" ></i></a>
												</#if>
											</td>
											<td>
												<a href="#" title="上移"><i class="icon-circle-arrow-up"></i></a>
												<a href="#" title="下移"><i class="icon-circle-arrow-down"></i></a>
												<a href="#" title="修改" onclick="editDicInfo('${dicInfo.id !""}')"><i class="icon-pencil"></i></a>
												<a href="#" title="删除" onclick="delDicInfo('${dicInfo.id !""}')"><i class="icon-trash"></i></a>
												
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
	//新增
	function addDicInfo(){
		$('#queryDicInfo').attr('action',"${contextPath}/dicManage/dicInfoManage/ope-add/addDicInfo.do");
		$('#queryDicInfo').submit();
	}
	//查询
	function queryDicInfo(){
		$('#queryDicInfo').attr('action',"${contextPath}/dicManage/dicInfoManage/ope-query/queryDicInfo.do");
		$('#queryDicInfo').submit();
	}
	//删除
	function delDicInfo(id){
		basejs.confirm("注意，确定要删除吗？",function(r){
			if(r){
				var url = "${contextPath}/dicManage/dicInfoManage/ope-del/delDicInfo/"+id+".do";
				$.ajax({
					url:url,
					async:false,
					cache:false,
					type:"DELETE",
					dataType:"text",
					success:function(data){
						if(data="success"){
							queryDicInfo();
						}else{
							alert("无法完成删除操作！");
						}
					}
				});
			}
		});
	}
	//查看
	function viewDicInfo(id){
		$('#queryDicInfo').attr('action',"${contextPath}/dicManage/dicInfoManage/ope-view/viewDicInfo.do?id="+id);
		$('#queryDicInfo').submit();
	}
	//修改
	function editDicInfo(id){
		$('#queryDicInfo').attr('action',"${contextPath}/dicManage/dicInfoManage/ope-update/editDicInfo.do?id="+id);
		$('#queryDicInfo').submit();
	}
	
    $(function () {
        $('dt').click(function () {
            $(this).parent().find('dd').show().end().siblings().find('dd').hide();
        });
    });
    
</script>
</body>
</html>