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
	<%
	if (request.getParameter("error") != null)
		out.print(request.getParameter("error") + "<br>");
	%>

	<h3 style="margin: 8% auto 2% 2%">Total Cart Value: ${cartValue}</h3>

	<div class="container" style="margin-top: 2%">
		<%
		int i = 0;
		%>
		<table class="table table-bordered">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Sr. No.</th>
					<th scope="col">Product</th>
					<th scope="col">Qty</th>
					<th scope="col">Rate</th>
					<th scope="col">Price</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cartItems}" var="item">
					<tr>
						<td><%=++i%>.</td>
						<td>${item.name }</td>
						<td>${item.rate }</td>
						<td>${item.qty}</td>
						<td>${item.price}</td>
						<td scope="col"><a href="cartdeleteitem?id=${item.productId}">
								<button class="btn btn-danger">
									<i class="fa fa-trash"></i> Remove
								</button>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<br>
	<c:if test="${cartItems.size() > 0}">
		<a href="checkout">Checkout Now</a>
	</c:if>

	<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</body>
</html>