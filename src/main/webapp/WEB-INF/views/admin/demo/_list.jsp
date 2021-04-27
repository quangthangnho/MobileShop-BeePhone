<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<h4 class="card-title">Hiển thị chuyên mục</h4>
<form:form action="${ctrl}/index" modelAttribute="form">
<div class="material-datatables">
	<table id="datatables"
		class="table table-striped table-no-bordered table-hover"
		cellspacing="0" width="100%" style="width: 100%">
		<thead>
			<tr>
				<th>ID</th>
				<th>TÊN LOẠI HÀNG</th>
	
				<th class="disabled-sorting text-right">HÀNH ĐỘNG</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.id}</td>
					<td>${item.name}</td>
		
					<td class="td-actions text-right">
						<a href="${ctrl}/edit/${item.id}" class="btn btn-sm btn-warning" title="Detail">
			    			<i class="fa fa-pencil">Detail</i>
			    		</a>
			    		<button formaction="${ctrl}/delete/${item.id}/${item.name}" onclick="">Xem thêm</button>	
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</form:form>
<!---------------------------------------  -->


<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
.class-button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

.class-button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container-r {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>

<div id="id01" class="modal">
  <form:form action="${ctrl}/index" class="modal-content animate" modelAttribute="form">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>

    <div class="container-r">
      <label for=""><b></b></label>

      <form:button formaction="" class="class-button" style="background-color: #2196F3;" title="Chi tiết" >
	        	<i class=""></i> Chi tiết
	  </form:button>
	  <c:choose>
				<c:when test="${empty form.getId()}">
					<button formaction="${ctrl}/delete/?id=${form.getId()}" class="btn btn-danger class-button"
						title="Xóa">
						<i class=""></i> Xóa
					</button>
				</c:when>
				<c:when test="${!empty form.getId()}">
					<button formaction="${ctrl}/delete?id=${form.id}" class="btn btn-danger class-button"
						title="Xóa" disabled="disabled">
						<i class=""></i> Xóa
					</button>
				</c:when>
			</c:choose>


    </div>

    <div class="container-r" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form:form>
</div>

<script>
// Get the modal

var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>