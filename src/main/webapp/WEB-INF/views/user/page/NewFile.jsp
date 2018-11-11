<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

var globalVar = (function() {
	var _returnValueYN = "N",
		_fiveSc		   = 0;
	
	var setFiveSc = function(fiveSc) {
		_fiveSc = fiveSc;
	}
	
	var getFiveSc = function() {
		return _fiveSc;
	}
	
	var setReturnValueYN = function(returnValueYN) {
		_returnValueYN = returnValueYN
	}
	
	var getReturnValueYN = function() {
		return _returnValueYN;
	}
	
	return {
		setReturnValueYN : setReturnValueYN,
		getReturnValueYN : getReturnValueYN,
		setFiveSc		 : setFiveSc,
		getFiveSc		 : getFiveSc
	}
}());

$(function() {
	popPartnerEduVideo.sengSungJa();
	
// 	$("#btnS").hide();
	var timeOut = setTimeout(popPartnerEduVideo.limitCount, 5000);
});

// var returnValueYN = "N";

var popPartnerEduVideo = {
		confirmJs : null,
		ddeng : 0,
		
		sengSungJa : function() {
			$("#btnS").hide();
			
			globalVar.setFiveSc(setInterval(this.intervalCount, 5000));
		},
		
		limitCount : function() {
			$("#btnS").show();
			
			globalVar.setReturnValueYN("Y");
		},
		
		intervalCount : function() {
			var that = this;
			
			clearInterval(globalVar.getFiveSc());
			
			this.confirmJs = $.confirm({
				title : "잔인한 영상",
				content : "나 보고 있어?",
				
				buttons : {
					
					그럼 	: {
						
						action : function() {
							console.log("잘 타는지 확인.");
							
							clearTimeout(that.ddeng);
							
							globalVar.setFiveSc(setInterval(popPartnerEduVideo.intervalCount, 5000));
						}
					},
					
					한눈팔아 : {
						
						action : function() {
							that.confirmJs.close();
							
							window.close();
						}
					}
				}
			});
			
			this.confirmJs.open();
			
			this.ddeng = setTimeout(function() {
	        	that.confirmJs.close();
	        	
	        	window.close();
	        }, 5000);
		}
};

// 익스플로러에서만 가능
window.onbeforeunload = function() {
	if (returnValueYN === "N") {
		return "영상을 끝까지 보신 후 개인정보보호 교육확인서를 작성해주셔야 교육이 완료됩니다. 종료하시겠습니까?";
	}
}
var btn = {
	url			: "",
	signTrgNo	: "<c:out value='${param.signTrgNo}' />",
	opt			: "",
	eduCode		: "",
	
	buttonGo : function() {
		clearInterval(globalVar.getFiveSc());
		
		this.eduCode = "<c:out value='${eduCode}' />";
		this.opt = "width=950, height=1280, scrollbars=yes";
		
		if (this.eduCode === "10") {
			this.url = "popRe.do";
		}
		
		window.open(this.url + "?signTrgNo=" + this.signTrgNo, "", this.opt);
	}
}
</script>
<body>

</body>
</html>