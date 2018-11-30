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
<h1 class="center">ユーザ削除確認</h1>
<br>
<h5 class="left">　ログインID:id0001</h5>
<h5>　を本当に削除してよろしいでしょうか。</h5>
<br><br><br>
<h4 class="center">
<input type="submit" value="キャンセル"style="width:200px;height:50px">
　　　
<input type="submit" value="ОＫ"style="width:200px;height:50px">
</h4>
</body>
</html>