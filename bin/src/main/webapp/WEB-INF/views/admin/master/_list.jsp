<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<h4 class="card-title">DANH SÁCH ADMIN</h4>
<div class="material-datatables" style="overflow-x:auto">
    <table id="datatables"
           class="table table-striped table-no-bordered table-hover"
           cellspacing="0" width="100%" style="width: 100%">
        <thead>
        <tr>
            <th>HỌ VÀ TÊN</th>
            <th>TÀI KHOẢN</th>
            <th>MẬT KHẨU</th>
            <th>EMAIL</th>
            <th>SỐ ĐIỆN THOẠI</th>
            <th>TRẠNG THÁI</th>
            <th>QUYỀN</th>
            <th>IMAGE</th>
            <th class="disabled-sorting text-right">HÀNH ĐỘNG</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="item" items="${listAdmin}">
            <tr>
                <td>${item.getFullname()}</td>
                <td>${item.getUsername()}</td>
                <td>${item.getPassword()}</td>
                <td>${item.getEmail()}</td>
                <td>${item.getPhoneNumber()}</td>
                <td><span class="badge badge-primary">${item.getStatus() >=1 ? "Đã kích hoạt" : "Chưa kích hoạt"}</span></td>
                <td><span class="badge badge-info">${item.getRole() == 'ADMIN' ? "Admin" : "Customer"}</span></td>
                <td>${item.getImage()}</td>
                <td class="td-actions text-right">
                    <a href = "<c:url value = "/admin/master/detail?id=${item.getId()}"/>" class="btn btn-sm btn-warning" title="Detail">
                        <i class="fa fa-pencil"></i>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
