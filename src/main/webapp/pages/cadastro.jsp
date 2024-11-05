<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:set var="headerTitle" value="CADASTRO"/>
    <c:out value="${headerTitle}"/>
    <jsp:include page="header.jsp" />
</body>
</html>
