function inputCheck(){
	if(regForm.gogek_id.value === ""){
		alert("아이디를 입력하세요");
		regForm.gogek_id.focus();
		return;
	}
	if(regForm.gogek_passwd.value === ""){
		alert("비밀번호를 입력하세요");
		regForm.gogek_passwd.focus();
		return;
	}
	
	if(regForm.gogek_name.value === ""){
		alert("이름을 입력하세요");
		regForm.gogek_name.focus();
		return;
	}

	var regExp2 = /^\d{3}-\d{3,4}-\d{4}/;
	if(!regForm.gogek_tel.value.match(regExp2)){
		alert("번호를 정확히 입력하세요");
		regForm.gogek_tel.focus();
		return;
	}
	
	regForm.submit();
}


