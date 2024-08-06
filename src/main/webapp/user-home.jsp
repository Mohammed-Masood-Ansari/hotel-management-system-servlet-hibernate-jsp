<%@page import="com.ibm.hotel_management_system.dto.Hotel"%>
<%@page import="java.util.List"%>
<%@page import="com.ibm.hotel_management_system.admin.dao.HotelDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user-home-page</title>

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.3.2/mdb.min.css"
	rel="stylesheet" />
</head>
<body>
	<%
	List<Hotel> hotels = new HotelDao().getAllVerifiedHotelDetailsDao();
	%>
	<jsp:include page="user-navbar.jsp"></jsp:include>
	<h4>user-home-page</h4>


	<div class="card"
		style="width: 18rem; display: flex; flex-direction: row; margin-bottom: 1rem;">
		<%
		for (Hotel hotel : hotels) {
		%>
		<img class="card-img-top"
			src="data:image/jpeg;base64,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"
			alt="Card image cap" style="width: 100%; object-fit: cover;">
		<div class="card-body">
			<h5 class="card-title">Card title</h5>
			<p class="card-text">Some quick example text to build on the card
				title and make up the bulk of the card's content.</p>
			<a href="#" class="btn btn-primary">Go somewhere</a>
		</div>

		<%
		}
		%>
	</div>


</body>
</html>