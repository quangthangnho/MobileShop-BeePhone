<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> <!-- nhúng thư viện core -->

<div class="aa-sidebar-widget">
    <h3>Danh mục</h3>
    <c:forEach var="c" items="${cates}">
     <ul class="aa-catg-nav">
             <li><a href="/product/list-by-category/${c.id}">${c.name}</a></li>
     </ul>
    </c:forEach>
</div>