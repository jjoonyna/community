
function check(){
	var id=document.getElementById("email");
	var passwd=document.getElementById("password");
	
	if(id.value==""){
		alert("ID를 입력해주세요");
		id.focus();
		return false;
	}
	if(passwd.value==""){
		alert("비밀번호를 입력해주세요")
		passwd.focus();
		return false;
	}
	
}