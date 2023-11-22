<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reports Page</title>
</head>
<body>
	<c:choose>
		<c:when test="${policiesList ne null || !empty policiesList}">
			<table border="1" align="center"> 
				<tr>
					<th>Policy ID</th>
					<th>Policy Name</th>
					<th>Policy Type</th>
					<th>Policy Tenure</th>
				</tr>
				
				<c:forEach items="${policiesList}" var="dto">
					<tr>
						<td>${dto.pid}</td>
						<td>${dto.pname}</td>
						<td>${dto.ptype}</td>
						<td>${dto.tenure}</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
	</c:choose>
</body>
</html>