
<div style="padding-left:78%">
	<ul style="margin-top:0" id="pMessages" class="pagination">
		${(pageTag)!""}
	</ul>
</div>
<script>
	function setPre(){
		var pn = $("#pageNo").val();
		if(pn>=1){
			$("#pageNo").val(pn - 1);
		}else{
			$("#pageNo").val(1);
		}
		$("#pageNo").parent('from').submit();
	}
	function setNext(){
		var pn = $("#pageNo").val();
		if(pn<${(page.totalPageCount)!""}){
			$("#pageNo").val(parseInt(pn) + 1);
		}else{
			$("#pageNo").val(pn);
		}
		
		$("#pageNo").parent('from').submit();
	}
	function setPNum(i){
		$("#pageNo").val(i);
		$("#pageNo").parent('from').submit();
	}
</script>