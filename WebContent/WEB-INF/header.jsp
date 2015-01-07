<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header</title>
<style type="text/css">
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
</style>
</head>
<body>
<h1>Salut <c:out value ="${connectedUser.login}"/> !</h1>

<a href="Deconnect"> Se déconnecter </a> <br><br>
</body>
</html>