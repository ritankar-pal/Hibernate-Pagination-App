<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input Page</title>
</head>
<body>
	<h1 style="color: red; text-align: center;">Welcome to LIC</h1>
	<form action="./controller" method="get">
		<table align="center">
			<tr>
				<th><h2>Enter Page Size</h2></th>
				<td>
					<input type="text" name="pageSize"/>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="submit" value="generateReport" name='s1'/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>