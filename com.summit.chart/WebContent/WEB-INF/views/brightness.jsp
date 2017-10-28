<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<script src="/chart/js/Chart.js"></script>
	<script src="/chart/js/jQuery/jquery-3.2.1.js"></script>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Brightness</title>
	</head>
	<body>
		<div id="container">
			<canvas id="canvas"></canvas>
		</div>
	</body>
	<script>
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
	</script>
</html>