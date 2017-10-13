window.onload = function(){
//	head(5)
	
	var navTall = document.getElementById("navTall");
	var lis = navTall.getElementsByTagName("li");
	var activLis = lis[0];
	// console.log(activLis)
	for(var i = 0; i < lis.length; i++){
		lis[i].onmouseover = function(){
			var oP = this.getElementsByTagName("p")[0];
			startMove(oP,{top:0});
		}
		lis[i].onmouseout = function(){
			var oP = this.getElementsByTagName("p")[0];
			startMove(oP,{top:-34});
		}
	}
	
	var explainList = document.getElementById("guaranteExplain");
	var explainLis = explainList.getElementsByTagName("li");
	for(var j = 0 ; j < explainLis.length; j++){
		explainLis[j].onmouseover = function(){
			var oP = this.getElementsByTagName("p")[0];
			startMove(oP,{top:0});
		}
		explainLis[j].onmouseout = function(){
			var oP = this.getElementsByTagName("p")[0];
			startMove(oP,{top:-300});
		}
	}
	
	/*var DIR_POS = {
        left: {
            top: '0',
            left: '-100%'
        },
        right: {
            top: '0',
            left: '100%'
        },
        bottom: {
            top: '100%',
            left: '0'
        },
        top: {
            top: '-100%',
            left: '0'
        }
    };

    $('#guaranteExplain li').each(function () {
        new MouseDirection(this, {
            enter: function ($element, dir) {
                //每次进入前先把.trans类移除掉，以免后面调整位置的时候也产生过渡效果
                var $content = $element.find('.serviceBox').removeClass('trans');

                //调整位置
                $content.css(DIR_POS[dir]);

                //reflow
                $content[0].offsetWidth;

                //启用过渡
                $content.addClass('trans');

                //滑入
                $content.css({left: '0', top: '0'});
            },
            leave: function ($element, dir) {
                $element.find('.serviceBox').css(DIR_POS[dir]);
            }
        });
    });*/
}

