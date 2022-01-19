 
/******************************************
	checkbox, select 값 계산 후 총 가격으로 출력 
*******************************************/

let reserv_sb,reserv_ss,reserv_fs,reserv_fb,reserv_total,start_s,start_b,free_s,free_b,sum1,sum2,sum3,sum4;
	function change_s(){
		
		sum1,sum2,sum3,sum4=0;
		
       reserv_ss=document.getElementById("reserv_ss");
       reserv_sb=document.getElementById("reserv_sb");
       reserv_fs=document.getElementById("reserv_fs");
       reserv_fb=document.getElementById("reserv_fb");
       reserv_total=document.getElementById("reserv_total");
       start_s=document.getElementById("start_s");
       start_b=document.getElementById("start_b");
       free_s=document.getElementById("free_s");
       free_b=document.getElementById("free_b");
       
       
       if(start_s.checked){
		   start_s.value=20000;
    	   sum1=start_s.value*reserv_ss.value;
       }
       if(start_b.checked){
			start_b.value=30000;
    	   sum2=start_b.value*reserv_sb.value;
       }
       if(free_s.checked){
			free_s.value=40000;
    	   sum3=free_s.value*reserv_fs.value;
       }
       if(free_b.checked){
			free_b.value=60000;
    	   sum4=free_b.value*reserv_fb.value;
       }
       reserv_total.value=sum1+sum2+sum3+sum4;
   }
   
   function change_c(){
	  
	   sum1,sum2,sum3,sum4=0;
	   
	   reserv_ss=document.getElementById("reserv_ss");
       reserv_sb=document.getElementById("reserv_sb");
       reserv_fs=document.getElementById("reserv_fs");
       reserv_fb=document.getElementById("reserv_fb");
       reserv_total=document.getElementById("reserv_total");
       start_s=document.getElementById("start_s");
       start_b=document.getElementById("start_b");
       free_s=document.getElementById("free_s");
       free_b=document.getElementById("free_b");
       
       if(start_s.checked){
		   start_s.value=20000;
    	   sum1=start_s.value*reserv_ss.value;
    	   reserv_ss.disabled = false;
       }else{
    	   sum1=0;
    	   start_s.value=0;
    	   $("#reserv_ss option:eq(0)").prop("selected", true);
    	   reserv_ss.disabled = true;
       }
       if(start_b.checked){
			start_b.value=30000;
    	   sum2=start_b.value*reserv_sb.value;
    	   reserv_sb.disabled = false;
       }else{
    	   sum2=0;
    	   start_b.value=0;
           $("#reserv_sb option:eq(0)").prop("selected", true);
           reserv_sb.disabled = true;
       }
       if(free_s.checked){
			free_s.value=40000;
    	   sum3=free_s.value*reserv_fs.value;
    	   reserv_fs.disabled = false;
       }else{
    	   sum3=0;
    	   free_s.value=0;
    	   $("#reserv_fs option:eq(0)").prop("selected", true);
    	   reserv_fs.disabled = true;
       }
       if(free_b.checked){
			free_b.value=60000;
    	   sum4=free_b.value*reserv_fb.value;
    	   reserv_fb.disabled = false;
       }else{
    	   sum4=0;
    	   free_b.value=0;
           $("#reserv_fb option:eq(0)").prop("selected", true);
           reserv_fb.disabled = true;
       }
       reserv_total.value=sum1+sum2+sum3+sum4;
   }
   
/***************************************
*	예매하기 - 폼 체크	
***************************************/
function reservFormCheck(){
	
	reserv_ss = document.getElementById("reserv_ss");
	reserv_sb = document.getElementById("reserv_sb");
	reserv_fs = document.getElementById("reserv_fs");
	reserv_fb = document.getElementById("reserv_fb");
	start_s = document.getElementById("start_s");
	start_b = document.getElementById("start_b");
	free_s = document.getElementById("free_s");
	free_b = document.getElementById("free_b");
	reserv_dday = document.getElementById("reserv_dday");
	reserv_total = document.getElementById("reserv_total");
	
	
	if(reserv_dday.value == ""){
		alert("방문날짜를 선택해 주세요");
		return false;
	}else if(start_s.value == 0 && start_b.value == 0 && free_s.value == 0 && free_b.value == 0){
		alert("티켓을 선택해 주세요");
		return false;
	}else if(reserv_ss.value == 0 && reserv_sb.value == 0 && reserv_fs.value == 0 && reserv_fb.value == 0){
		alert("인원을 선택해 주세요");
		return false;
	}else{
		reserv_ss.disabled = false;
		reserv_sb.disabled = false;
		reserv_fs.disabled = false;
		reserv_fb.disabled = false;
		reservForm.submit();
	}
}



/**********************************
	datepicker
 **********************************/
  $(function() {
	   // showAnim
	   //옵션  : 매개변수값 2번째가 옵션의 타입이며 3번째 항목은 옵션에 대한 설정 값
	    $( "#reserv_dday" ).datepicker( "option", "minDate", "slideDown" );     //달력의 표시 형태
		$( "#reserv_dday" ).datepicker({
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

 
 
 
 
 
 
 
 
 
 
 
 




