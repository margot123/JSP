<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@include file ="header.jsp" %>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Connexion</title>
<style type="text/css">
body {
	width: 100%;
	height: 100%;
	background-color: #383838;
}

#txt {
	color: white;
}

#centre {
	text-align: center;
	margin: auto;
	margin-top: 50px;
}

a:visited, a {
	color: DeepPink;
}

button {
	background-color: #505050;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px;
	margin-top: 10px;
}

button:hover, button:focus {
	background-color: DeepPink;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px;
}

input {
	background-color: #505050;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px;
	margin-top: 10px;
	border-style: inset;
	padding: 10px;
}
input:FOCUS, input:ACTIVE, input:HOVER {
	color: DeepPink;
}
h1{color:DeepPink; text-align:center;}
</style>
</head>
<body>

<form method="post">
<div id="centre">
		<input id="txt" type="text" value="" name="loginInput"> <br>
		<input id="txt" type="password" value="" name="pwdInput"><br>
		<input type="submit"value ="Valider"> <br>
	<!-- 	<button onclick="window.location.href='/HelloWorld/Cervelette'">
			Retourner à la liste</button> -->
			
		
	</div>
	</form>
</body>
</html>