<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet"href="css/style.css">
<title>Insert title here</title>
</head>
<body>

<br><br>
<h1 class="center">ログイン画面</h1>
<div class="center">
	<c:if test="${errMsg != null}" >
	    <div class="alert alert-danger" role="alert">
		  ${errMsg}
		</div>
	</c:if>
</div>
<br><br><br>
<form action="/UserManagement/LoginServlet" method="post">
<h1 class="center">ログインID <input type="text" name="loginId"></h1><br>
<h1 class="center">パスワード <input type="password" name="password"></h1>
<br><br>
<h1 class="center"><input type="submit" value="ログイン"></h1>
</form>
</body>
</html>