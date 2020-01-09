<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>
				번호
			</th>
			<th>
				작성자
			</th>
			<th>
				내용			
			</th>
		</tr>
		<c:forEach var="dto" items="${list }">
			<form action="delete">
				<tr>
					<td>
						<input type="text" name="id" value="${dto.id }">
					</td>
					<td>${dto.writer }</td>
					<td>${dto.content }</td>
					<td>
						<input type="submit" value="삭제">
					</td>
				</tr>
			</form>
		</c:forEach>
	</table>

</body>
</html>