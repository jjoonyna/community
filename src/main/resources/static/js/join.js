function check(){
	var id=document.getElementById("email");
	var passwd=document.getElementById("password");
	var passcheck=document.getElementById("passcheck");
	var name=document.getElementById("name");
	var nickname=document.getElementById("nickname")
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
	if(passwd.value.length<6||passwd.value.length>15){
		alert("비밀번호는 6~15자 이내로 입력해주세요");
		passwd.value="";
		passwd.focus();
		return false;
	}
	if(passcheck.value==passwd.value){
		alert("비밀번호와 다릅니다");
		passcheck.value="";
		passcheck.focus();
		return false
	}
	if(name.value==""){
		alert("이름을 입력해주세요")
		name.focus();
		return false;
	}
	if(nickname.vlaue==""){
		alert("닉네임을 입력해주세요")
		nickname.focus();
		return false;
	}
}

function idCheck(){
	$("#idcheck").hide();
	var memid=$("#id").val();
	$.ajax({
		type:"POST",
		url:"idcheck",
		data: {"memid":memid},
		success: function(data){
			if(data==1){
				var newtext='<font color="red">중복 아이디입니다.</font>';
      			$("#idcheck").text('');
        		$("#idcheck").show();
        		$("#idcheck").append(newtext);
          		$("#id").val('').focus();
          		return false;
			}else{
			var newtext='<font color="blue">사용가능한 아이디입니다.</font>';
      		$("#idcheck").text('');
      		$("#idcheck").show();
      		$("#idcheck").append(newtext);
      		$("#password").focus();
			}
		},
		error:function(e){
			alert("data error"+e);
		}
	});
}

function nicknameCheck(){
	$("#nicknameCheck").hide();
		var memnickname=$("#nickname").val();

	$.ajax({
		type:"POST",
		url:"nicknamecheck",
		data: {"memnickname":memnickname},
		success: function(data){
			if(data==1){
				var newtext='<font color="red">중복 닉네임입니다.</font>';
      			$("#nicknameCheck").text('');
        		$("#nicknameCheck").show();
        		$("#nicknameCheck").append(newtext);
          		$("#nickname").val('').focus();
          		return false;
			}else{
			var newtext='<font color="blue">사용가능한 닉네임입니다.</font>';
      		$("#nicknameCheck").text('');
      		$("#nicknameCheck").show();
      		$("#nicknameCheck").append(newtext);
			}
		},
		error:function(e){
			alert("data error"+e);
		}
	});
}

