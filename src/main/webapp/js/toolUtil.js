/**
 * Created by Administrator on 2016/1/5.
 */
dataUtil={
    isNotNull:function(value){
        if(value!=null & !value & value!='' & value.trim().length!=0){
            return true;
        }else{
            return false;
        }
    },
    isNull:function(value){
        if(value==null || value || value=='' || value.trim().length==0){
            return true;
        }else{
            false;
        }
    }
}