[#ftl]
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>物资管理调度系统</title>
        <link rel="icon" href="img/logo.png"/>
	    <link href="${contextPath}/css/bootstrap.css" rel="stylesheet">
	    <link href="${contextPath}/css/login/login.css" rel="stylesheet">
	    <link href="${contextPath}/css/style.css" rel="stylesheet">
	    <script src="${contextPath}/js/jquery-1.11.3.js"></script>
		<script src="${contextPath}/js/bootstrap.js"></script>
		<sitemesh:write property="head"/>
		<style>
			
		</style>
    </head>
 
<body>
	<div id="maincontainer" class="clearfix">
			<!-- header -->
            [#include "header.ftl"]
            <!-- main content -->
            [#include "mContentNav.ftl"]
            <div style="margin-left:254px; float:left;width:82%">
            <sitemesh:write property="body"/>
            </div>
             [#include "mContentBottom.ftl"]
            <!-- sidebar -->
            [#include "sidebar.ftl"]
     </div>

	</body>
</html>