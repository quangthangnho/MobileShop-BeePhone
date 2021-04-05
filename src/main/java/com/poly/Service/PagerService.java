package com.poly.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class PagerService {
	@Autowired
	HttpServletRequest request;
	
	/*
	 * getPageable: lấy ra thông tin phân trang, truyền qua dao lấy trang của nó*/
	@SuppressWarnings("unchecked")
	public Pageable getPageable() {//getPageable để phẩn trang
		/*dô sesssion (request.getSession().getAttribute("pager") lấy getAttribute có tên pager*/
		Map<String, Integer> pager = (Map<String, Integer>)request.getSession().getAttribute("pager");
		if(pager == null) {// nếu chưa có trong session
			pager = new HashMap<String, Integer>(); // tạo mới  1 cái
			pager.put("size", 10);// mỗi trang là 10 bản ghi
			pager.put("page", 0);// trang muốn truy xuất là trang số 0
			request.getSession().setAttribute("pager", pager);// tạo xong bỏ vô session
		}
		if(request.getParameter("page") != null) {// nếu có tham sô page
			int page = Integer.valueOf(request.getParameter("page"));// lấy giá trị tham số ra
			if(page < 0) {// nếu < 0 (trang nằm trước trang 0)
				pager.put("page", pager.get("count") - 1);// đưa về trang cuối
			}
			else if(page >= pager.get("count")) {// nếu page >= trang cuối
				pager.put("page", 0);// cho trở lại trang 0
			}
			else {//còn nếu ko phải 2 tình huống trên
				pager.put("page", page);// lấy ("page", page) bỏ dô page
			}
		}
		return PageRequest.of(pager.get("page"), pager.get("size"));//PageRequest: lấy trang số mấy ((pager.get("page")) , kích thước trang (pager.get("size"))
	}
	
	@SuppressWarnings("unchecked")
	public <T> List<T> getList(Page<T> page) { //getList nhận 1 page từ csdl
		Map<String, Integer> pager = (Map<String, Integer>)request.getSession().getAttribute("pager");// vào session lây pager ra
		pager.put("count", page.getTotalPages()); /* số trang:page.getTotalPages() */
		pager.put("total", (int)page.getTotalElements()); /* tổng số thực thể: page.getTotalElements() */
		pager.put("rows", page.getNumberOfElements()); /* số bản ghi hiện tại:getNumberOfElements() */
		return page.toList();
	}
	/*
	 *gọi hàm getList đưa cho nó 1 page ->thông tin tổng hợp của 1page -> bỏ vô page của map -> sau đó lấy list trả về trang index để hiện ra
	 *
	 **/
}
