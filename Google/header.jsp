<html>

<head>
	<title>Header</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
		integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
		integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
	* {
		margin: 0px;
		padding: 0px;
	}

	img {
		height: 45px;
		width: 109px;
	}

	.header {
		display: flex;
	}

	.header button:hover {
		background-color: #E8EAED;
		border-radius: 100px;
	}

	.header1 {
		background-color: #f8f9fa;
		padding: 10px 5px 10px 20px;
	}

	.header1 button {
		height: 40px;
		width: 40px;
		margin-right: 5px;
	}

	.navbar {
		background-color: #F2F2F2;
	}

	.form-inline input {
		width: 120px;
	}

	.form-control {
		background-color: #EAF1FB;
		outline: none;
		width: 400px;
		border: none;
	}

	i {
		color: rgb(114, 108, 108);
	}

	button {
		outline: none;
		background-color: #F8F9FA;
		border: none;
	}

	.header2 {
		background-color: #F8F9FA;
	}

	.header3 {
		background-color: #F8F9FA;
		padding-top: 20px;
		padding-left: 100px !important;
	}

	.header3 a {
		padding: 10px;
	}
	.header3 a:hover {
		background-color: #E8EAED;
		border-radius: 100px;
	}

	.form-inline {
		position: relative;
	}

	.form-inline button {
		position: absolute;
		height: 40px;
		width: 40px;
	}

	.form-inline input {
		width: 100%;
		height: 50px;
		border-radius: 10px;
		outline: none;
		border: none;
		background-color: #EAF1FB;
		padding-left: 40px;
	}

	.form-inline {
		width: 70%;
	}

	button {
		cursor: pointer;
	}

	.header2 button {
		background-color: #EAF1FB;
		padding-left: 2px;
	}

	img {
		cursor: pointer;
	}
	/* #search {
		top: 10%;
		left: 0;
	}*/

	#slider {
		/*top: 10%;*/
		right: 3%;
	}
</style>

<body>
	<div class="header	">
		<div class="header1 col-lg-2 col-md-4">
			<button type="button" id="options"><i class="fa-solid fa-bars fa-lg"></i></button>
			<img src="assets/mail">
		</div>
		<div class="header2 col-lg-8 col-md-5">
			<nav class="navbar navbar-light bg-light">
				<form class="form-inline">
					<button type="button" id="search"><i class="fa-solid fa-magnifying-glass fa-lg"></i></button>
					<input type="search" placeholder="Search mail">
					<button type="button" id="slider"><i class="fa fa-sliders fa-lg" aria-hidden="true"></i></button>
				</form>
			</nav>
		</div>
		<div class="header3 col-lg-2 col-md-3">

			<a href=""><i class="fa-sharp fa-regular fa-circle-question fa-lg"></i></a>
			<a href=""><i class="fa-solid fa-gear fa-lg"></i></a>
			<a href=""><i class="fa-solid fa-ellipsis-vertical fa-lg"></i></a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>