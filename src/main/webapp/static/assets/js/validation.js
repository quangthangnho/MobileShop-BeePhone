validation = {
		
	receiver(){
		this.kytudacbietName();
		$(document).ready(function () {
            $('body').on('click', '.checkAll', function () {
                var receiver_regex = /[a-zA-Z] [a-zA-Z] */;
                var receiver = $('#receiver').val();
                if(receiver !== '' ){
                    if(receiver_regex.test(receiver) == false){
                        document.getElementById("txtReceiver").innerHTML = "Vui lòng điền Họ & Tên.";
                        document.getElementById("txtReceiver").style.color = "red";
                    
                    }
                    else {
                        document.getElementById("txtReceiver").innerHTML = "Họ & Tên hợp lệ.";
                        document.getElementById("txtReceiver").style.color = "";
                        document.getElementById("fontAwsomeName").className = "fas fa-check";
                        document.getElementById("fontAwsomeName").style.color = "#4CAF50";
                        
                    }
                    
                }else{
                    document.getElementById("txtReceiver").innerHTML = "Trường này bắt buộc.";
                    document.getElementById("txtReceiver").style.color = "red";
                }
            });
		});
	},
	    
		
	phone(){
		$(document).ready(function() {
		    $('body').on('click','.checkAll', function() {
		    var phone_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
		    var phone = $('#phone').val();
		    if(phone !==''){
		        if (phone_regex.test(phone) == false) 
		        {
                    document.getElementById("txtPhone").innerHTML = "Số điện thoại không hợp lệ.";
                    document.getElementById("txtPhone").style.color = "red";
		        }else{
                    document.getElementById("txtPhone").innerHTML = "Số điện thoại hợp lệ.";
                    document.getElementById("txtPhone").style.color = "";
                    document.getElementById("fontAwsomePhone").className = "fas fa-check";
                    document.getElementById("fontAwsomePhone").style.color = "#4CAF50";
		        }
		    }
		    else{
                document.getElementById("txtPhone").innerHTML = "Trường này bắt buộc.";
                document.getElementById("txtPhone").style.color = "red";
		    }
		    });
		
		});
	},
	
	payment(){
		const btn = document.querySelector('#btn');
        btn.onclick = function (){
            const rbs = document.querySelectorAll('input[name="payment"]');
            let selectedValue;
            for(const rb of rbs){
                if(rb.checked){
                    selectedValue = rb.value;
                    break;
                }
            }
            if(selectedValue){
                document.getElementById("txtPayment").innerHTML = "Đã chọn phương thức thanh toán.";
                document.getElementById("txtPayment").style.color = "";      
                document.getElementById("fontAwsomePayment").className = "fas fa-check";
                document.getElementById("fontAwsomePayment").style.color = "#4CAF50";
            }else{
                document.getElementById("txtPayment").innerHTML = "Chọn phương thức thanh toán.";
                document.getElementById("txtPayment").style.color = "red";
            }
        };
	},
	
	
	address(){
		this.kytudacbietAddress();
		$(document).ready(function () {
            $('body').on('click', '.checkAll', function () {
                var address_regex = /[a-zA-Z] [a-zA-Z] */;
                var address = $('#address').val();
                if(address !== '' ){
                    if(address_regex.test(receiver) == false){
                        document.getElementById("txtAddress").innerHTML = "Vui lòng điền địa chỉ.";
                        document.getElementById("txtAddress").style.color = "red";
                    
                    }
                    else {
                        document.getElementById("txtAddress").innerHTML = "Địa chỉ hợp lệ.";
                        document.getElementById("txtAddress").style.color = "";                       
                        document.getElementById("fontAwsomeAddress").className = "fas fa-check";
                        document.getElementById("fontAwsomeAddress").style.color = "#4CAF50";
                    }
                }else{
                    document.getElementById("txtAddress").innerHTML = "Trường này bắt buộc.";
                    document.getElementById("txtAddress").style.color = "red";
                }
            });
		});
	},
	
	kytudacbietName(){
		 $("#receiver").keypress(function(event) {
	            var character = String.fromCharCode(event.keyCode);
	            return isValid(character);
	        })
	        function isValid(str) {
	            return !/[0-9.~`!@#$%\^&*()+=\-\[\]\\';,/{}|\\":<>\?]/g.test(str);
	        }
	},
	
	kytudacbietAddress(){
		 $("#address").keypress(function(event) {
	            var character = String.fromCharCode(event.keyCode);
	            return isValid(character);
	        })
	        function isValid(str) {
	            return !/[~`!@#$%\^&*+=\\[\]\\';,{}|\\":<>\?]/g.test(str);
	        }
	},
	
//	receiver() {
//		$().ready(function() {
//			$("#yourform").validate({
//				onfocusout: false,
//				onkeyup: false,
//				onclick: false,
//				rules: {
//					"receiver":{
//						required :true,				
//						maxlength: 15
//					},
//					"phone":{
//						required :true,		
//						minlength: 8
//					}
//					
//				}
//				rules: {
//					receiver: "required",
//					phone: "required",
//					address: "required"	
//				},
//				messages: {
//					receiver: "Trường này bắt buộc.",
//					phone: "Trường này bắt buộc.",
//					address: "Trường này bắt buộc."	
//				}
//			});
//		});
//	}
	
}