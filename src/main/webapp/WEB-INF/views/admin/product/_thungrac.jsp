<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form action="${ctrl}/index" modelAttribute="form">
<div class="card-content">
<div id="myDIV">
	<a href="http://localhost:8086/admin/product/index" class="btn btn-info" style="color: #333; background-color: #28609" role="button"><i class="fa fa-pencil-square-o"></i> Cập nhập</a>
</div>

 <h4 class="card-title">Danh sách sản phẩm đã xóa</h4>
<div class="panel panel-danger">
    <div class="panel-heading">
        <div class="panel-title">${message}</div>
    </div>
</div> 
     <div class="material-datatables">
         <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
             <thead>
             <tr>
				<th>HÌNH</th>
				<th>TÊN SẢN PHẨM</th>
				<th>GIÁ</th>
				<th>SỐ LƯỢNG</th>
				<th class="disabled-sorting text-right">HÀNH ĐỘNG</th>
			</tr>
             </thead>

             <tbody>
             <c:forEach var="item" items="${listfillAllProductStatus2}">
             <tr>
                 <td><img src="/static/images/products/${item.image}" style="width:60px; height: 60px;"></td>
                 <td>${item.name}</td>
                 <td><fmt:formatNumber value="${item.unitPrice}" minFractionDigits="0"/> VNĐ </td>
                 <td>${item.stock}</td>
            
                 <td class="td-actions text-right">
                   
						<a href="http://localhost:8086/admin/product/edit/${item.id}" class="btn btn-sm btn-warning" title="Chi tiết">
				    			<i class="fa fa-pencil"></i>
				    	</a>
			    		
			    		<a href="http://localhost:8086/admin/product/delete/${item.id}" class="btn btn-sm btn-danger" title="Xóa">
			    			<i class="fa fa-trash-o"></i>
			    		</a>
        
                 </td>
             </tr>
             </c:forEach>
             </tbody>
         </table>
     </div>
 </div>
 </form:form>
 <!-- end content-->
