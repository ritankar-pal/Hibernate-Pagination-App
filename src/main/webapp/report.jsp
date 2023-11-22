<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reports Page</title>
</head>
<body>
	<h1 style="color: red;" align="center">Insurance Reports</h1><br/><br/>
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
	
	<div  align="center">
		<c:if test="${pageNo > 1}">
			<b><a href="./controller?pageNo=${pageNo-1}&s1=link">previous</a></b> &nbsp;&nbsp;
		</c:if>
		
		<c:forEach var="i" begin="1" end="${pagesCount}" step="1">
			<b><a href="./controller?pageNo=${i}&s1=link">[${i}]</a></b> &nbsp;&nbsp;
		</c:forEach>
		
		<c:if test="${pageNo < pagesCount}">
			<b><a href="./controller?pageNo=${pageNo+1}&s1=link">next</a></b>
		</c:if>
	</div>
	<br/>
	<br/>
	<div align="center">
		<h1>
			<a href="./index.jsp">HOME</a>
		</h1>
	</div>
	
</body>
</html>