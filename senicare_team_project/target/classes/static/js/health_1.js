	// 디스플레이 숨기고 보여주는 함수
	function selectDemen() {
		$(".arthTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".demenTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".demenTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
	}
	function selectArth() {
		$(".demenTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".arthTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".arthTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
	}
	function selectHyper() {
		$(".demenTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".arthTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".hyperTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
	}
	function selectDiabet() {
		$(".demenTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".arthTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".diabetTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
	}
	function selectCerebro() {
		$(".demenTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".arthTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".cerebroTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
        
   		// 결과창 숨겨놓기
    	$(document).ready(function(){
    		$(".demenResult").hide();
    	})
    	$(document).ready(function(){
    		$(".arthResult").hide();
    	})
    	$(document).ready(function(){
    		$(".hyperResult").hide();
    	})
    	$(document).ready(function(){
    		$(".diabetResult").hide();
    	})
    	$(document).ready(function(){
    		$(".cerebroResult").hide();
    	})        
	}
	
/**/
		