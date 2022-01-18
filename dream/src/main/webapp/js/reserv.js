 
/******************************************
	checkbox, select 값 계산 후 총 가격으로 출력 
*******************************************/

let rsb,rss,rfs,rfb,total,num1,num2,num3,num4,sum1,sum2,sum3,sum4;
	function change1(){
		
		sum1,sum2,sum3,sum4=0;
		
       rsb=document.getElementById("rsb");
       rss=document.getElementById("rss");
       rfs=document.getElementById("rfs");
       rfb=document.getElementById("rfb");
       total=document.getElementById("total");
       num1=document.getElementById("num1");
       num2=document.getElementById("num2");
       num3=document.getElementById("num3");
       num4=document.getElementById("num4");
       
       
       if(rss.checked){
		   rss.value=20000;
    	   sum1=rss.value*num1.value;
       }
       if(rsb.checked){
			rsb.value=30000;
    	   sum2=rsb.value*num2.value;
       }
       if(rfs.checked){
			rfs.value=40000;
    	   sum3=rfs.value*num3.value;
       }
       if(rfb.checked){
			rfb.value=60000;
    	   sum4=rfb.value*num4.value;
       }
       total.value=sum1+sum2+sum3+sum4;
   }
   
   function change(){
	  
	   sum1,sum2,sum3,sum4=0;
	   
	   rsb=document.getElementById("rsb");
       rss=document.getElementById("rss");
       rfs=document.getElementById("rfs");
       rfb=document.getElementById("rfb");
       total=document.getElementById("total");
       num1=document.getElementById("num1");
       num2=document.getElementById("num2");
       num3=document.getElementById("num3");
       num4=document.getElementById("num4");
       
       if(rss.checked){
		   rss.value=20000;
    	   sum1=rss.value*num1.value;
    	   num1.disabled = false;
       }else{
    	   sum1=0;
    	   rss.value=0;
    	   $("#num1 option:eq(0)").prop("selected", true);
    	   num1.disabled = true;
       }
       if(rsb.checked){
			rsb.value=30000;
    	   sum2=rsb.value*num2.value;
    	   num2.disabled = false;
       }else{
    	   sum2=0;
    	   rsb.value=0;
           $("#num2 option:eq(0)").prop("selected", true);
           num2.disabled = true;
       }
       if(rfs.checked){
			rfs.value=40000;
    	   sum3=rfs.value*num3.value;
    	   num3.disabled = false;
       }else{
    	   sum3=0;
    	   rfs.value=0;
    	   $("#num3 option:eq(0)").prop("selected", true);
    	   num3.disabled = true;
       }
       if(rfb.checked){
			rfb.value=60000;
    	   sum4=rfb.value*num4.value;
    	   num4.disabled = false;
       }else{
    	   sum4=0;
    	   rfb.value=0;
           $("#num4 option:eq(0)").prop("selected", true);
           num4.disabled = true;
       }
       total.value=sum1+sum2+sum3+sum4;
   }
   
/***************************************
*	예매하기 - 폼 체크	
***************************************/
function reservFormCheck(){
	
	let rss,rsb,rfs,rfb,rdate,num1,num2,num3,num4;
	
	rss = document.getElementById("rss");
	rsb = document.getElementById("rsb");
	rfs = document.getElementById("rfs");
	rfb = document.getElementById("rfb");
	num1 = document.getElementById("num1");
	num2 = document.getElementById("num2");
	num3 = document.getElementById("num3");
	num4 = document.getElementById("num4");
	rdate = document.getElementById("rdate");
	total = document.getElementById("total");
	
	
	if(rdate.value == ""){
		alert("방문날짜를 선택해 주세요");
		return false;
	}else if(rss.value == 0 && rsb.value == 0 && rfs.value == 0 && rfb.value == 0){
		alert("티켓을 선택해 주세요");
		return false;
	}else if(num1.value == 0 && num2.value == 0 && num3.value == 0 && num4.value == 0){
		alert("인원을 선택해 주세요");
		return false;
	}else{
		num1.disabled = false;
		num2.disabled = false;
		num3.disabled = false;
		num4.disabled = false;
		reservForm.submit();
	}
}



/**********************************
	datepicker
 **********************************/
  $(function() {
	   // showAnim
	   //옵션  : 매개변수값 2번째가 옵션의 타입이며 3번째 항목은 옵션에 대한 설정 값
	    $( "#rdate" ).datepicker( "option", "minDate", "slideDown" );     //달력의 표시 형태
		$( "#rdate" ).datepicker({
			showOn:"button",
			showMonthAfterYear:true,
			buttonImage:"http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
			dateFormat:"yy년-mm월-dd일",
			minDate:0,
			monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], 
			monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], 
			dayNames: ['일', '월', '화', '수', '목', '금', '토'], 
			dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'], 
			dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
			weekHeader: "주", 
			yearSuffix: '년'

		});
	  });	
	  
	 



/***********************************
	예매하기 요금정보 팝오버
*************************************/
$(function(){
$('#popover_btn').popover({
// fade 효과 사용 여부
animation: true,
// 팝오버을 나타낼 특정 요소
//container: false,
// 템필릿
html: true,
// 팝오버 트리거(반응) 이벤트
trigger: 'hover focus',
viewport: { selector: 'body', padding: 0 },
});
});

 
 
 
 
 
 
 
 
 
 
 
 




