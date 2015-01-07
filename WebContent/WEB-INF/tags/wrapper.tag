<%@tag description="User Page template" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@attribute name="user.login" required="true"%>
<t:wrapper>
<h1 color: white> Bienvenue "${user.login}"</h1>
</t:wrapper>