//用于按钮权限的控制
function buttonPermission(url) {	
	if (!document.getElementById("thisPageFunctionId"))
		return;		
	var functionId = document.getElementById("thisPageFunctionId").value;
	$.post(url,{functionId:functionId},function(buttonObj){
		if(buttonObj!=null){
			for (var i=0; i<buttonObj.length; i++){ 	
				try {						   
				   document.getElementById(buttonObj[i].buttonName).style.display = "";
				} catch(err) {
				}
			} 
		}
	},"json");
}
		
//json对象转化为json字符串 
 function obj2String(o) {
    if (o == undefined) {
        return "";
    }
    var r = [];
    if (typeof o == "string") return "\"" + o.replace(/([\"\\])/g, "\\$1").replace(/(\n)/g, "\\n").replace(/(\r)/g, "\\r").replace(/(\t)/g, "\\t") + "\"";
    if (typeof o == "object") {
        if (!o.sort) {
            for (var i in o)
                r.push("\"" + i + "\":" + obj2String(o[i]));
            if (!!document.all && !/^\n?function\s*toString\(\)\s*\{\n?\s*\[native code\]\n?\s*\}\n?\s*$/.test(o.toString)) {
                r.push("toString:" + o.toString.toString());
            }
            r = "{" + r.join() + "}";
        } else {
            for (var i = 0; i < o.length; i++)
                r.push(obj2String(o[i]));
            r = "[" + r.join() + "]";
        }
        return r;
    }
    return o.toString().replace(/\"\:/g, '":""');
}
 
//将date转化为string(支持format : dd为 yyyy-MM-dd, ss为 yyy-MM-dd HH:mm:ss)
function dateToString(value,format){
	   try{
		   var year = value.getYear();
		   var mon = value.getMonth()+1;
		   var day = value.getDate();
		   var hours = value.getHours();
		   var minutes = value.getMinutes();
		   var seconds = value.getSeconds();
		   var reMess='';
		   if(format=='dd'){
			   reMess = year+'-'+oneto2(mon)+'-'+oneto2(day);
		   }else if(format=='ss'){
			   reMess = year+'-'+oneto2(mon)+'-'+oneto2(day)+'-'+oneto2(hours)+'-'+oneto2(minutes)+'-'+oneto2(seconds);
		   }
		   return reMess;
	   }catch(e){
		   return value;
	   }

}

//不足两位前补零
function oneto2(value){
	var tmp = value.toString();
	return (tmp.length==1?('0'+tmp):tmp);
}

//处理删除键跳转页面 
function reDoBackspace(){ 
	if(window.event.keyCode == 8)
		window.event.keyCode = 0;
}

//下拉不可编辑回退键控制
document.onkeydown=function(e){
	var type;
	var stat;
    var event=e||window.event;
    var key=event.keyCode||event.which;
    if(event.srcElement){
        type=event.srcElement.type;
        stat=event.srcElement.readOnly;
    }else if(event.target){
        type=event.target.type;
        stat=event.target.readOnly;
    }
    
    if(key==8){    //删除键的keyCode为8
    	if((type!="text"&&stat==true)||(type!="textarea"&&stat==true)||(type!="select"&&stat==true)){
                event.keyCode=0;    
                event.returnValue=false;   
        }
    }        
}

function illegalChar(str) {
    var pattern=/[`~!@#\$%\^\&\*\(\)_\+<>\?:\"\{\},\.\\\/;'\[\]]/;  
    if(pattern.test(str)){  
        return false;     
    }     
    return true;  
}
