	let empJ = /\s/g;
    let passFlag;
/*
*	내 정보 수정 폼 체크
 */
function infoUpdateCheck(){
	let pass, cpass,  email1, email2, email3, hp;
	let passMsg, cpassMsg,  emailMsg, hpMsg;
	pass = document.getElementById("pass");
	cpass = document.getElementById("cpass");
	email1 = document.getElementById("email1");
	email2 = document.getElementById("email2");
	email3 = document.getElementById("email3");
	hp = document.getElementById("hp");
	passMsg = document.getElementById("passMsg");
	cpassMsg = document.getElementById("cpassMsg");
	emailMsg = document.getElementById("emailMsg");
	hpMsg = document.getElementById("hpMsg");
	
	
	let checkList=[passMsg, cpassMsg,  emailMsg, hpMsg];
    let checkListCount=0;
    
    for(let i=0; i<checkList.length; i++){
		if(checkList[i].innerHTML == "유효한 양식이 아닙니다"){
			checkListCount++;
		}
	}
	if(pass.value == ""){
		passMsg.innerHTML = "비밀번호를 입력해주세요";
		passMsg.style.color = "#FF1493";
		passMsg.style.fontsize = "9pt";
        pass.style.border = "1px solid #FF1493";
        pass.focus();
        return false;
	}else if(cpass.value == ""){
		cpassMsg.innerHTML = "비밀번호 확인을 입력해주세요";
		cpassMsg.style.color = "#FF1493";
        cpass.style.border = "1px solid #FF1493";
        cpass.focus();
        return false;
	}else if(email1.value ==""){
		emailMsg.innerHTML = "이메일을 입력해주세요";
		emailMsg.style.color = "#FF1493";
        email1.style.border = "1px solid #FF1493";
        email1.focus();
        return false;
	}else if(email2.value == ""){
		emailMsg.innerHTML = "이메일을 선택해주세요";
		emailMsg.style.color = "#FF1493";
        email2.style.border = "1px solid #FF1493";
        email3.focus();
        return false;
	}else if(hp.value == ""){
		hpMsg.innerHTML = "핸드폰 번호를 입력해주세요";
		hpMsg.style.color = "#FF1493";
        hp.style.border = "1px solid #FF1493";
        hp.focus();
        return false;
	}else if(checkListCount > 0){
		alert("양식을 확인해주세요");
		return false;
	}else{
		infoUpdateForm.submit();
	}
	
/*
* 내 정보 수정 - 비밀번호 유효성 체크
*/
function passCheck(){
	let pwJ = /^(?=.*[a-z])(?=.*[0-9]).{6,10}$/; 
    let pass,cpass,passMsg,cpassMsg;
    pass = document.getElementById("pass");
    cpass = document.getElementById("cpass");
    passMsg = document.getElementById("passMsg");
    cpassMsg = document.getElementById("cpassMsg");
    
    if(passFlag == 0){
	    if(pass.value != "" && cpass.value == ""){
			/*passFlag = 1;*/
		}
	}
        if(!pwJ.test($('#pass').val())||empJ.test($('#pass').val())){
        passMsg.style.color = "#FF1493";
        pass.style.border = "1px solid #FF1493";
        passMsg.innerHTML = "유효한 양식이 아닙니다";
        return false;

        }else{
            passMsg.innerHTML = "";
            pass.style.border = "1px solid #ddd";
        }
}


function cpassCheck(){
    let pwJ = /^(?=.*[a-z])(?=.*[0-9]).{6,10}$/; 
    let pass,cpass,passMsg,cpassMsg;
    pass = document.getElementById("pass");
    cpass = document.getElementById("cpass");
    passMsg = document.getElementById("passMsg");
    cpassMsg = document.getElementById("cpassMsg");
    
    if(passFlag==0){
	    if(cpass.value!=""&&pass.value==""){
			passFlag=1;
		}
	}
        if(!pwJ.test($('#cpass').val())||empJ.test($('#cpass').val())){
        cpassMsg.style.color = "#FF1493";
        cpass.style.border = "1px solid #FF1493";
        cpassMsg.innerHTML = "유효한 양식이 아닙니다";
        return false;

        }else{
            cpassMsg.innerHTML = "";
            cpass.style.border = "1px solid #ddd";
        }
}

	
	
	
	
	
	
	
/*
* 리셋 버튼 폼 초기화
*/
function resetForm(){
	$('#joinForm span').empty();
	$('#joinForm input').css("border","1px solid #B4B4FF");
	$('#btn_idCheck').css("border-color","white");
}
}






