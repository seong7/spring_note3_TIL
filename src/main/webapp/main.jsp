<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Spring Note 3</h1>
	1. <a href="home">home</a><br/>
	2. <a href="noteForm">noteFrom</a><br/>
	3. <a href="list">list</a><br/>
	
	<h2> 개발 순서 </h2>
	<ol>
		<li>springNote3 webapp 생성</li>
		<li>web.xml에 filter 추가</li>
		<li>
			pom.xml 수정 및 추가
			<ul>
				<li>java 1.6 -> 1.8</li>
				<li>spring 3.1.1 -> 5.0.7</li>
				<li>spring-jdbc , commons-dbcp, ojdbc6, lombok 추가</li>
				<li>maven-compiler-plugin 2.5.1 , 1.6 -> 3.5.1 , 1.8</li> 
			</ul>
		</li>
		<li>controller, dto, dao 패키지 생성</li>
		<li>NoteDto.java 생성(lombok 기능 추가)</li>
		<li>servlet-context.xml 추가</li>
		<li>NoteDao.java 생성</li>
		<li>NoteController.java 생성 , jsp 생성</li>
	</ol>
</body>
</html>