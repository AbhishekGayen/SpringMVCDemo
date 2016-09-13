<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="label.title"/></title>
</head>
<body>
	<link rel="stylesheet" href="<spring:theme code='styleSheet'/>" type="text/css"/>
	
	<p><a href="/SpringMVCExamples/admissionForm?siteTheme=red">Red</a> |
	<a href="/SpringMVCExamples/admissionForm?siteTheme=green">Green</a></p>
	
	<p><a href="/SpringMVCExamples/admissionForm?siteLanguage=en">English</a> |
	<a href="/SpringMVCExamples/admissionForm?siteLanguage=fr">French</a></p>
	
	<h1><spring:message code="label.heading"/></h1>
	<form:errors path="student1.*" />
	<form action="/SpringMVCExamples/submissionForm" method="post">
		<table align="center" border="1px">
			<tr>
				<td><spring:message code="label.studentName" /></td>
				<td><input type="text" name="studentName" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.studentHobby" /></td>
				<td><input type="text" name="studentHobby" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.studentMobile" /></td>
				<td><input type="text" name="studentMobileNumber" /></td>
			</tr>

			<tr>
				<td><spring:message code="label.studentDOB" /></td>
				<td><input type="text" name="studentDOB" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.studentSkillSet" /></td>
				<td><select name="studentSkills" multiple="multiple">
						<option value="Java Core">Java Core</option>
						<option value="Spring Core">Spring Core</option>
						<option value="Spring MVC">Spring MVC</option>
						<option value="Spring DAO">Spring DAO</option>
				</select></td>
			</tr>
		</table>
		<table align="center" border="1px">
			<tr>
				<td><spring:message code="label.country" /></td>
				<td><input type="text" name="studentAddress.country" /></td>
				<td><spring:message code="label.city" /></td>
				<td><input type="text" name="studentAddress.city" /></td>
				<td><spring:message code="label.street" /></td>
				<td><input type="text" name="studentAddress.street" /></td>
				<td><spring:message code="label.pinCode" /></td>
				<td><input type="text" name="studentAddress.pinCode" /></td>
			</tr>
			<tr>
				<td>&nbsp</td>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form>
</body>
</html>