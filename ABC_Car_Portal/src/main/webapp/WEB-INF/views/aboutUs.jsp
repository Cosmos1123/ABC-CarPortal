<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<!-- Access the Static Resources  using spring Url  -->
<!--
<spring:url value="/css/style.css" var="myCss" />
<spring:url value="/js/custom.js" var="myJS" />

<link href="${myCss}" rel="stylesheet" />
<script src="${myJS}"></script>
-->

<!--  Access the Static Resources without using spring URL -->
<link href="/ABC_Car_Portal/css/style.css" rel="stylesheet" />
<script src="/ABC_Car_Portal/js/custom.js"></script>

</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid aboutus" >
		<div class="jumbotron">
			<h3 style="color:black;">ABOUT US!</h3>



			<p class="lead" style="color:black;">ABC car portal is a leading digital marketplace and solutions provider for the automotive industry that connects car 
			shoppers with sellers. Launched in 2020 and headquartered in Myanmar, the Company empowers shoppers with the data,
			 resources and digital tools needed to make informed buying decisions and seamlessly connect with automotive retailers.</p>

			<hr class="my-4" >
			<p style="color:black;">We also help buyers with less-than-perfect credit find special
				financing options through our network of trusted lending partners.</p>
			<p class="lead">
				<a class="btn btn-success btn-lg" href="new" role="button">Join Us!</a>
			</p>
		</div>
	</div>


	<%@ include file="footer.jsp"%>

</body>
</html>
