<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<s:url value="/css/style2.css" var="style" />
<link rel="STYLESHEET" type="text/css" href="${style}" />

<h2>Administrator Login</h2>

<div>
	<form:form modelAttribute="admin" method="POST"
		action="${pageContext.request.contextPath}/adminlogin">
		<table class="table table-borderless" style="width: 250px">
			<tr>
				<td><s:message code="Username" /></td>
				<td colspan="3"><form:input path="username" size="40" /></td>
			</tr>
			<tr>
				<td><s:message code="Password" /></td>
				<td colspan="3"><form:password path="password" size="40" /></td>
			</tr>
			<tr>
				<td></td>
				<td><p class="errormessage">${message}</p></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Submit" class="btn btn-warning" /></td>
				<td><input type="reset" value="Clear" class="btn btn-warning" /></td>
			</tr>
		</table>
	</form:form>
</div>
</html>