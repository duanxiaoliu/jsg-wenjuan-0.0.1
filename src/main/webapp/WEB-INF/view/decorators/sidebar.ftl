<aside id="asideLeft">
<!--左侧导航开始-->
<div class="col-xs-2 bg-blue" style="margin-top:50px;" class="sidebar">
    <br/>
    <div class="panel-group sidebar-menu" id="accordion" aria-multiselectable="true">
        <div class="panel panel-default menu-first menu-first-active">
            <a onclick="toMainPage()" data-toggle="collapse" data-parent="#accordion" href="#" aria-expanded="true"
               aria-controls="collapseOne">
                <i class="icon-home icon-large"></i> 主页
            </a>
        </div>
        <div class="panel panel-default menu-first">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true"
               aria-controls="collapseOne">
                <i class="icon-user-md icon-large"></i> 系统管理</a>
            </a>

            <div name="menuDiv" id="collapseOne" class="panel-collapse collapse " >
                <ul class="nav nav-list menu-second">
                    <li><a id="DicManage" href="${contextPath}/dicManage/dicManage/queryDicCategory.do?menuPid='collapseOne'&menuId='DicManage'&menutext=系统管理 \ 字典管理"><i class="icon-book"></i>字典管理</a></li>
                    <li><a href="p2.html"><i class="icon-edit"></i> 图表p2</a></li>
                    <li><a href="p3.html"><i class="icon-trash"></i> p3</a></li>
                    <li><a href="#"><i class="icon-list"></i> 子选项4</a></li>
                </ul>
            </div>
        </div>
        <div class="panel panel-default menu-first">
            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"
               aria-expanded="false" aria-controls="collapseTwo">
                <i class="icon-book icon-large"></i> 用户管理</a>
            </a>
            <div name="menuDiv" id="collapseTwo" class="panel-collapse collapse">
                <ul class="nav nav-list menu-second">
                    <li><a id="userManage" href="${contextPath}/userManage/userManage/queryUserInfo.do?menuPid='collapseTwo'&menuId='userManage'&menutext=用户管理 \ 用户管理"><i class="icon-user"></i> 用户管理</a></li>
                    <li><a href="#"><i class="icon-edit"></i> 子选项2</a></li>
                    <li><a href="#"><i class="icon-trash"></i> 子选项3</a></li>
                    <li><a href="#"><i class="icon-list"></i> 子选项4</a></li>
                </ul>
            </div>
        </div>
        <div class="panel panel-default menu-first">
            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree"
               aria-expanded="false" aria-controls="collapseThree">
                <i class="icon-book icon-large"></i> 员工管理</a>
            </a>

            <div name="menuDiv" id="collapseThree" class="panel-collapse collapse">
                <ul class="nav nav-list menu-second">
                    <li><a id="customerManage" href="${contextPath}/employeeManage/customerManage/queryCustomer.do?menuPid='collapseThree'&menuId='customerManage'&menutext=员工管理 \ 客户信息维护"><i class="icon-user"></i> 客户信息维护</a></li>
                    <li><a id="employeeManage" href="${contextPath}/employeeManage/EmployeeManage/queryEmployee.do?menuPid='collapseThree'&menuId='employeeManage'&menutext=员工管理 \ 员工信息维护"><i class="icon-user"></i> 员工信息维护</a></li>
                    <li><a id="salaryThinkManage" href="${contextPath}/employeeManage/salaryThinkManage/querySalaryThinkManage.do?menuPid='collapseThree'&menuId='salaryThinkManage'&menutext=员工管理 \ 薪资分析"><i class="icon-trash"></i> 员工薪资分析</a></li>
                    <li><a href="#"><i class="icon-list"></i> 子选项4</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</div>
<script>
	$(function(){
	<#if menuPid ?? && menuId ??>
		var menuPid = ${menuPid};
		var menuId = ${menuId};
		$('#'+ ${menuPid}).css('display','block');
		$('#'+ ${menuId}).css('background-color','#66c3ec');
		
	</#if>
	});
	//返回主页
	function toMainPage(){
		window.location.href='${contextPath}/toMain.do';
	}
</script>