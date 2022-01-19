	let empJ = /\s/g;
    let passFlag;
/*
*	마이페이지-내 정보 수정 폼 유효성 체크(공백)
 */
function infoUpdateCheck(){
	let id, pass, cpass,  email1, email2, email3, hp;
	let passMsg, cpassMsg,  emailMsg, hpMsg;
	id = document.getElementById("id");
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
		id.disabled  = false;
		infoUpdateForm.submit();
	}
}
/*
* 마이페이지 - 내 정보 수정 - 비밀번호 유효성 체크
*/
function passCheck(){
	let pwJ = /^(?=.*[a-z])(?=.*[0-9]).{6,10}$/; 
    let pass,cpass,passMsg;
    pass = document.getElementById("pass");
    cpass = document.getElementById("cpass");
    passMsg = document.getElementById("passMsg");
    
    if(passFlag == 0){
	    if(pass.value != "" && cpass.value == ""){
			passFlag = 1;
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
/*
* 마이페이지 - 내 정보 수정 - 비밀번호 확인 유효성 체크
*/
function cpassCheck(){
    let pwJ = /^(?=.*[a-z])(?=.*[0-9]).{6,10}$/; 
    let pass,cpass,cpassMsg;
    pass = document.getElementById("pass");
    cpass = document.getElementById("cpass");
    cpassMsg = document.getElementById("cpassMsg");
    
    if(passFlag==0){
	    if(cpass.value != "" && pass.value == ""){
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
/**
* 마이페이지 - 내 정보 수정 - email 유효성체크
*/
function emailCheck(){
	let email1, email2;
	email1 = document.getElementById("email1");
	email2 = document.getElementById("email2");
	emailMsg = document.getElementById("emailMsg");
	
	if(email1.value != "" && email2.value !=""){
		emailMsg.innerHTML = "";
		email1.style.border = "1px solid #ddd";
		email2.style.border = "1px soldi #ddd"
	}else if(email1.value != ""){
		 emailMsg.innerHTML = "";
        email1.style.border = "1px solid #ddd";
	}else if(email2.value != ""){
        emailMsg.innerHTML = "";
        email2.style.border = "1px solid #ddd";
	}
}	
/*
* 마이페이지 - 내 정보 수정 - 핸드폰 번호 유효성 체크
*/
function hpCheck(){
    let phoneJ = /^01\d\d{3,4}\d{4}$/;
    let hp,hpMsg;
    hp = document.getElementById("hp");
    hpMsg = document.getElementById("hpMsg");
    if(hp.value != ""){
        if(!phoneJ.test($('#hp').val())){
        hpMsg.style.color = "#FF1493";
        hp.style.border = "1px solid #FF1493";
        hpMsg.innerHTML = "유효한 양식이 아닙니다";
    //    $('#hp').val('');
        return false;
        }else{
            hpMsg.innerHTML = "";
            hp.style.border = "1px solid #ddd";
        }
    }
}	
/*
*  마이페이지 - 내 정보 수정 - 이메일 주소 체크
*/
function emailSelectCheck(){
    let email2, email3;
    email2 = document.getElementById("email2");
    email3 = document.getElementById("email3");
    emailMsg = document.getElementById("emailMsg");
    
    if(email3.value == "choice"){
        emailMsg.innerHTML = "mail 주소를 선택해주세요";
        emailMsg.style.color = "#FF1493";
        email2.value = "";      
    }else if(email3.value == "self"){
        emailMsg.innerHTML = "";
        email2.value = "";
        email2.focus();
    }else{
        emailMsg.innerHTML = "";
        email2.value = email3.value;
        email1.style.border = "1px solid #ddd";
        email2.style.border = "1px solid #ddd";
    }
}	
/*
*  마이페이지 - 내 정보 수정 - 비밀번호 일치 체크
*/
function passSameCheck(){
    let pass, cpass, passMsg, cpassMsg;
    pass = document.getElementById("pass");
    cpass = document.getElementById("cpass");
    passMsg = document.getElementById("passMsg");
    cpassMsg = document.getElementById("cpassMsg");
    
    if(pass.value != "" && cpass.value != ""){
        if(pass.value == cpass.value){
            passMsg.innerHTML = "비밀번호가 일치합니다";
            passMsg.style.color = "blue";
            cpassMsg.innerHTML = "";
            pass.style.border = "1px solid #ddd";
            cpass.style.border = "1px solid #ddd";
        //    name.focus();
            return true;
        }else{
            passMsg.innerHTML = "비밀번호가 일치하지 않습니다";
            passMsg.style.color = "#FF1493";
            cpassMsg.innerHTML = "";
            pass.value = "";
            cpass.value = "";
            pass.focus();
            return false;
        }       
    }
}

	
	
	
/*
* 리셋 버튼 폼 초기화
*/
function resetForm(){
	$('#infoUpdateForm span').empty();
	$('#infoUpdateForm input').css("border","1px solid #B4B4FF");
}







