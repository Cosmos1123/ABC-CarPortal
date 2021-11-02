<!-- Navbar -->
<nav class="navbar navbar-primary" >
	<div class="container">
		<div class="navbar-header ">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="login"><img
				src="/ABC_Car_Portal/images/logo1.jpg" width="120px" style="margin-top:-30px;" /> 
			</a>
			<h3 style="color:black;">ABC Car Portal</h3>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right nav-primary ">

				<sec:authorize access="!isAuthenticated()">
					<li><a href="login" style="color:black;">Login</a></li>
					<li><a href="new" style="color:black;">Register</a></li>
				</sec:authorize>


				<sec:authorize access="isAuthenticated()">

				<sec:authorize access="hasRole('Users')">
					 
					 <li><a href="new_car" style="color:black;">Post Your Cars</a></li>
					 <li><a href="cars" style="color:black;" >Used Cars</a></li>
				</sec:authorize>
				
				<sec:authorize access="hasRole('Administrator')">
					 <li><a href="users" style="color:black;">User Management</a></li>
					  <li><a href="cars" style="color:black;">Car Management </a></li>
					 
				</sec:authorize>
				
					
			    <!-- /logout must be a POST request, as csrf is enabled.
			        This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
					
					<li>
					<form action="logout" method="post" style="padding:7px;">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
							<input type="submit"
							name="Logout" value="Logout" class="btn btn-success"></input>
					</form>
					</li>
				</sec:authorize>
			</ul>
		</div>
	</div>
</nav>
