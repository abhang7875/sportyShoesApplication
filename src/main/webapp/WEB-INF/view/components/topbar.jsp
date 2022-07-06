<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>

<ul class="navbar-nav ml-auto">
	<li class="nav-item"><a class="nav-link" href="home">
			<button class="btn btn-primary">
				<i class="fa fa-home"></i> Home
			</button>
	</a></li>
	<%
	if (session.getAttribute("user_id") != null) {
	%>
	<li class="nav-item"><a class="nav-link" href="login">
			<button class="btn btn-success">
			<i class="fa fa-sign-in"></i> Login/Signup</button>
	</a></li>
	<%
	} else {
	%>
	<li class="nav-item"><a class="nav-link" href="dashboard">
			<button class="btn btn-info">
			<i class="fa fa-tachometer"></i> Dashboard</button>
	</a></li>
	<li class="nav-item"><a class="nav-link" href="cart">
			<button class="btn btn-warning">
			<i class="fa fa-shopping-cart"></i> Cart</button>
	</a></li>
	<li class="nav-item"><a class="nav-link" href="logout">
			<button class="btn btn-danger">
			<i class="fa fa-sign-out"></i> Logout</button>
	</a></li>
	<li class="nav-item"><a class="nav-link" href="editprofile">
			<button class="btn btn-light">
			<i class="fa fa-pencil-square-o"></i> Edit Profile</button>
	</a></li>
	<li class="nav-item"><a class="nav-link" href="memberpurchases">
			<button class="btn btn-secondary">
			<i class="fa fa-first-order"></i> Your Orders</button>
	</a></li>
	<%
	}
	%>
</ul>