
$(function(){
	var oUl = document.getElementById('goodImg_List');
	var aLi = oUl.children;
	oUl.innerHTML+=oUl.innerHTML;
	var timer=null;
	var iNow = 0;
	var oPrev = document.getElementById('prvo');
	var oNext = document.getElementById('next');
//	var height = getStyle(aLi[0],'height');
//	oUl.style.height=aLi.length*parseInt(height)+'px';
	oUl.style.height=aLi.length*aLi[0].offsetHeight+'px';
//	var w = aLi.length*parseInt(height)/2;
	var w = oUl.offsetHeight/2;
//	function getStyle(obj,sName){
//		return obj.currentStyle?obj.currentStyle[sName]:getComputedStyle(obj,false)[sName];
//	} 
	function tab(){
		startMove(oUl,-iNow*aLi[0].offsetHeight);
	}
	var top = 0;
	function startMove(obj,iTarget){
		var start = top;
		var dis = iTarget-start;
		var count = Math.floor(300/30);
		var n = 0;
		clearInterval(timer);
		timer = setInterval(function(){
			n++;
			var a = 1-n/count;
			top = start+dis*(1-Math.pow(a,3));
			if(top<0){
				oUl.style.top=top%w+'px';
			}else{
				oUl.style.top=(top%w-w)%w+'px';
			}
			if(n==count){
				clearInterval(timer);
			}
		},80);
	}
	oPrev.onclick=function(){
		iNow--;
		tab();
	};
	oNext.onclick=function(){
		iNow++;
		tab();
	};
});
$(function(){
	var  oDiv= document.getElementById('goodImg_List');
	var aImg = oDiv.getElementsByTagName('b');
	var oUl = document.getElementById('goodImg');
	var oImg =oUl.children;
	var iNow = 0;
	var timer=null;
	oUl.innerHTML+=oUl.innerHTML;
	oUl.style.width=oImg.length*oImg[0].offsetWidth+'px';
	var w = oUl.offsetWidth/2;
	for(var i=0;i<aImg.length;i++){
		(function(index){
			aImg[i].onclick=function(){
				if((iNow%aImg.length==aImg.length-1||iNow%aImg.length==-1)&&index==0)iNow++;
				if(iNow%aImg.length==0&&index==aImg.length-1)iNow--;
				iNow = Math.floor(iNow/aImg.length)*aImg.length+index;
				tab();
			};
		})(i);
	}
	function tab(){
		for(var i=0;i<aImg.length;i++){
			aImg[i].className='';
		}
		if(iNow<0){
			aImg[(iNow%aImg.length+aImg.length)%aImg.length].className='active';
		}else{
			aImg[iNow%aImg.length].className='active';
		}
		startMove(oUl,-iNow*oImg[0].offsetWidth);
	}

	var left = 0;
	function startMove(obj,iTarget){
		var start = left;
		var dis = iTarget-start;
		var count = Math.floor(300/30);
		var n = 0;
		clearInterval(timer);
		timer = setInterval(function(){
			n++;
			var a = 1-n/count;
			left = start+dis*(1-Math.pow(a,3));
			if(left<0){
				oUl.style.left=left%w+'px';
			}else{
				oUl.style.left=(left%w-w)%w+'px';
			}
			if(n==count){
				clearInterval(timer);
			}
		},30);
	}

});


