package com.kirsh.www.view.order;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kirsh.www.biz.cart.CartVO;
import com.kirsh.www.biz.cart.impl.CartService;
import com.kirsh.www.biz.order.OrderVO;
import com.kirsh.www.biz.order.impl.OrderService;
import com.kirsh.www.biz.orderDetail.OrderDetailVO;
import com.kirsh.www.biz.orderDetail.impl.OrderDetailService;
import com.kirsh.www.biz.product.ProductVO;

@Controller
public class OrderController {

	@Autowired
	private OrderService orderService;

	@Autowired
	private OrderDetailService orderDetailService;
	
	@Autowired
	private CartService cartService;

	@RequestMapping(value = "/addOrder.do", method = RequestMethod.POST)
	public String addOrder(OrderVO vo, OrderDetailVO dvo, HttpSession session,
			@RequestParam("productCode") List<Integer> productCodeList,
			@RequestParam("productSize") List<String> productSizeList, @RequestParam("productCnt") List<Integer> productCntList,
			@RequestParam("productCntPrice") List<Integer> productPriceList, @RequestParam("productName") List<String> productNameList,
			@RequestParam("productImageUrl2") List<String> productImgList) {
		
		// userID 저장
		String userID = (String) session.getAttribute("userID");
		vo.setUserID(userID);
		
		// insert
		orderService.addOrder(vo);
		
		// orderNum값 가져와서 dvo에 저장
		int orderNum = vo.getOrderNum();
		dvo.setOrderNum(orderNum);
		
		for (int i = 0; i < productNameList.size(); i++) {
            OrderDetailVO orderDetailVO = new OrderDetailVO();
            orderDetailVO.setOrderNum(orderNum);
            orderDetailVO.setProductName(productNameList.get(i));
            orderDetailVO.setProductCode(productCodeList.get(i));
            orderDetailVO.setProductSize(productSizeList.get(i));
            orderDetailVO.setProductCnt(productCntList.get(i));
            orderDetailVO.setProductCntPrice(productPriceList.get(i));
            orderDetailVO.setProductImageUrl2(productImgList.get(i));
            orderDetailService.insertOrderDetail(orderDetailVO);
		}
		System.out.println(vo.getUserID());
		
		// cart 목록 delete
		CartVO cvo = new CartVO();
		cvo.setUserID(userID);
		cartService.deleteAllCart(cvo);
		return "index.jsp"; // 상품 구매 완료 페이지 추후 제작 예정
	}
	
	@RequestMapping(value="/getOrderList.do")
	public String getOrderList(HttpSession session, Model model) {
		
		// 세션 ID값 가져오기
		String userID = (String)session.getAttribute("userID");
		OrderVO vo = new OrderVO();
		vo.setUserID(userID);
		List<OrderVO> orderList = orderService.getOrderList(vo);
		model.addAttribute("orderList", orderList);
		for(int i=0; i<orderList.size(); i++) {
			OrderDetailVO dvo = new OrderDetailVO();
			dvo.setOrderNum(orderList.get(i).getOrderNum());
			List<OrderDetailVO> Ldvo = orderDetailService.getOrderDetail(dvo);
			orderList.get(i).setOrderDetailVO(Ldvo);
		}
		return "mypageOrderList.jsp";
	}
	
	@RequestMapping(value="/getOrderInfo.do")
	public String getOrderInfo(@RequestParam(value="orderNum", required = false) int orderNum, Model model) {
		OrderVO vo = new OrderVO();
		OrderDetailVO orderDetail = new OrderDetailVO();
		
		vo.setOrderNum(orderNum);
		orderDetail.setOrderNum(orderNum);
		
		OrderVO orderInfo = orderService.getOrder(vo);
		
		List<OrderDetailVO> ldvo = orderDetailService.getOrderDetail(orderDetail);
		orderInfo.setOrderDetailVO(ldvo);
		model.addAttribute("orderInfo", orderInfo);
		return "getOrderInfo.jsp";
	}
	
	@RequestMapping(value="/getOrderAllList.do")
	public String getOrderAllList(OrderVO vo, Model model) {
		List<OrderVO> list = orderService.getOrderAllList(vo);
		model.addAttribute("orderAllList", list);
		return "orderAllList.jsp";
	}
	
}
