window.onload = function(){
	var content = document.getElementById("content");
	var oUl = content.getElementsByTagName("ul")[0];
	var aA = oUl.getElementsByTagName("a");
	var oAactiv = null;
	console.log(aA[0])
	for(var i = 0; i < aA.length; i++){
		aA[i].index = i;
		if(aA[i].className == "active"){
			var aAN = aA[i].index;
			htmlData(aA[i].href,i);
		}
		aA[i].onclick = function(){
			if(!this.offOn){
				htmlData(f,n);
			}
			return false;
		}
	}
}

function htmlData(url,number){
	var aboutCont = document.getElementById("aboutCont");
	if(number==1){
		bannerGd("qualBanner","700");
	}		
}

function equipment(){
	var box = document.getElementById("aboutCont");
	var boxList = box.getElementsByTagName("ul")[0];
	var boxLis = boxList.getElementsByTagName("li");
	var boxLisActiv = boxLis[0];
	boxLisActiv.offOn = true;
		
	for(var i = 0; i < boxLis.length; i++){
		boxLis[i].index = i;
		boxLis[i].onclick = function(){
			if(!this.offOn){
				this.offOn = true;
				boxLisActiv.className = "";
				boxLisActiv.offOn = false;
				this.className = "active";
				boxLisActiv = this;
				var lisData = this.index;
				creatELl(lisData);
			}
		}
	}
}
$(function(){
	$('.equiNav li').click(function(){
		$('.equiNav li').removeClass('active');
		$('.top_slider').hide()
		$(this).addClass('active');
		$('.top_slider').eq($(this).index()).show();
	});
	shebei('equiImgBox0','slider_btn_left0','slider_btn_right0');
	shebei('equiImgBox1','slider_btn_left1','slider_btn_right1');
	shebei('equiImgBox2','slider_btn_left2','slider_btn_right2');
	shebei('equiImgBox3','slider_btn_left3','slider_btn_right3');
	shebei('equiImgBox4','slider_btn_left4','slider_btn_right4');
	shebei('equiImgBox5','slider_btn_left5','slider_btn_right5');
});
function shebei(sid,prev,next){
	var oUl = document.getElementById(sid);
	var aLi = oUl.children;
	oUl.innerHTML+=oUl.innerHTML;
	var iNow = 0;
	var timer = null;
	var oPrev = document.getElementById(prev);
	var oNext = document.getElementById(next);
	var width = getStyle(aLi[0],'width');
	oUl.style.width=aLi.length*parseInt(width)+'px';

	var w = aLi.length*parseInt(width)/2;
	
	function getStyle(obj,sName){
		return obj.currentStyle?obj.currentStyle[sName]:getComputedStyle(obj,false)[sName];
	}
	function tab(){
		startMove(oUl,-iNow*parseInt(width));
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
}




















