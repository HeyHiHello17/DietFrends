<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>

<style type="text/css">
	body{padding: 50px;}
	.graph{height: 40px; background: #ccc; border-radius: 40px;}
	
	.graph sapn{
		display: block; padding:0 10px; width:75% ;height: 40px; line-height: 40px;
		text-align: right; background: violet; border-radius: 40px;
		box-sizing: border-box; color: #fff; 
		animation: stack 2s 1;
	}	
	
	@keyframes stack{
		0% {width:0; color: rgba(255,255,255,0);}
		40% {color: rgba(255,255,255,0);}
	}

</style>

</head>
<body>
 
 	<div class="graph">
 		<span>75%</span>
 	</div>

</body>
</html>