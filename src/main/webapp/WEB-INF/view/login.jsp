<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Sporty Shoes - Login</title>
<style>
#loginMenu{
	width:40%;
	margin-top:8%;
}
</style>
</head>
<body class="d-flex flex-column min-vh-100">
	<nav class="navbar navbar-dark navbar-expand-sm bg-dark fixed-top">
		<jsp:include page="/WEB-INF/view/components/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/view/components/topbar.jsp"></jsp:include>
	</nav>

	<div class="container" id="loginMenu">
		<h1 style="text-align:center">LOGIN</h1>
		<div id="error">${error}</div>
		<form method="post" action="loginaction" id="loginForm"
			name="frmLogin">
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text"><i class="fa fa-user"></i></span>
				</div>
				<input id="email" type="text" class="form-control" name="email_id"
					placeholder="Email">
			</div>

			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text"><i class="fa fa-key"></i></span>
				</div>
				<input id="password" type="password" class="form-control"
					name="password" placeholder="Password">
			</div>
			<button type="submit" class="btn btn-info">
				<i class="fa fa-sign-in fa-fw"></i> Login
			</button>
		</form>
		<a class="showLogin btn login" href="signup">Not a member? Signup</a>
	</div>

	<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</body>
</html>