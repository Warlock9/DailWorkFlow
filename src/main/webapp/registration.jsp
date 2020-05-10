
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>


<!DOCTYPE html>
<html dir="ltr">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<%-- <link rel="icon" type="image/png" sizes="16x16"
	href="/resources/assets/images/favicon.png"> --%>
<title>Daily Work Flow - create account</title>
<!-- Custom CSS -->
<link href="/resources/dist/css/style.min.css" rel="stylesheet">
<link href="/resources/assets/libs/toastr/build/toastr.min.css"
	rel="stylesheet">

</head>

<body>
	<div class="main-wrapper">

		<!-- ============================================================== -->
		<!-- Preloader - style you can find in spinners.css -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Login box.scss -->
		<!-- ============================================================== -->
		<div
			class="auth-wrapper d-flex no-block justify-content-center align-items-center bg-dark">
			<div class="auth-box bg-dark border-top border-secondary">
				<div id="loginform">
					<div class="text-center p-t-20 p-b-20">
						<h2 class="form-heading " align="center">Daily Work Flow</h2>
					</div>
					<!-- Form -->

					<form:form method="POST" modelAttribute="userForm"
						class="form-signin">
						<h2 class="form-signin-heading">Create your account</h2>
						<spring:bind path="firstName">
						<label style="display: none" for="fname"
											class="col-sm-2 text-right control-label col-form-label">Approver
											ID</label>
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="firstName" class="form-control"
									placeholder="firstName" autofocus="true"></form:input>
								<div class="has-error">
									<form:errors path="firstName"></form:errors>
								</div>
							</div>
						</spring:bind>
						
						<spring:bind path="lastName">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="lastName" class="form-control"
									placeholder="lastName" autofocus="true"></form:input>
								<div class="has-error">
									<form:errors path="lastName"></form:errors>
								</div>
							</div>
						</spring:bind>
						
						<spring:bind path="email">
						
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="email" class="form-control"
									placeholder="email" autofocus="true"></form:input>
								<div class="has-error">
									<form:errors path="email"></form:errors>
								</div>
							</div>
						</spring:bind>
						
						<spring:bind path="mobileNo">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="mobileNo" class="form-control"
									placeholder="mobileNo" autofocus="true"></form:input>
								<div class="has-error">
									<form:errors path="mobileNo"></form:errors>
								</div>
							</div>
						</spring:bind>
						
						<spring:bind path="address">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="address" class="form-control"
									placeholder="address" autofocus="true"></form:input>
								<div class="has-error">
									<form:errors path="address"></form:errors>
								</div>
							</div>
						</spring:bind>
						
						<spring:bind path="username">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="username" class="form-control"
									placeholder="Username" autofocus="true"></form:input>
								<div class="has-error">
									<form:errors path="username"></form:errors>
								</div>
							</div>
						</spring:bind>
						
						

						<spring:bind path="password">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="password" path="password" class="form-control"
									placeholder="Password"></form:input>
								<div class="has-error">
									<form:errors path="password"></form:errors>
								</div>
							</div>
						</spring:bind>

						<spring:bind path="passwordConfirm">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="password" path="passwordConfirm"
									class="form-control" placeholder="Confirm your password"></form:input>
								<div class="has-error">
									<form:errors path="passwordConfirm"></form:errors>
								</div>
							</div>
						</spring:bind>

						<button class="btn btn-success btn-lg btn-primary btn-block"
							type="submit">Submit</button>
						<h4 class="text-center">
							<a href="login">Back to login</a>
						</h4>
					</form:form>
				</div>
				<div id="recoverform">
					<div class="text-center">
						<span class="text-white">Enter your e-mail address below
							and we will send you instructions how to recover a password.</span>
					</div>
					<div class="row m-t-20">
						<!-- Form -->
						<form class="col-12" action="index.html">
							<!-- email -->
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text bg-danger text-white"
										id="basic-addon1"><i class="ti-email"></i></span>
								</div>
								<input type="text" class="form-control form-control-lg"
									placeholder="Email Address" aria-label="Username"
									aria-describedby="basic-addon1">
							</div>
							<!-- pwd -->
							<div class="row m-t-20 p-t-20 border-top border-secondary">
								<div class="col-12">
									<a class="btn btn-success" href="#" id="to-login" name="action">Back
										To Login</a>
									<button class="btn btn-info float-right" type="button"
										name="action">Recover</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- Login box.scss -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper scss in scafholding.scss -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper scss in scafholding.scss -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Right Sidebar -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Right Sidebar -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- All Required js -->
	<script src="/resources/assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="/resources/assets/libs/popper.js/dist/umd/popper.min.js"></script>
	<script src="/resources/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>

	<script src="/resources/assets/libs/toastr/build/toastr.min.js"></script>


	<script>
		$('[data-toggle="tooltip"]').tooltip();
		$(".preloader").fadeOut();
		// ==============================================================
	</script>

</body>

</html>