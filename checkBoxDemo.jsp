<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<sf:form action="checkBoxDemo.mvc" modelAttribute="cForm" method="get">
		<c:forEach var="str" items="${list}" varStatus="loop">
			${str} <input type="checkbox" name="list[${loop.index}]" value="${str}">  <br/>
		</c:forEach>
		<input type="submit" value="submit">
	</sf:form>
		
</body>
</html>
