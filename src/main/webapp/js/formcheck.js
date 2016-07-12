//判断是否为整数
jQuery.validator.addMethod("integerCheck", function(value,element)
		{
			if(value!=""){
				var patrn=/^(0|[1-9][0-9]*)$/; 
				return patrn.exec(value);
			}else{
				return true;
			}
			return false;
		}, "请输入有效整数!");
//验证小数位数
jQuery.validator.addMethod("decimals",function(value,element,d){
	var a = value.indexOf('.')+1;
	if(a==0){
		a = value.length;
	}
	var b = value.length;
	var c = b - a;
	return this.optional(element) || c <= d;
	//this.optional(element) 可以为空，但不为空时必须符合格式
},"小数位数不能超过{0}位！");

//验证电话号码，只能输入数字和中划线，长度不能超过30
jQuery.validator.addMethod("phoneCheck", function(value,element)
		{
			if(value!=""){
				var patrn=/^[0-9-]{0,30}$/; 
				return patrn.exec(value);
			}else{
				return true;
			}
			return false;
		}, "格式输入有误!");

//验证身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X。  
function checkCertificate(value,element){
	if(value!=""){
		var flag;
		var birDayCode = "";
		var isIDCard1 = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/;
		var isIDCard2 = /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])(\d{3})(\d|X|x)$/;
		flag = isIDCard1.exec(value);
		if(flag==null){
			flag = isIDCard2.exec(value);		
		}
		if(value.length==15){
			birDayCode = '19' + value.substring(6,12);					
			
		}else if(value.length==18){
			birDayCode = value.substring(6,14);
		}
		flag = checkBirthDayCode(birDayCode);
		
		return flag;			
	}else{
		return true;
	}
	return false;
}
//验证证件号码
function checkLength(value,element){
	
	return false;
}
//验证护照
function checkPassPosrt(value,element){
	if(value!=""){
		var expression = /(P\d{7})|(G\d{8})/;
		var objExp = new RegExp(expression);
		var flag = objExp.test(value);
		return flag;			
	}else{
		return true;
	}
	return false;
}
//验证军官证
function checkOfficerCard(value,element){
	if(value!=""){
		var reg = /南字第(\d{8})号|北字第(\d{8})号|沈字第(\d{8})号|兰字第(\d{8})号|成字第(\d{8})号|济字第(\d{8})号|广字第(\d{8})号|海字第(\d{8})号|空字第(\d{8})号|参字第(\d{8})号|政字第(\d{8})号|后字第(\d{8})号|后字第(\d{8})号/;
		var flag = reg.test(value);
		return flag;			
	}else{
		return true;
	}
	return false;
}
jQuery.validator.addMethod("certificateCheck", function(value,element){return checkCertificate(value,element)}, "请输入正确格式身份证号!");
//判断身份证号日期是否正确
function checkBirthDayCode(birDayCode){
	var check = /^[1-9]\d{3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))$/.test(birDayCode);
	if(!check){
		return false;
	}
	var yyyy = parseInt(birDayCode.substring(0,4),10);
	var mm = parseInt(birDayCode.substring(4,6),10);
	var dd = parseInt(birDayCode.substring(6),10);
	var xdata = new Date(yyyy,mm-1,dd);
	if(xdata >= new Date()){
		return false;//生日不能大于当前日期
	}else if((xdata.getFullYear() == yyyy) && (xdata.getMonth() == mm-1) && (xdata.getDate() == dd)){
		return true;
	}else{
		return false;
	}
}
//验证邮政编码（开头不能为0，共6位）。  
jQuery.validator.addMethod("postalCodeCheck", function(value,element)
		{
			if(value!=""){
				var patrn= /^[1-9][0-9]{5}$/; 
				return patrn.exec(value);
			}else{
				return true;
			}
			return false;
		}, "请输入正确格式邮政编码!");
