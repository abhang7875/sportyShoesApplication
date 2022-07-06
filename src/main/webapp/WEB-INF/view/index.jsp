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
<style>
.table {
	margin: 10% auto;
}
</style>
</head>
<body class="d-flex flex-column min-vh-100">
	<nav class="navbar navbar-dark navbar-expand-sm bg-dark fixed-top">
		<jsp:include page="/WEB-INF/view/components/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/view/components/topbar.jsp"></jsp:include>
	</nav>
	<div class="container" style="margin-top: 2%">
		<%
		int i = 0;
		%>
		<table class="table table-bordered">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Sr. No.</th>
					<th scope="col">Product</th>
					<th scope="col">Price</th>
					<th scope="col">Category</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="item">
					<tr>
						<td scope="col">${i}</td>
						<td scope="col">${item.name }</td>
						<td scope="col">${item.price }</td>
						<td scope="col">${mapCats.get(item.ID)}</td>
						<td scope="col"><a href="cartadditem?id=${item.ID}">
								<button class="btn btn-success">
								<i class="fa fa-shopping-cart"></i> Add To Cart</button>
						</a></td>
					</tr>
					<%
					++i;
					%>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</body>
</html>