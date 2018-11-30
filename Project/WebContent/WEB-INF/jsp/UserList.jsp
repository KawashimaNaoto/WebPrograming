<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet"href="css/style.css">
<title>Insert title here</title>
</head>
<header>
<div class="p-3 mb-2 bg-dark text-white">
<h4 class="end">${userInfo.name} さん　　<a href="LogoutServlet">ログアウト</a></h4>
</div>
</header>
<br>
<h1 class="center">ユーザ一覧</h1><br>
<h4 class="end"><a href="NewUserServlet">新規登録</a></h4>
<form method="post" action="#">
<h1 class="center">ログインID　　　<input type="text" name="login"></h1><br>
<h1 class="center">ユーザ名　　　　<input type="text" name="name"></h1><br>
<h1 class="center">生年月日　　　　<input type="date" name="barth1">～<input type="date" name="barth2"></h1>
</form>
<h4 class="end"><input type="submit" value="検索"
style="width:100px;height:30px"></h4>

<hr>

<table class="table table-bordered">
  <thead class="thead-light">
    <tr>
      <th scope="col">ログインID</th>
      <th scope="col">ユーザ名</th>
      <th scope="col">生年月日</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
<c:forEach var="user" items="${userList}" >
                   <tr>
                     <td>${user.loginId}</td>
                     <td>${user.name}</td>
                     <td>${user.birthDate}</td>
                     <!-- TODO 未実装；ログインボタンの表示制御を行う -->
                     <td>
                       <a class="btn btn-primary" href="UserReferenceServlet?id=${user.id}">詳細</a>
                       <a class="btn btn-success" href="UserUpdateServlet?id=${user.id}">更新</a>
                       <a class="btn btn-danger" href ="UserDeleteServlet?id=${user.id}">削除</a>
                     </td>
                   </tr>
                 </c:forEach>
  </tbody>
</table>
</body>
</html>