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
<h1 class="center">ユーザ新規登録</h1>
<div class="center">
	<c:if test="${errMsg != null}" >
	    <div class="alert alert-danger" role="alert">
		  ${errMsg}
		</div>
	</c:if>
</div>
<br><br>
<form action="/UserManagement/NewUserServlet" method="post">
<h1 class="center">ログインID　　　　 <input type="text" name="loginId"></h1><br>
<h1 class="center">パスワード 　　　　<input type="password" name="password1"></h1><br>
<h1 class="center">パスワード（確認） <input type="password" name="password2"></h1><br>
<h1 class="center">ユーザ名　　　　　<input type="text" name="name"></h1><br>
<h1 class="center">生年月日　　　　　　　<input type="date" name="birth_date"></h1>
<input type="hidden"value="<%=System.currentTimeMillis() %>" name="create_date">
<input type="hidden"value="<%=System.currentTimeMillis() %>" name="update_date">
<br><br>
<h4 class="center"><input type="submit" value="登録"
style="width:100px;height:50px"></h4>
</form>
<h4 class="left"><a href="UserListServlet">戻る</a></h4>
</body>
</html>