
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
<title>Daily Work Flow - dashboard</title>
<!-- Custom CSS -->
<link href="/resources/dist/css/style.min.css" rel="stylesheet">
<link href="/resources/assets/libs/toastr/build/toastr.min.css"
	rel="stylesheet">

</head>

<body>
	<div class="main-wrapper">

		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar" data-navbarbg="skin5">
			<nav class="navbar top-navbar navbar-expand-md navbar-dark">
				<%-- <div class="navbar-header" data-logobg="skin5">
					<!-- This is for the sidebar toggle which is visible on mobile only -->
					<a class="nav-toggler waves-effect waves-light d-block d-md-none"
						href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
					<!-- ============================================================== -->
					<!-- Logo -->
					<!-- ============================================================== -->
					<a class="navbar-brand" href="welcome"> <b
						class="logo-icon p-l-10"> <img
							src="${contextPath}/resources/assets/images/logo-icon.png"
							alt="homepage" class="light-logo" />
					</b>
					</a>
					<!-- ============================================================== -->
					<!-- End Logo -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- Toggle which is visible on mobile only -->
					<!-- ============================================================== -->
					<a class="topbartoggler d-block d-md-none waves-effect waves-light"
						href="javascript:void(0)" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation"><i class="ti-more"></i></a>
				</div> --%>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<div class="navbar-collapse collapse" id="navbarSupportedContent"
					data-navbarbg="skin5">
					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav float-left mr-auto">
						<li class="nav-item d-none d-md-block"><a
							class="nav-link sidebartoggler waves-effect waves-light"
							href="javascript:void(0)" data-sidebartype="mini-sidebar"></a></li>
					</ul>
					<!-- ============================================================== -->
					<!-- Right side toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav float-right">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle waves-effect waves-dark">
								Welcome - ${pageContext.request.userPrincipal.name}</a></li>

						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic"
							href="" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"><img
								src="/resources/assets/images/users/1.jpg" alt="user"
								class="rounded-circle" width="31"></a>
							<div class="dropdown-menu dropdown-menu-right user-dd animated">


								<c:if test="${pageContext.request.userPrincipal.name != null}">
									<form id="logoutForm" method="POST"
										action="${contextPath}/logout">
										<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" />
									</form>


									<a class="dropdown-item"
										onclick="document.forms['logoutForm'].submit()"><i
										class="fa fa-power-off m-r-5 m-l-5"></i>Logout</a>

								</c:if>
							</div></li>
						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
					</ul>
				</div>

			</nav>
		</header>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- including Sidebar - style you can find in sidebar.scss  -->

		<%-- 		<%@include file="sideBar.jsp"%>
 --%>
		<!-- including Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Bread crumb and right sidebar toggle -->
		<!-- ============================================================== -->
		<div class="page-breadcrumb">
			<div class="row">
				<div class="col-12 d-flex no-block align-items-center">
					<h4 class="page-title"><!-- New File Processing --></h4>
					<div class="ml-auto text-right">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="dashboard">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">
									File Processing</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Bread crumb and right sidebar toggle -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Container fluid  -->
		<!-- ============================================================== -->
		<div class="container-fluid">
			<!-- ============================================================== -->
			<!-- Start Page Content -->
			<!-- ============================================================== -->
			<div class="row">
				<div class="col-12"></div>

				<%-- <form:form method="POST" enctype="multipart/form-data"
					class="form-signin"> --%>

					<div class="card-body">
						<!-- <div class="container" >
							<div class="row it">
								<div class="col-sm-offset-1 col-sm-10" id="one">
									<p>Please upload documents only in 'pdf', 'docx', 'rtf',
										'jpg', 'jpeg', 'png' & 'text' format.</p>
									<br>
									<div class="row">
										<div class="col-sm-offset-4 col-sm-4 form-group">
											<h3 class="text-center">My Documents</h3>
										</div>
										form-group
									</div>
									row
									<div id="uploader">
										<div class="row uploadDoc">
											<div class="col-sm-3">
												<div class="docErr">Please upload valid file</div>
												error
												<div class="fileUpload btn btn-orange">
													<img
														src="https://image.flaticon.com/icons/svg/136/136549.svg"
														class="icon"> <span class="upl" id="upload">Upload
														document</span> <input type="file" name="file" class="upload up" id="up"
														onchange="readURL(this);" />
												</div>
												btn-orange
											</div>
											col-3
											<div class="col-sm-8">
												<input type="text" class="form-control" name=""
													placeholder="Note">
											</div>
											col-8
											<div class="col-sm-1">
												<a class="btn-check"><i class="fa fa-times"></i></a>
											</div>
											col-1
										</div>
										row
									</div>
									uploader
									<div class="text-center">
										<a class="btn btn-new"><i class="fa fa-plus"></i> Add new</a>
										<button type="submit" class="btn btn-next"><i class="fa fa-paper-plane"></i>
											Submit</button>
									</div>
								</div>
								one
							</div>
							row
						</div> -->

						<div class="upload-container">
							<div class="upload-header">
								<h2>Daily Work Flow /Upload and Download files</h2>
							</div>
							<div class="upload-content">
								<div class="single-upload">
									<h3>Upload Single File</h3>
								
									<form:form method="POST" enctype="multipart/form-data"	class="form-signin">
										<input id="singleFileUploadInput" type="file" name="file"
											class="file-input" required />
											<button type="submit" class="primary submit-btn"><i class="fa fa-paper-plane"></i>Submit</button>
										</form:form>
										
									<div class="upload-response">
										<div id="singleFileUploadError"></div>
										<div id="singleFileUploadSuccess">
										<p>Download File: <a class="fileDownload"  href='${fileId}' download>${fileName}</a></p>
										
										</div>
									</div>
								</div>
							<%-- 	<div class="multiple-upload">
									<h3>Upload Multiple Files</h3>
									<form id="multipleUploadForm" name="multipleUploadForm">
										<input id="multipleFileUploadInput" type="file" name="files"
											class="file-input" multiple required />
										<button type="submit" class="primary submit-btn">Submit</button>
									</form>
									<div class="upload-response">
										<div id="multipleFileUploadError"></div>
										<div id="multipleFileUploadSuccess"></div>
									</div>
								</div> --%>
							</div>
						</div>
						<!-- container -->
					</div>
				
			</div>



			<!-- ============================================================== -->
			<!-- End PAge Content -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Right sidebar -->
			<!-- ============================================================== -->
			<!-- .right-sidebar -->
			<!-- ============================================================== -->
			<!-- End Right sidebar -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- End Container fluid  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- footer -->
		<!-- ============================================================== -->
		<footer class="footer text-center">
			All Rights Reserved by <a href="dashboard">Daily Work Flow</a>.
		</footer>
		<!-- ============================================================== -->
		<!-- End footer -->
		<!-- ============================================================== -->

		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- All Required js -->
	<script src="/resources/assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="/resources/assets/libs/popper.js/dist/umd/popper.min.js"></script>
	<script src="/resources/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>

	<script src="/resources/assets/libs/toastr/build/toastr.min.js"></script>
	<script src="/resources/jquery/main.js"></script>

	<script>
		$('[data-toggle="tooltip"]').tooltip();
		$(".preloader").fadeOut();
		// ==============================================================
	</script>

</body>

</html>