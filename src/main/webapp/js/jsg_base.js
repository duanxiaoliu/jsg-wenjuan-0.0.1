basejs = {
		confirm:function(msg,function_){
			bootbox.setDefaults({locale:"zh_CN"});
			bootbox.confirm(msg,function_);
		},
		showModal:function(divId,width,position){
			if(!width){
				
			}else{
				$('#'+divId).css('width',width);
			}
			if(!position){
				
			}else{
				$('#'+divId).modal({
					backdrop:"static",
					show:true
				});
			}
		},
		hideModal:function(divId){
			$('#'+divId).modal('hide');
		}
		
		
}