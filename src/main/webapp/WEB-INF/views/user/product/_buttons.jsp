<%@ page pageEncoding="utf-8"%>

<button
	onclick="cart.add(`${prod.id}`, `${prod.name}`,`${prod.image}`, `${prod.unitPrice}`, `${prod.discount}`), notify()"
	class="aa-add-card-btn">
	<span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng
</button>


