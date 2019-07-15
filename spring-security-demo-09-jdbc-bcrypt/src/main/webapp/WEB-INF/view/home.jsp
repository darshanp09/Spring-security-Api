<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Security</title>
</head>
<body>
<h2>WELCOME TO THE COMPANY HOMEPAGE</h2>
<hr>
<p>
	Company Home Page - Coming Soon.
</p>
<hr>
	<p>
		User : <security:authentication property="principal.username"/>     <!--   SPECIAL   -->
		<br><br>
		Role(s) : <security:authentication property="principal.authorities"/>
	</p>
	<hr>
	<security:authorize access="hasRole('MANAGER')">
		<p>
			<a href="${pageContext.request.contextPath }/leaders">Leadership Meeting</a>
			(Only for Admin peeps)
		</p>
	
	</security:authorize>
	
		
		<security:authorize access="hasRole('ADMIN')">
		<hr>
		<p>
			<a href="${pageContext.request.contextPath }/systems">IT Systems Meeting</a>
			(Only for manager peeps)
		</p>
		</security:authorize>
<hr>
	
	<form:form action="${pageContext.request.contextPath }/logout" method="POST">
	
		<input type="submit" value="Logout"/>
	</form:form>

</body>
</html>