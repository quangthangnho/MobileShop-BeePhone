<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


 <div class="card-content">
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
             <c:forEach var="item" items="${list}">
             <tr>
                 <td><img src="/static/assets-a/assets/images/products/${item.image}" style="width:60px; height: 60px;"></td>
                 <td>${item.name}</td>
                 <td>${(item.unitPrice *100)/100} VNĐ</td>
                 <td>${item.stock}</td>
            
                 <td class="td-actions text-right">
                   
                     <a href="${ctrl}/edit/${item.id}" class="btn btn-sm btn-warning" title="Detail">
			    			<i class="fa fa-pencil"></i>
			    	</a>
        
                 </td>
             </tr>
             </c:forEach>
             </tbody>
         </table>
     </div>
 </div>
 <!-- end content-->
