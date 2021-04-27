cart = {
		items:{}, /*-- Chứa hàng đã chọn --*/
                /*-- Thêm hàng vào giỏ --*/
		add(id, name, image, price, discount){
			if(this.items[id]){ /*-- có rồi -> tăng số lượng --*/
				this.items[id].quantity++;
			}
			else{ /*-- chưa có -> tạo và bỏ vào giỏ --*/
				this.items[id] = {id: id, name: name, image: image, price: price, discount: discount, quantity: 1}
			}
			this.save();
			this.show_info();
			console.log(this.items)
		},
                /*-- Lưu hàng đã chọn vào sessionStorage --*/
		save(){
			var json = JSON.stringify(this.items);
			sessionStorage.setItem("cart", json);
		},
                /*-- Đọc hàng đã chọn từ sessionStorage --*/
		read(){
			var json = sessionStorage.getItem("cart");
			if(json){
				this.items = JSON.parse(json);
			}
			this.show_info();
		},
		/*-- hiển thị tên sp-- */

	
                /*-- Lấy tổng số mặt hàng trong giỏ --*/
		get count(){
			var total = 0;
			for(var id in this.items){
				total += this.items[id].quantity;
			}
			return total;
		},
                /*-- Lấy tổng số tiền trong giỏ --*/
		get amount(){
			var total = 0;
	
			for(var id in this.items){
				total += (this.items[id].price * this.items[id].quantity *100 )/100 *(100 - this.items[id].discount)/100;
			}
			return Math.round(total*100)/100; // định dạng 2 số lẻ
		},
                /*-- Hiển thị thông tin tổng hợp giỏ hàng --*/
		show_info(){
			$(".aa-cart-notify").html(this.count);
			$(".aa-cartbox-total-price").html(this.amount);
		
		},
                /*-- Xóa sách giỏ hàng --*/
		clear(){
			sessionStorage.removeItem("cart");
			document.getElementById("skud").innerHTML = "Xóa thành công";		
			this.items = {};
			this.show_info();
			this.show_all();
		},
                /*-- Hiển thị giỏ hàng và thông tin tổng hợp --*/
		show_all(){
			$("tbody.cart-items").empty();
			for(var id in this.items){
				var item = this.items[id];
				var tr = `
						<tr>
							<td><div onclick="cart.remove(${item.id})"class="remove"><fa
										class="fa fa-close"></fa></div>
							</td>							
							<td><img src="/static/assets-a/assets/images/products/${item.image}" style="width:60px; height: 60px;"><a class="aa-cart-title" href="">${item.name}</a>
							</td>
							<td><span class="cart-item__unit-price--before">${(item.price *100)/100} VNĐ</span> ${ (item.price* 100)/100 * (100 - item.discount)/100}  VNĐ  </td>
							<td>
								<input value="${item.quantity}" onchange="cart.update(${item.id}, this.value)" type="number" min="1" style="width:60px;">
							</td>
							<td>${Math.round(item.price*item.quantity* 100)/100 * (100 - item.discount)/100} VNĐ</td>	
							

						</tr>	
						
				`;
				$("tbody.cart-items").append(tr);
			}
		},
                /*-- Cập nhật số lượng của một mật hàng --*/
		update(id, newqty){
			this.items[id].quantity = newqty;
			document.getElementById("skud").innerHTML = "Cập nhập thành công";	
			this.save();
			this.show_info();
			this.show_all();
		},
                /*-- Xóa một mặt hàng khỏi giỏ --*/
		remove(id){
			delete this.items[id];
			document.getElementById("skud").innerHTML = "Xóa thành công";
			
			this.save();
			this.show_info();
			this.show_all();
		},
		get details(){
			var details = {};
			for(var id in this.items){
				details[id] = this.items[id].quantity;
			}
			return JSON.stringify(details);
		},
		

}


$(function(){
	cart.read(); /*-- Đọc từ sessionStorage khi trang web chạy --*/

})