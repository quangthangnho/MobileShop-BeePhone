<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%><!-- nhúng thư viện core -->

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>BeePhone- Sự lựa chọn tin cậy</title>
    
    <!-- Font awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"
          integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
    <link href="/static/assets/css/font-awesome.css" rel="stylesheet">
    
    <!-- Bootstrap -->
    <link href="/static/assets/css/bootstrap.css" rel="stylesheet">   
     <link rel="icon" href="/static/assets/images/favicon1.png" type="image/x-icon">
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="/static/assets/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="/static/assets/css/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="/static/assets/css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="/static/assets/css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="/static/assets/css/theme-color/default-theme.css" rel="stylesheet">
    
    <!-- Top Slider CSS -->
    <link href="/static/assets/css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="/static/assets/css/style.css" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    
    <!--Thông báo Notification   -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/styles/metro/notify-metro.css" />
	<!--/ Thông báo Notification   -->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!--End of Tawk.to Script-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src='https://cdn.jsdelivr.net/gh/vietblogdao/js/districts.min.js'></script><!-- tên quận huyện -->
  <!-- Poly js-->
	<script src="/static/assets/js/poly.js"></script>
	
	
</head>

<body>
	<!-- Start header section -->
	<jsp:include page="layout/header.jsp"></jsp:include>
	<!-- /Start header section -->


	<!-- menu -->
	<jsp:include page="layout/menu.jsp"></jsp:include>

	<!-- / menu -->


	<!-- wpf loader Two -->


	<!-- SCROLL TOP BUTTON -->
	<a class="scrollToTop" href="#">
	<i class="fa fa-chevron-up"></i></a>
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
	var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
	(function(){
	var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
	s1.async=true;
	s1.src='https://embed.tawk.to/5eedbd889e5f69442290f4d1/default';
	s1.charset='UTF-8';
	s1.setAttribute('crossorigin','*');
	s0.parentNode.insertBefore(s1,s0);
	})();
	</script>

  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="/static/assets/js/bootstrap.js"></script>  

  <script src="/static/assets/js/sequence.js"></script>
  <script src="/static/assets/js/sequence-theme.modern-slide-in.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="/static/assets/js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="/static/assets/js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="/static/assets/js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="/static/assets/js/nouislider.js"></script>
  <script type="text/javascript" src="/static/assets/js/validate.js"></script>
  <!-- Custom js -->
  <script type="text/javascript" src="/static/assets/js/custom.js"></script> 
  <script type="text/javascript" src="/static/assets/js/jquery.twbsPagination.min.js"></script>

<!-- reCAPTCHA with Auto language -->
<script src='https://www.google.com/recaptcha/api.js'></script>
<script>
var totalPages = ${pageNew.getTotalPages()};
var currentPage = ${pageNew.getNumber()}+1;
$('#pagination').twbsPagination({
	totalPages: totalPages,
	visiblePages: 3,
	startPage: currentPage,
	onPageClick: function (event, page) {
		if (currentPage != page) {
			$('#page').val(page);
			$('#formSubmit').submit();
		}
	}
});

  </script>
  
  <script>
var totalPages = ${pageProduct.getTotalPages()};
var currentPage = ${pageProduct.getNumber()}+1;
$('#pagination1').twbsPagination({
	totalPages: totalPages,
	visiblePages: 3,
	startPage: currentPage,
	onPageClick: function (event, page) {
		if (currentPage != page) {
			$('#page').val(page);
			$('#formSubmit1').submit();
		}
	}
});

  </script>
  
    <script>
var totalPages = ${pageProduct.getTotalPages()};
var currentPage = ${pageProduct.getNumber()}+1;
$('#pagination2').twbsPagination({
	totalPages: totalPages,
	visiblePages: 3,
	startPage: currentPage,
	onPageClick: function (event, page) {
		if (currentPage != page) {
			$('#page').val(page);
			$('#formSubmit2').submit();
		}
	}
});

  </script>
  <script>
  
  	const getParentDesElement = document.querySelectorAll(".des");
  
  	getParentDesElement.forEach(element => {
  		const getChildrenPElement = element.querySelectorAll("p");
  		getChildrenPElement.forEach((data, index) => {
  			if (index > 0) {
  				data.style.display = "none";
  			}
  		})
  	})
  	
  </script>
  
  <!--Thông báo Notification   -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.min.js"></script>
	<script >
		function notify() {

			$.notify("Thêm vào giỏ hàng thành công!", "success");
			
		}
	</script>
	<!--/Thông báo Notification   -->
	
	<!-- validation.js -->
	  <script type="text/javascript" src="/static/assets/js/validation.js"></script>
	  
	<!--none nut thanh toán  -->
	<script>
		function show1(){
		    document.getElementById('div1').style.display ='none';
		}
		function show2(){
		    document.getElementById('div1').style.display = 'block';
		}
	</script>
	
	<!-- quận huyện* --> 
<script>//<![CDATA[
if (address_2 = localStorage.getItem('address_2_saved')) {
  $('select[name="calc_shipping_district"] option').each(function() {
    if ($(this).text() == address_2) {
      $(this).attr('selected', '')
    }
  })
  $('input.billing_address_2').attr('value', address_2)
}
if (district = localStorage.getItem('district')) {
  $('select[name="calc_shipping_district"]').html(district)
  $('select[name="calc_shipping_district"]').on('change', function() {
    var target = $(this).children('option:selected')
    target.attr('selected', '')
    $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
    address_2 = target.text()
    $('input.billing_address_2').attr('value', address_2)
    district = $('select[name="calc_shipping_district"]').html()
    localStorage.setItem('district', district)
    localStorage.setItem('address_2_saved', address_2)
  })
}
$('select[name="calc_shipping_provinces"]').each(function() {
  var $this = $(this),
    stc = ''
  c.forEach(function(i, e) {
    e += +1
    stc += '<option value=' + e + '>' + i + '</option>'
    $this.html('<option value="">Tỉnh / Thành phố</option>' + stc)
    if (address_1 = localStorage.getItem('address_1_saved')) {
      $('select[name="calc_shipping_provinces"] option').each(function() {
        if ($(this).text() == address_1) {
          $(this).attr('selected', '')
        }
      })
      $('input.billing_address_1').attr('value', address_1)
    }
    $this.on('change', function(i) {
      i = $this.children('option:selected').index() - 1
      var str = '',
        r = $this.val()
      if (r != '') {
        arr[i].forEach(function(el) {
          str += '<option value="' + el + '">' + el + '</option>'
          $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>' + str)
        })
        var address_1 = $this.children('option:selected').text()
        var district = $('select[name="calc_shipping_district"]').html()
        localStorage.setItem('address_1_saved', address_1)
        localStorage.setItem('district', district)
        $('select[name="calc_shipping_district"]').on('change', function() {
          var target = $(this).children('option:selected')
          target.attr('selected', '')
          $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
          var address_2 = target.text()
          $('input.billing_address_2').attr('value', address_2)
          district = $('select[name="calc_shipping_district"]').html()
          localStorage.setItem('district', district)
          localStorage.setItem('address_2_saved', address_2)
        })
      } else {
        $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>')
        district = $('select[name="calc_shipping_district"]').html()
        localStorage.setItem('district', district)
        localStorage.removeItem('address_1_saved', address_1)
      }
    })
  })
})
//]]></script>  
	<!-- /quận huyện* --> 
	
</body>

</html>