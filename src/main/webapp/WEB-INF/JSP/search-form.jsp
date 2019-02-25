<%@page import="org.slf4j.LoggerFactory"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>

<%
LoggerFactory.getLogger("search-form.jsp").debug("Display serach-form.jsp");
%>
<html>
<body>
	<h2>Input name</h2>
	<c:if test="${invalid }">
	<h5 style="color:red;">Please input correct value!!!</h5>
	</c:if>
	<form action="/search" method="post">
		<input name="query" />
		<input type="submit" value="Search" />
	</form>
</body>
</html>