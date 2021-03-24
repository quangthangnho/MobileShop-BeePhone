<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%><!-- nhúng thư viện core -->

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>BeeMobile - Sự lựa chọn tin cậy</title>

<!-- Font awesome e -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"
	integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V"
	crossorigin="anonymous">
<link href="/static/assets/css/font-awesome.css" rel="stylesheet">

<!-- Bootstrap -->
<link href="/static/assets/css/bootstrap.css" rel="stylesheet">
<link rel="icon" href="/static/assets/images/favicon1.png"
	type="image/x-icon">
<!-- SmartMenus jQuery Bootstrap Addon CSS -->
<link href="/static/assets/css/jquery.smartmenus.bootstrap.css"
	rel="stylesheet">
<!-- Product view slider -->
<link rel="stylesheet" type="text/css"
	href="/static/assets/css/jquery.simpleLens.css">
<!-- slick slider -->
<link rel="stylesheet" type="text/css"
	href="/static/assets/css/slick.css">
<!-- price picker slider -->
<link rel="stylesheet" type="text/css"
	href="/static/assets/css/nouislider.css">
<!-- Theme color -->
<link id="switcher"
	href="/static/assets/css/theme-color/default-theme.css"
	rel="stylesheet">

<!-- Top Slider CSS -->
<link href="/static/assets/css/sequence-theme.modern-slide-in.css"
	rel="stylesheet" media="all">

<!-- Main style sheet -->
<link href="/static/assets/css/style.css" rel="stylesheet">

<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
</head>

<body>
	<!-- Start header section -->
	<jsp:include page="layout/header.jsp"></jsp:include>
	<!-- /Start header section -->


	<!-- menu -->
	<jsp:include page="layout/menu.jsp"></jsp:include>

	<!-- / menu -->


	<!-- wpf loader Two -->
	<div id="wpf-loader-two">
		<div class="wpf-loader-two-inner">
			<span>Loading...</span>
		</div>
	</div>
	<!-- SCROLL TOP BUTTON -->
	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
	<!-- END SCROLL TOP BUTTON 

	<!-- / header section -->

<!--    -------begin CONTENT-------------           -->
			
				<tiles:insertAttribute name="body">
				
				</tiles:insertAttribute>
			
<!--    --------end CONTENT------------           -->


	<!--  footer-->
	<jsp:include page="layout/footer.jsp"></jsp:include>
	<!-- end footer-->


	<!--Start of Tawk.to Script-->
	<script type="text/javascript">
		var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
		(function() {
			var s1 = document.createElement("script"), s0 = document
					.getElementsByTagName("script")[0];
			s1.async = true;
			s1.src = 'https://embed.tawk.to/5eedbd889e5f69442290f4d1/default';
			s1.charset = 'UTF-8';
			s1.setAttribute('crossorigin', '*');
			s0.parentNode.insertBefore(s1, s0);
		})();
	</script>
	<!--End of Tawk.to Script-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/static/assets/js/bootstrap.js"></script>
	<!-- SmartMenus jQuery plugin -->
	<!-- SmartMenus jQuery Bootstrap Addon -->

	<!-- To Slider JS -->
	<script src="/static/assets/js/sequence.js"></script>
	<script src="/static/assets/js/sequence-theme.modern-slide-in.js"></script>
	<!-- Product view slider -->
	<script type="text/javascript"
		src="/static/assets/js/jquery.simpleGallery.js"></script>
	<script type="text/javascript"
		src="/static/assets/js/jquery.simpleLens.js"></script>
	<!-- slick slider -->
	<script type="text/javascript" src="/static/assets/js/slick.js"></script>
	<!-- Price picker slider -->
	<script type="text/javascript" src="/static/assets/js/nouislider.js"></script>
	<script type="text/javascript" src="/static/assets/js/validate.js"></script>
	<!-- Custom js -->
	<script type="text/javascript" src="/static/assets/js/custom.js"></script>

</body>

</html>