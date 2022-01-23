/**
 * 아이디 찾기 결과 출력 
 */
 
function getFindIdResult(id){
    if(id.value!=""){
        if(confirm('회원님의 아이디는'+id+'입니다. 로그인으로 이동하시겠습니까?')){
            location.href='http://localhost:9000/dream/login/login.jsp'
            }else{
                location.href='http://localhost:9000/dream/login/forgotpw.jsp'
            } 
        }else{
            alert('일치하는 회원 정보가 없습니다.')
            history.back()
    }
}

    let passFlag=0;
    let pwJ = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,10}$/;
    let empJ = /\s/g; 
    let pass,cpass,passMsg,cpassMsg;
    pass = document.getElementById("pass");
    cpass = document.getElementById("cpass");
    passMsg = document.getElementById("passMsg");
    cpassMsg = document.getElementById("cpassMsg");
    
function updatePassworFormCheck(){
	if(pass.value == ""){
		passMsg.innerHTML = "비밀번호를 입력해주세요";
		passMsg.style.color = "#FF1493";
		pass.style.border = "1px solid #FF1493";
		pass.focus();
		return false;
	}else if(cpass.value == ""){
		cpassMsg.innerHTML = "비밀번호 확인을 입력해주세요";
		cpassMsg.style.color = "#FF1493";
		cpass.style.border = "1px solid #FF1493";
		cpass.focus();
		return false;
	}else if(!pwJ.test($('#pass').val())||empJ.test($('#pass').val())){
		passMsg.innerHTML = "양식을 확인해주세요";
		passMsg.style.color = "#FF1493";
		pass.style.border = "1px solid #FF1493";
		cpassMsg.innerHTML = "";
		cpass.style.border = "1px solid #ddd";
		pass.value="";
		cpass.value="";
		pass.focus();
		return false;
	}else{
		forgotid_form.submit();
	}
}

/*
    회원가입 - 비밀번호 유효성 체크
*/
function passCheck(){
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
    회원가입 - 비밀번호 일치 체크
*/
function passSameCheck(){
	if(pass.value != "" && cpass.value != ""){
		if(pass.value == cpass.value){
			passMsg.innerHTML = "비밀번호가 일치합니다";
			passMsg.style.color = "blue";
			cpassMsg.innerHTML = "";
			pass.style.border = "1px solid #ddd";
			cpass.style.border = "1px solid #ddd";
			return true;
		}else{
			passMsg.innerHTML = "비밀번호가 일치하지 않습니다";
			passMsg.style.color = "#FF1493";
			cpassMsg.innerHTML = "";
	        pass.style.border = "1px solid #ddd";
	        cpass.style.border = "1px solid #ddd";
			pass.value = "";
			cpass.value = "";
			pass.focus();
			return false;
		}		
	}
}

