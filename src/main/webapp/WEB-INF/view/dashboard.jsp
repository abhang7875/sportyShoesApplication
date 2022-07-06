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
<title>Sport Shoes</title>
</head>
<body class="d-flex flex-column min-vh-100">
	<nav class="navbar navbar-dark navbar-expand-sm bg-dark fixed-top">
		<jsp:include page="/WEB-INF/view/components/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/view/components/topbar.jsp"></jsp:include>
	</nav>


	<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</body>
</html>