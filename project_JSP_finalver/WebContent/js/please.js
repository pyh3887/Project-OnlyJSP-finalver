

function search(){

	if(frm.search.value == ""){
		alert("입력하세요");
		frm.search.focus();
		return;
	}	
	
	frm.submit();
	
}



var xhr;
var checkFirst = loopSend = false;


function sijak() {
	

	if (checkFirst === false) {
		kbs = setTimeout("sendKeyword()", 1000); // setInterval()
		loopSend = true;

	}

}

function sendKeyword() {
	// console.log('good');
	if (loopSend === false)
		return;

	var search = document.frm.search.value;
	// console.log(keyword);
	if (search === "") {
		hide();
	} else {
		var para = "search=" + search
		xhr = new XMLHttpRequest();
		xhr.open("post", "searchajax.jsp", true);
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
				if (xhr.status == 200) {
					processPost();
				} else {
					alert("요청 실패 : " + xhr.status);
				}
			}
		}
		xhr.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded");
		xhr.send(para);

	}
	// clear Timeout();

}

function processPost(){
	var data = xhr.responseText;
	
	
	var result = data.split("|"); 
	var tot = result[0]; 
	if(tot>0){
		var datas = result[1].split(",");
		var imsi = "";
		for (var i = 0; i < datas.length; i++) {
			imsi += "<a href=\"javascript:func('" + datas[i] + "')\">" + datas[i] + "</a><br>";
			
		}
		// alert(imsi);
		
	}
	
	var listView = document.getElementById("suggestList");
	listView.innerHTML = imsi;
	show();
	
	
}

function func(arg){
	// alert(arg);
	
	location.href="menu_all.jsp?search="+arg;

}

function hide() {
	document.getElementById("suggest").style.display = "none";

}
function show() {
	document.getElementById("suggest").style.display = "";

}


function total(){
	
	alert("a")
}



function motel(){
	alert("b")
}

function hotel(){
	alert("c")	
	
}

function guest(){
	
	
}

function pension(){
	
	
}

function button_click(val){
	frm2.sleep_place.value= val;
	frm2.submit();
}