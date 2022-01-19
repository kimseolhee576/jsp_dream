
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
	
	
	/*let checkList=[passMsg, cpassMsg,  emailMsg, hpMsg];
    let checkListCount=0;
    
    for(let i=0; i<checkList.length; i++){
		if(checkList[i].innerHTML == "유효한 양식이 아닙니다"){
			checkListCount++;
		}
	}*/
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
}






