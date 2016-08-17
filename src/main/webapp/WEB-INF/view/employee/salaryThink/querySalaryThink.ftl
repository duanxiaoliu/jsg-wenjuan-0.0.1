<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="${contextPath}/img/logo.png"/>
    <title>员工薪资分析</title>
    <link href="${contextPath}/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${contextPath}/css/style.css"/>
    <link rel="stylesheet" href="${contextPath}/js/My97DatePicker/skin/WdatePicker.css"/>
	<script src="${contextPath}/js/My97DatePicker/WdatePicker.js"></script>
    <script src="${contextPath}/js/Highcharts/js/highcharts.js"></script>
    <script src="${contextPath}/js/Highcharts/js/modules/exporting.js"></script>
</head>
<body>
<div id="contentwrapper">
	<div class="main_content">
		<div class="row-fluid">
			<div class="row-fluid">
				<div class="col-xs-12">
					<input style="cursor:auto;background-color:#fff;height:27px;" id="salaryDate" class="Wdate col-xs-9" name="salaryDate"  value=""  onchange="getCharts()" onfocus="WdatePicker({dateFmt:'yyyy',minDate:'%y',isShowClear:true,readOnly:true})"/>
 				</div>
			</div>
			<hr class="Divider"/>
			<div class="row-fluid">
				<div class="col-xs-12">
					<div id="salaryThink" style="min-width:800px;height:400px;"> </div>
 				</div>
			</div>
			
		</div>
	</div>
</div>
<script>
//获得数据
 function getCharts(){
	var salaryDate = $('#salaryDate').val();
	$.ajax({
		url:'${contextPath}/employeeManage/salaryThinkManage/getSalaryJsonData.do',
		async:false,
		cache:false,
		type:"POST",
		dataType:"text",
		data:{'salaryDate':salaryDate},
		success:function(data){
			var total = data.split(".");
			var title = total[0].split(",");
			var valStr = total[1].split(",");
			var val = new Array(valStr.length);
			
			for(var i = 0;i<valStr.length;i++){
				val[i] = parseInt(valStr[i]);
			}
			
			 $('#salaryThink').highcharts({
		        chart: {
		            type: 'column'
		        },
		        title: {
		            text: salaryDate+"薪资情况"
		        },
		        xAxis: {
		            categories: title
		        },
		        yAxis: {
		            title: {
		                text: salaryDate+"薪资情况"
		            }
		        },
		        series:[{                                 //指定数据列
				            name: '总支出',                //数据列名
				            data: val                     //数据
				        }]
		    });
		}
	});
 }

</script>
</body>
</html>