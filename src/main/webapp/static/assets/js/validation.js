validation = {
		
		
	receiver(){
		$(document).ready(function () {
            $('body').on('click', '.check', function () {
                var name_regex = /^[A-Za-z\s]+$/;
                var name = $('#name').val();
                if(name !== ''){
                    if(name_regex.test(name) == false){
                        document.getElementById("txtName").innerHTML = "Họ và tên không đúng định dạng";
                        document.getElementById("txtName").style.color = "red";
                    }else {
                        document.getElementById("txtName").innerHTML = "Tên không hợp lệ";
                        document.getElementById("txtName").style.color = "";
                    }
                }else{
                    document.getElementById("txtName").innerHTML = "Họ và tên không được để trống";
                    document.getElementById("txtName").style.color = "red";
                }
            });
		});
	},
	    
		
	phone(){
		  $(document).ready(function () {
	            $('body').on('click', '.checkAll', function () {
	                var vnf_regex = /((09|03|07|08||05)+([0-9]{8})\b)/g;
	                var phone = $('#phone').val();
	                if(phone !== ''){
	                    if(vnf_regex.test(phone) == false){
	                        document.getElementById("txtPhone").innerHTML = "Số điện thoại không đúng định dạng";
	                        document.getElementById("txtPhone").style.color = "red";
	                    }else {
	                        document.getElementById("txtPhone").innerHTML = "Số điện thoại hợp lệ";
	                        document.getElementById("txtPhone").style.color = "";
	                    }
	                }
	            });
	    });
	},
	
	payment(){
		  $(document).ready(function () {
	            $('body').on('click', '.checkAll', function () {
	                var vnf_regex = /((09|03|07|08||05)+([0-9]{8})\b)/g;
	                var payment0 = $('#payment0').val();
	                var payment1 = $('#payment1').val();
	                var payment2 = $('#payment2').val();
	                if(payment0 == '' | payment1 == '' | payment2){	                 
	                    document.getElementById("txtPayment").innerHTML = "Phương thức thanh toán không để trống!";
	                    document.getElementById("txtPayment").style.color = "red";	                 
	                }else {
	                	document.getElementById("txtPayment").innerHTML = "!";
	                    document.getElementById("txtPayment").style.color = "";
	                }
	                
	            });
	    });
	}
	
}