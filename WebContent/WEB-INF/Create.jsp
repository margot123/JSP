<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file ="header.jsp" %>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Formulaire de contacts</title>
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

	<%-- <input type="text" value ="<%=request.getSession().getAttribute("nom")  %>">
<input type="password" value ="<%=request.getSession().getAttribute("mot de passe")  %>"> --%>
	<div id="centre"><form method="post">
		<input id="txt" type="text" name="nouveaunom" value="<c:out
					value="${user.login}" />"> <br>
		<input id="txt" type="text"  name="nouveaupwd" value="<c:out
					value="${user.pwd}" />"> <br>

		<button type="submit">
			Enregistrer</button>
		</form>
	</div>
</body>
</html>