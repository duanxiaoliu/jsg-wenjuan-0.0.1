<!DOCTYPE html>
<html>
      <head>
          <title>装饰器页面</title>
          <link rel="stylesheet" href="js/bootstrap/css/bootstrap.css">
          <script type="text/javascript" src="js/jquery.min.js"></script>
          <script type="text/javascript" src="js/bootstrap/js/bootstrap.min.js"></script>
          <sitemesh:write property="head"/>
          
          <script type="text/javascript" src="js/ztree/js/jquery.ztree.core-3.5.js"></script>
          <script type="text/javascript" src="js/jquery.validate.js"></script>
          <script type="text/javascript" src="js/jquery.form.js"></script>
          <script type="text/javascript" src="js/jquery.blockUI.js"></script>
          <link rel="stylesheet" href="js/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css"> 
      </head>
     <body>
     <div id="maincontainer" class="clearfix">
        <h1>sitemesh的例子</h1>
		        <#if user_key??>
					<a href="toExit.do">退出</a>
				</#if>
			<hr>
        <div>
        	<div style=" width:100px; height:1000px; border:1px solid red; float:left;">
        		<#include "sideztree.ftl">
        	</div>
    		<div>
    			<sitemesh:write property="body"/>
			</div>
		</div>
		<div style="clear:both; float:none;">
			<hr>duan
		</div>
        
        </div>
    </body>
</html>