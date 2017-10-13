
(function($){
	$(window).load(function(){
		
		
//		head(2)
		
		
		var content=$("#scrollBox"),autoScrollTimer=8000,autoScrollTimerAdjust,autoScroll;
		content.mCustomScrollbar({
			scrollButtons:{
				enable:true
			},
			callbacks:{
				whileScrolling:function(){ autoScrollTimerAdjust=autoScrollTimer*mcs.topPct/100; },
				onScroll:function(){ if(this.data("mCS_trigger")==="internal"){AutoScrollOff();} }
			}
		});
		content.addClass("auto-scrolling-on auto-scrolling-to-bottom");
		AutoScrollOn("bottom");
		$(".auto-scrolling-toggle").click(function(e){
			e.preventDefault();
			if(content.hasClass("auto-scrolling-on")){
				AutoScrollOff();
			}else{
				if(content.hasClass("auto-scrolling-to-top")){
					AutoScrollOn("top",autoScrollTimerAdjust);
				}else{
					AutoScrollOn("bottom",autoScrollTimer-autoScrollTimerAdjust);
				}
			}
		});
		function AutoScrollOn(to,timer){
			if(!timer){timer=autoScrollTimer;}
			content.addClass("auto-scrolling-on").mCustomScrollbar("scrollTo",to,{scrollInertia:timer,scrollEasing:"easeInOutQuad"});
			autoScroll=setTimeout(function(){
				if(content.hasClass("auto-scrolling-to-top")){
					AutoScrollOn("bottom",autoScrollTimer-autoScrollTimerAdjust);
					content.removeClass("auto-scrolling-to-top").addClass("auto-scrolling-to-bottom");
				}else{
					AutoScrollOn("top",autoScrollTimerAdjust);
					content.removeClass("auto-scrolling-to-bottom").addClass("auto-scrolling-to-top");
				}
			},timer);
		}
		function AutoScrollOff(){
			clearTimeout(autoScroll);
			content.removeClass("auto-scrolling-on").mCustomScrollbar("stop");
		}
	});
})(jQuery);


/*function scrolltop(){
	var speed= 5;
	var box1 = document.getElementById("box1");
	var box2 = document.getElementById("box2");
	var scrollBox = document.getElementById("scrollBox");
   	box2.innerHTML = box1.innerHTML;
   	function Marquee(){
	   	if(box2.offsetTop-scrollBox.scrollTop<=0){
	   		scrollBox.scrollTop-=box1.offsetHeight;
	   	}else{
	   		scrollBox.scrollTop++;
	   	}
   	}
   	var MyMar=setInterval(Marquee,speed);
   	
   	scrollBox.onmouseover = function() {
   		clearInterval(MyMar);
   	}
   	scrollBox.onmouseout=function() {
   		MyMar = setInterval(Marquee,speed);
   	}
}*/
