<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	div{ box-sizing:border-box;}
    .wrapper{
        width: 1000px;
        height: auto;
        top: 0; left: 0; right: 0; bottom: 0; margin: auto;
        margin-top: 50px;	
    }
	#map{
		width: 600px;
		height: 300px;
		margin: auto;
	}
</style>


	<div class="wrapper">
		<div id="map"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d4bad811faa40cd9603af89d93a6d6a2"></script>
			<script>
			
				var container = document.getElementById('map');
				var options = {
					center: new kakao.maps.LatLng(37.47927177938663, 127.01170802410908),
					level: 3
				};
			
				var map = new kakao.maps.Map(container, options);
				
				var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 
	
				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
				    position: markerPosition
				});
				
				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
	
			</script>
	</div>
