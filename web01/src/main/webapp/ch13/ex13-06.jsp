<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>현재 위치와 지도 출력</title>
</head>
<body>
	<h3>현재위치와 지도 출력</h3>
	<hr>
	<div id="msg">이곳에 정보를 출력합니다.</div>
	<iframe id="map" width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><br/>
	<a id="bigmaplink" target="_blank">새 창에 큰 지도 보기</a>
	
	<script type="text/javascript">
		if(navigator.geolocation)
			navigator.geolocation.getCurrentPosition(success);
		else
			alert("지원하지않음");
		
		function success(position){
			let lat = position.coords.latitude;
			let lon = position.coords.longitude;
			let acc = position.coords.accuracy;
			
			lat = lat.toPrecision(6); 
			lon = lon.toPrecision(6);
			
			let now = new Date();
			let text = "현재 시간: " + now.toUTCString() + "<br>";
			text += "현재 위치: 위도 " + lat + ", 경도 " + lon + "<br>";
			text += "정확도: " + acc + "m<br>";
			document.getElementById("msg").innerHTML = text;
			
			let map = document.getElementById("map");
			map.src = "https://www.openstreetmap.org/export/embed.html?bbox="+
					(parseFloat(lon)-0.01)+"%2C"+(parseFloat(lat)-0.01)+"%2C"+
					(parseFloat(lon)+0.01)+"%2C"+(parseFloat(lat)+0.01);
			
			let maplink = document.getElementById("bigmaplink");
			let zoom = 15;
			maplink.href = "https://www.openstreetmap.org/#map="+zoom+"/"+lat+"/"+lon;
		}
	</script>
</body>
</html>