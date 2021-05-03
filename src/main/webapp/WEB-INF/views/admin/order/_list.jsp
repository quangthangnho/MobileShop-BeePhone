<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>


<h4 class="card-title">THÔNG TIN ĐẶT HÀNG</h4>
<div class="material-datatables">
	<table id="datatables"
		class="table table-striped table-no-bordered table-hover"
		cellspacing="0" width="100%" style="width: 100%">
		<thead>
			<tr>
				<th>ID</th>
				<th>NGÀY ĐẶT HÀNG</th>
				<th>ĐỊA CHỈ</th>
				<th>SỐ TIỀN</th>
				<th>TRẠNG THÁI</th>
				<th>THANH TOÁN</th>
			
				<th class="disabled-sorting text-right">HÀNH ĐỘNG</th>
			</tr>
		</thead>

		<tbody id="myTableallOrder">
			<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.id}</td>
					<td>${item.orderDate}</td>
					<td>${item.address}</td>
					<td><fmt:formatNumber value="${item.amount}" minFractionDigits="0"/> &#8363;</td>
					<td><c:choose>
						<c:when test="${item.status == 0}">
							<label class="label label-primary" style="background-color:#43c801">CHỜ XÁC NHẬN</label>
						</c:when>
						<c:when test="${item.status == 1}">
							<label class="label label-info" style="background-color: #ffc801" >CHỜ LẤY HÀNG</label>
						</c:when>
						<c:when test="${item.status == 2}">
							<label class="label label-success" style="background-color: #0072ab">ĐANG GIAO
							</label>
						</c:when>
						<c:when test="${item.status == 3}">
							<label class="label label-success" style="background-color: #6cf">ĐÃ GIAO
							</label>
						</c:when>
						<c:when test="${item.status == -1}">
							<label class="label label-danger" style="; background-color: #c00">ĐÃ HỦY</label>
						</c:when>
					</c:choose></td>
					
					<td><c:choose>
						<c:when test="${item.payment == 0}">
							<label class="label label-primary" style=" background-color:#004400">Giao tận nơi</label>
						</c:when>
						<c:when test="${item.payment == 1}">
							<label class="label label-primary" style=" background-color:#0000FF">Nhận tại cửa hàng</label>
						</c:when>
						<c:when test="${item.payment == 2}">
							<label class="label label-primary" style=" background-color:#9c27b0">Thanh toán khi nhận hàng
							</label>
						</c:when>
					</c:choose></td>
					<td class="td-actions text-right">
						<a href="${ctrl}/edit/${item.id}" class="btn btn-sm btn-warning" title="Chi tiết">
			    			<i class="fa fa-pencil"></i>
			    		</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button>Export HTML table to CSV file</button>
</div>

    <script>
        function download_csv(csv, filename) {
    var csvFile;
    var downloadLink;

    // CSV FILE
    csvFile = new Blob([csv], {type: "text/csv"});

    // Download link
    downloadLink = document.createElement("a");

    // File name
    downloadLink.download = filename;

    // We have to create a link to the file
    downloadLink.href = window.URL.createObjectURL(csvFile);

    // Make sure that the link is not displayed
    downloadLink.style.display = "none";

    // Add the link to your DOM
    document.body.appendChild(downloadLink);

    // Lanzamos
    downloadLink.click();
}

function export_table_to_csv(html, filename) {
	var csv = [];
	var rows = document.querySelectorAll("table tr");
	
    for (var i = 0; i < rows.length; i++) {
		var row = [], cols = rows[i].querySelectorAll("td, th");
		
        for (var j = 0; j < cols.length; j++) 
            row.push(cols[j].innerText);
        
		csv.push(row.join(","));		
	}

    // Download CSV
    download_csv(csv.join("\n"), filename);
}

document.querySelector("button").addEventListener("click", function () {
    var html = document.querySelector("table").outerHTML;
	export_table_to_csv(html, "table.csv");
});

    </script>


 