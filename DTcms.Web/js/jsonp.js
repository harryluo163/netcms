var ip = 'http://192.168.1.8';
function errorFn(){
	alert("请假超时...")
}
function jspAjax(url,config){
	
	var data = config.data || [];
	var paraArr=[],paraString='';
	var urlArr;
	var callbackName;
	var script,head;
	var supportLoad;
	var onEvent;
	var timeout = config.timeout || 0;

	for(var i in data){
		if(data.hasOwnProperty(i)){
			paraArr.push(encodeURIComponent(i) + "=" +encodeURIComponent(data[i]));
		}
	}

	urlArr = url.url.split("?");
	if(urlArr.length>1){
		paraArr.push(urlArr[1]);
	}

	callbackName = 'callback'+new Date().getTime();
	paraArr.push('callback='+callbackName);
	paraString = paraArr.join("&");
	url = urlArr[0] + "?"+ paraString;

	script = document.createElement("script");
	script.loaded = false;
	window[callbackName] = function(arg){
		var callback = config.callback;
		callback(arg);
		script.loaded = true;
	}

	head = document.getElementsByTagName("head")[0];
	head.insertBefore(script, head.firstChild)
	script.src = url;

	supportLoad = "onload" in script;
	onEvent = supportLoad ? "onload" : "onreadystatechange";

	script[onEvent] = function(){

		if(script.readyState && script.readyState !="loaded"){
			return;
		}
		if(script.readyState == 'loaded' && script.loaded == false){
			script.onerror();
			return;
		}
		(script.parentNode && script.parentNode.removeChild(script))&& (head.removeNode && head.removeNode(this));	
		script = script[onEvent] = script.onerror = window[callbackName] = null;

	}

	script.onerror = function(){
		if(window[callbackName] == null){
			console.log("请求异常，请重试");
		}
		config.error && config.error();
		(script.parentNode && script.parentNode.removeChild(script))&& (head.removeNode && head.removeNode(this));	
		script = script[onEvent] = script.onerror = window[callbackName] = null;
	}

	if(timeout!= 0){
		setTimeout(function() {
			if(script && script.loaded == false){
				window[callbackName] = null;
				script.onerror();				
			}
		}, timeout);
	}
}