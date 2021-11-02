<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
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
	<div class="container-fluid bg-success text-center" style="height:700px;padding-top:10px;">
		<h3 class="margin" style="color:black;">To Login!Register Here.. </h3>

		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


				<c:if test="${register_success != null}">
					<div class="alert alert-success">
						<p>${register_success} Click <a href="login"> Sign In</a> to use our portal...</p>
					</div>
				</c:if>

			<form:form action="save" method="post" modelAttribute="user">
				<div class="form-group">
					<label for="name"  style="color:black;"> Name:</label>
					<form:input path="name" class="form-control" required="true"/>
				</div>
				
				<div class="form-group"  style="color:black;">
					<label for="email">Email:</label>
					<form:input path="email" class="form-control" required="true"/>
				</div>
				
				
				<div class="form-group">
					<label for="contactno"  style="color:black;">Contact No:</label>
					<form:input path="contactno" class="form-control" required="true"/>
				</div>
				
				
				<div class="form-group">
					<label for="localities"  style="color:black;">Localities:</label>
					<form:input path="localities" class="form-control" required="true"/>
				</div>
				
				<div class="form-group">
					<label for="username"  style="color:black;">User Name For Login:</label>
					<form:input path="userName" class="form-control" required="true"/>
					
				</div>
				<div class="form-group">
					<label for="password" style="color:black;"> Password For Login:</label>
					<form:password path="password" class="form-control" required="true"/>
					
				</div>
				
				
				
				
				<input type="submit" value="Register" class="btn btn-success"/>
					
			</form:form>

			</div>


			<div class="col-md-4"></div>

		</div>

	</div>


	<%@ include file="footer.jsp"%>

</body>
</html>
