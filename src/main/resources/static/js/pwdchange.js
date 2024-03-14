function check(){
	var passwd=document.getElementById("password");
	var newpasswd=document.getElementById("newpassword");
	var passcheck=document.getElementById("passcheck");
	if(passwd.value==""){
		alert("현재비밀번호를 입력해주세요")
		passwd.focus();
		return false;
	}
	if(newpasswd.value==""){
		alert("새로운 비밀번호를 입력해주세요")
		newpasswd.focus();
		return false;
	}
	if(passwd.value.length<6||passwd.value.length>15){
		alert("비밀번호는 6~15자 이내로 입력해주세요");
		passwd.value="";
		passwd.focus();
		return false;
	}
	if(newpasswd.value.length<6||newpasswd.value.length>15){
		alert("비밀번호는 6~15자 이내로 입력해주세요");
		newpasswd.value="";
		newpasswd.focus();
		return false;
	}
	if(passcheck.value!=newpasswd.value){
		alert("새로운 비밀번호가 비밀번호확인과 다릅니다");
		passcheck.value="";
		passcheck.focus();
		return false
	}

}