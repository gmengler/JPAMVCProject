<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Frugal</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>


	<div class="container">
		<div class="row text-center" id="h1">
			<h1>frugal</h1>
			<!-- <p>Budgeting through amalgamation.</p> -->
		</div>
		<div class="row text-center">
			<p>Add your family members.</p>
		</div>



		<div class="container">
			<div class="row main">
				<div class="main-login main-center">
					<form action="CreateMembers.do" method="POST">
				<input type="hidden" name="familyId" value="${family.id }" />
						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-user fa" aria-hidden="true"></i></span> <input
										type="text" class="form-control" name="username"
										id="usernamename" placeholder="Enter your Username" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">First Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
										type="text" class="form-control" name="fName" id="email"
										placeholder="Enter your Password" />
								</div>
						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Last Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
										type="text" class="form-control" name="lName" id="email"
										placeholder="Enter your Password" />
								</div>
							</div>
						</div>
						<div class="text-center">
							<span id="badlogin">
								<c:if test="${! empty badLogin}">
									${badLogin}
								</c:if>
							</span>
						</div>
				
						<div class="form-group text-center">
							<button type="submit" hidden="family" class="btn btn-default btn-block">Create Your Families Account
								</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
</html>