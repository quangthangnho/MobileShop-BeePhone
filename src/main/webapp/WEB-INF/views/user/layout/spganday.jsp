<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> <!-- nhúng thư viện core -->

<div class="aa-sidebar-widget">
    <h3>Sản phẩm gần đây</h3>
    <div class="aa-recently-views">
    <c:forEach var="p" items="${prod.categoryProduct.products}">
        <ul>
            <li>
                <a href="chiTietSP.html" class="aa-cartbox-img"><img alt="img"
                        src="assets/images/products/img-test/rau_cai.jpg"></a>
                <div class="aa-cartbox-info">
                    <h4><a href="chiTietSP.html">name </a></h4>
                    <p>$${p.unitPrice}</p>
                    <p>price VNĐ</p>
                </div>
            </li>
        </ul>
    </c:forEach>
    </div>
</div>