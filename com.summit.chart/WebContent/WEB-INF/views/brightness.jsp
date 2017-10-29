<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<title>Brightness</title>

		<!-- JQuery Framework -->
		<script src="/chart/js/jQuery/jquery-3.2.1.js"></script>
		<!-- Chart Framework -->
		<script src="/chart/js/chart/Chart.js"></script>
		<!-- Pooper Framework -->
		<script src="/chart/js/vendor/popper.min.js"></script>
		<!-- Bootstrap Framework -->
		<script src="/chart/js/bootstrap/bootstrap.min.js"></script>

		<!-- Bootstrap core CSS -->
		<link href="/chart/css/bootstrap.min.css" rel="stylesheet">
		<link href="/chart/css/dashboard.css" rel="stylesheet">		
	</head>
	<body>
		<header>
			<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
				<a class="navbar-brand" href="#">Navbar</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				
				<div class="collapse navbar-collapse" id="navbarsExampleDefault">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active">
							<a class="nav-link" href="#">Home<span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item active">
							<a class="nav-link" href="#">Settings</a>
						</li>
						<li class="nav-item active">
							<a class="nav-link" href="#">Profile</a>
						</li>
						<li class="nav-item active">
							<a class="nav-link" href="#">Help</a>
						</li>
					</ul>
					<form class="form-inline mt-2 mt-md-0">
						<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="summit" id="summit">Search</button>
					</form>
				</div>
			</nav>		
		</header>
		
		<div class="container-fluid">
			<div class="row">
				<main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">	
					<section class="raw text-center placeholders">
						<div class="col-12 col-sm-9 placeholder">
							<canvas id="canvas"></canvas>
						</div>					
					</section>				
				</main>					
			</div>
		</div>
	</body>
	
	<!--========================== Javascript ========================-->
	<script type="text/javascript">
		var HOURS = ["00","01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"];
		var VALUES = ["00","01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"];
		var config = 
		{
			type:'line',
			data: 
			{
				labels: HOURS,
				datasets: 
				[{
					label: "Brightness in the room",
					backgroundColor: "red",
					borderColor: "red",
					data: VALUES,
					fill: false
				}]
			}
		};
		
		window.onload = function() {
			//var ctx = document.getElementById("canvas").getContext("2d");
			var ctx = $("#canvas")[0].getContext("2d");
			window.myLine = new Chart(ctx,config);
		};
		$("#summit").click(function(){
			$.ajax({
				url:"/chart/search.do",
				success: function(result){
					alert('success');
				}
			});
		});
	</script>
</html>