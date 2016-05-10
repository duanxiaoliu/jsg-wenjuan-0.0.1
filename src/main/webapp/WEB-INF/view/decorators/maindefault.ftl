[#ftl]
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>${_sys_title}</title>
    
        <!-- Bootstrap framework -->
            <link rel="stylesheet" href="${rc.contextPath}/bootstrap/css/bootstrap.min.css" />
            <link rel="stylesheet" href="${rc.contextPath}/bootstrap/css/bootstrap-responsive.min.css" />
		<!-- main styles -->
            <link rel="stylesheet" href="${rc.contextPath}/css/style.css" />
        <!-- rod blue theme-->
            <link rel="stylesheet" href="${rc.contextPath}/css/blue.css" />
        <!-- breadcrumbs-->
            <link rel="stylesheet" href="${rc.contextPath}/lib/jBreadcrumbs/css/BreadCrumb.css" />
        <!-- tooltips-->
            <link rel="stylesheet" href="${rc.contextPath}/lib/qtip2/jquery.qtip.min.css" />
        <!-- code prettify -->
            <link rel="stylesheet" href="${rc.contextPath}/lib/google-code-prettify/prettify.css" />    
        <!-- notifications -->
            <link rel="stylesheet" href="${rc.contextPath}/lib/sticky/sticky.css" />    
        <!-- splashy icons -->
            <link rel="stylesheet" href="${rc.contextPath}/img/splashy/splashy.css" />
        <!--comp,tree-->    
			<link rel="stylesheet" href="${rc.contextPath}/lib/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css">
			<link rel="stylesheet" href="${rc.contextPath}/css/bdp_comp.css" type="text/css">
       
        <!--[if lte IE 8]>
            <link rel="stylesheet" href="${rc.contextPath}/css/ie.css" />
        <![endif]-->
 
        <!--[if lt IE 9]>
            <script src="${rc.contextPath}/lib/html5shiv/html5.js"></script>
            <script src="${rc.contextPath}/lib/flot/excanvas.min.js"></script>
        <![endif]-->
		<script>
			//* hide all elements & show preloader
			document.getElementsByTagName('html')[0].className = 'js';
		</script>
		<script src="${rc.contextPath}/js/jquery.min.js"></script>
		<!-- smart resize event -->
		<script src="${rc.contextPath}/js/jquery.debouncedresize.min.js"></script>
		<!-- js cookie plugin -->
		<script src="${rc.contextPath}/js/jquery.cookie.min.js"></script>
		<!-- main bootstrap js -->
		<script src="${rc.contextPath}/bootstrap/js/bootstrap.min.js"></script>
		<!-- code prettifier -->
		<script src="${rc.contextPath}/lib/google-code-prettify/prettify.min.js"></script>
		<!-- tooltips -->
		<script src="${rc.contextPath}/lib/qtip2/jquery.qtip.min.js"></script>
		<!-- jBreadcrumbs -->
		<script src="${rc.contextPath}/lib/jBreadcrumbs/js/jquery.jBreadCrumb.1.1.min.js"></script>
		<!-- common functions -->
		
		<!--page -->
		<script src="${rc.contextPath}/js/page.js"></script>
		<!--tree-->
		<script type="text/javascript" src="${rc.contextPath}/lib/ztree/js/jquery.ztree.all-3.5.min.js"></script>
		<!-- comp -->
		<script type="text/javascript" src="${rc.contextPath}/js/bdp_comp.js"></script>
		<!-- jquery.validate -->
		<script src="${rc.contextPath}/lib/validation/jquery.validate.min.js"></script>
		<!-- myjs_message_cn -->
		<!--<script src="${rc.contextPath}/lib/validation/localization/messages_cn.js"></script>-->
		<script src="${rc.contextPath}/js/myjs_message_cn.js"></script>
		<!-- jquery.metadata -->
		<script src="${rc.contextPath}/js/jquery.metadata.js"></script>
		<!-- sticky messages -->
		<script src="${rc.contextPath}/lib/sticky/sticky.min.js"></script>
		<script src="${rc.contextPath}/lib/bootbox4/bootbox_custom.js"></script>
		<script src="${rc.contextPath}/js/edus/edus_calender.js"></script>
		<sitemesh:write property="head"/>
	<script>
	// 首页显示左侧菜单的问题  
	$(function() 
	{
		if ($(window).width() > 767) {
			if (!$('body').hasClass('sidebar_hidden')) {
				$('body').addClass('sidebar_hidden');
				$('.sidebar_switch').toggleClass('on_switch off_switch').attr('title', '显示菜单栏');
			} else {
				$('.sidebar_switch').toggleClass('on_switch off_switch').attr('title', '显示菜单栏');
			}
		} else {
			$('body').addClass('sidebar_hidden');
			$('.sidebar_switch').removeClass('on_switch').addClass('off_switch');
		}
		$('.sidebar_switch').hide();
		$(".list12 li").hover(function() {$(this).find(".pop").show();}, function() {$(this).find(".pop").hide();});
	});
</script>
		
    </head>
 
<body>
	<div id="maincontainer" class="clearfix">
			<!-- header -->
            [#include "header.ftl"]
            <!-- main content -->
            
            <sitemesh:write property="body"/>
            [#include "mContentBottom.ftl"]
            <!-- sidebar -->
            <!-- [#include "sidebar.ftl"]-->
            [#include "sidebar.ftl"]
     </div>
	</body>
</html>