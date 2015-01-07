<%-- <%@page import="HW.UserDTO"%>
<%@page import="java.util.List"%>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>




<%@include file="header.jsp"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hey !</title>
<style type="text/css">
body {
	width: 100%;
	height: 100%;
	background-color: #383838;
}

#txt {
	color: white;
}

a:visited, a {
	color: DeepPink;
}

h1 {
	color: DeepPink;
	text-align: center;
}
</style>
</head>
<body>


<jsp:wrapper></jsp:wrapper>

    

	<!-- <ul> -->

	<%-- <%String texttodisplay =(String)request.getAttribute("texttodisplay");  %>
<%=texttodisplay.toUpperCase() %> --%>

	<%-- <%
		List<HW.UserDTO> UserDTOs = (List) request.getSession()
				.getAttribute("UserDTOs");
	%> --%>



	<c:forEach var="user" items="${UserDTOs}">



		<c:url value="Cervelette2" var="formulaire">
			<c:param name="unid" value="${user.id}" />
		</c:url>

		<span id="txt">Nom : <a href="${formulaire}"> <c:out
					value="${user.login}" /></a> 
					
					
					<c:url value="Cervelette2" var="modifier">
				<c:param name="modification" value="${user.id}" />
			</c:url> <a href="${modifier}"><img alt="modification"
				src="http://www.iconsdb.com/icons/preview/deep-pink/edit-xxl.png"
				width="20px" height="20px"></a> 
				
				<c:url value="Cervelette2" var="supprimer">
				<c:param name="suppression" value="${user.id}" />
			</c:url> <a href="${supprimer}"><img alt="suppression"
				src="http://www.iconsdb.com/icons/preview/deep-pink/delete-xxl.png"
				width="20px" height="20px"></a>
		</span>
		<br>

	</c:forEach>
	<br>
	<c:url value="Cervelette2" var="creer">
		<c:param name="creation" value="fs" />
	</c:url>
	<a href="${creer}"><img alt="création"
		src="http://www.iconsdb.com/icons/preview/deep-pink/new-badge-xxl.png"
		width="20px" height="20px"></a>



	<%-- <%
		for (UserDTO user : UserDTOs) {
	%>
	<a href="Cervelette2?unid=<%= user.getId() %>">
	<li><span id="txt"> Nom :</span>
	<span id="txt"><%=user.getLogin()%> </span>
	<br />

</li></a>
	<%
		}
	%>
</ul> 
 --%>
</body>
</html>