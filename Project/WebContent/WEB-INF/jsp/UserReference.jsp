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
<header>
<div class="p-3 mb-2 bg-dark text-white">
<h4 class="end">${userInfo.name} さん　　<a href="LogoutServlet">ログアウト</a></h4>
</div>
</header>
<br>
<h1 class="center">ユーザ情報詳細参照</h1>
<br><br>

<c:forEach var="user" items="${userList}">
<h1 class="center">${user.loginId}</h1><br>
<h1 class="center">${user.name}</h1><br>
<h1 class="center">${user.birthDate}</h1><br>
<h1 class="center">${user.createDate}</h1><br>
<h1 class="center">${user.updateDate}</h1><br>
</c:forEach>

<h4 class="left"><a href="UserListServlet">戻る</a></h4>
</body>
</html>