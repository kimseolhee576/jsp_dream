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

/*
    회원가입 - 비밀번호 유효성 체크
*/
    passFlag=0;
function passCheck(){
    alert('확인');
    let pwJ = /^(?=.*[a-z])(?=.*[0-9]).{6,10}$/; 
    let pass,cpass,passMsg,cpassMsg;
    pass = document.getElementById("pass");
    cpass = document.getElementById("cpass");
    passMsg = document.getElementById("passMsg");
    cpassMsg = document.getElementById("cpassMsg");
    if(cpass.value==""){
        passFlag=0;
    }
    if(passFlag==0){
        if(!pwJ.test($('#pass').val())||empJ.test($('#pass').val())){
        passMsg.style.color = "#FF1493";
        pass.style.border = "1px solid #FF1493";
        passMsg.innerHTML = "유효한 양식이 아닙니다";
        return false;

        }else{
            passMsg.innerHTML = "";
            pass.style.border = "1px solid #ddd";
        }
    }else if(passFlag==1){
        passMsg.style.color = "#FF1493";
        pass.style.border = "1px solid #FF1493";
        passMsg.innerHTML = "비밀번호 일치 확인 중";
    }else if(passFlag==2){
        cpassMsg.style.color = "#FF1493";
        cpass.style.border = "1px solid #FF1493";
        cpassMsg.innerHTML = "비밀번호 일치 확인 중";
    }
}

/*
    회원가입 - 비밀번호 일치 체크
*/
function passSameCheck(){
    let pass, cpass, name, passMsg, cpassMsg;
    pass = document.getElementById("pass");
    cpass = document.getElementById("cpass");
    name = document.getElementById("name");
    passMsg = document.getElementById("passMsg");
    cpassMsg = document.getElementById("cpassMsg");
    
        if(pass.value!=""&&cpass.value==""){
            passFlag=1;
        }else if(pass.value==""&&cpass.value!=""){
            passFlag=2;
        }
    if(pass.value != "" && cpass.value != ""){
        if(pass.value == cpass.value){
                passMsg.innerHTML = "";
                cpassMsg.innerHTML = "";
                pass.style.border = "1px solid #ddd";
                cpass.style.border = "1px solid #ddd";
            if(passFlag==1){
                passMsg.innerHTML = "비밀번호가 일치합니다";
                passMsg.style.color = "blue";
                return true;
            }else if(passFlag==2){
                cpassMsg.innerHTML = "비밀번호가 일치합니다";
                cpassMsg.style.color = "blue";
                return true;
            }
        }else{
            if(passFlag==1){
                passMsg.innerHTML = "비밀번호가 일치하지 않습니다";
                passMsg.style.color = "#FF1493";
                cpassMsg.innerHTML = "";
                pass.value = "";
                cpass.value = "";
                pass.focus();
                return false;
            }else if(passFlag==2){
                cpassMsg.innerHTML = "비밀번호가 일치하지 않습니다";
                cpassMsg.style.color = "#FF1493";
                passMsg.innerHTML = "";
                cpass.value = "";
                pass.value = "";
                cpass.focus();
                return false;
            }
        }       
    }
}

