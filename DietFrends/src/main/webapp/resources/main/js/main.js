$(document).ready(function(){

    $('#loginButton').on('click',function() {
    	/* var userid = $('#userid').val();
    	var userpwd = $('#userpwd').val();
    	console.log(userid);*/
    	
    	$.ajax({
    		url : "login",
    		type:"POST",
    		/*serialize는 Form에 항목들의 name의 명과 DTO의 변수명이 동일해야함*/
    		data:$("#loginForm").serialize(),

    		success:function(data){
    			$("#checkTitle").text(data.check);	
    		}//성공
    		,error:function(){
    		}//실패
    	
    	})//로그인 ajax

    });
    

    $('#id').keypress(function(e) {
    	 if(e.which == 13){
    		 if($('#id').val()==''){
    			 $("#checkTitle").text("아이디를 입력해주세요:P");
    		 }else{
    			 $('#pwd').focus();
    		 }
    	 }//enter if
     });  
     
     $('#pwd').keypress(function(e){
    	 if(e.which == 13){   		 
    		 if($(this).val()=='' ){
    			 $("#checkTitle").text("비밀번호를 입력해주세요 :P");
    		 }else{
    			 $("#loginButton").attr("disabled",false); 
    			 $("#loginButton").click();
    		 }   
    	 }//enter if
     });
     
});