<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Admission success Form</title>
</head>
<body>
	<h1 align="center">Congratulation!! The Engineering College has proceed your
		application form successfully</h1>

	<h2 align="center">${msg}</h2>

	<table border="1px" align="center">
		<tr>
			<td>Student Name</td>
			<td>${student1.studentName}</td>
		</tr>

		<tr>
			<td>Student Hobby</td>
			<td>${student1.studentHobby}</td>
		</tr>
		
		<tr>
			<td>Student Mobile Number</td>
			<td>${student1.studentMobileNumber}</td>
		</tr>
		
		<tr>
			<td>Student DOB</td>
			<td>${student1.studentDOB}</td>
		</tr>
		
		<tr>
			<td>Student Skill's</td>
			<td>${student1.studentSkills}</td>
		</tr>
		
		<tr>
			<td>Student Address</td>
			<td>
				${student1.studentAddress.country}
				${student1.studentAddress.city}
				${student1.studentAddress.street}
				${student1.studentAddress.pinCode}
			</td>
		</tr>
	</table>
</body>
</html>