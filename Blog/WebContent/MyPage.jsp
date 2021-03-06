<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="jp.joyworks.blog.dto.UserDTO" %>
<%
	//セッションスコープからユーザー情報を取得
	UserDTO loginuser = (UserDTO)session.getAttribute("loginUser");
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ログイン管理画面</title>
</head>

<body>
	<h1>マイページ</h1>
	<% if (loginuser != null) { %>

	<p>
		ログインユーザー:<%= loginuser.getName() %>さん
	</p>
	<p>管理者メニュー</p>

	<br>

	<p>新しく記事を書く</p>
	<input type="button" value="書く" onclick="location.href='/Blog/UpeditArticle.jsp'">

	<p>過去記事リスト</p>
	<form action="/Blog/UserArticleListServlet" method="get">
	<input type="submit" value="リスト">
	</form>

	<br><br><br>

	TOPは
	<a href="/Blog/TopPageServlet">こちら</a>。

	<%	} else { %>

	<p>
		<span style="color: red">ユーザー情報が確認できません</span>
	</p>
	<p>ログインしてください</p>
	<a href="/Session/Login.jsp">ログインへ</a>

	<% } %>

</body>
</html>