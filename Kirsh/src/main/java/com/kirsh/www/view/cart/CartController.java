package com.kirsh.www.view.cart;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kirsh.www.biz.cart.CartVO;
import com.kirsh.www.biz.cart.impl.CartService;
import com.kirsh.www.biz.user.UserVO;
import com.kirsh.www.biz.user.Impl.UserService;

@Controller
public class CartController {

	@Autowired
	CartService cartService;
	
	@Autowired
	UserService userService;

	@ResponseBody
	@RequestMapping(value = "/insertCart.do", method = RequestMethod.POST, consumes = "application/json")
	public String insertCart(@RequestBody List<Map<String, Object>> cartItems, HttpSession session) {
		System.out.println("insertCart 메소드 실행");
		String userID = (String) session.getAttribute("userID");
	    if (userID == null) {
	        return "redirect:login.jsp";
	    } else {
			try {
				for (Map<String, Object> item : cartItems) {
					CartVO vo = new CartVO();
					vo.setUserID(userID);
					vo.setProductCode(Integer.parseInt((String) item.get("productCode")));
					vo.setProductName(item.get("productName").toString());
					vo.setProductCnt(Integer.parseInt((String)item.get("productCnt")));
					vo.setProductPrice(Integer.parseInt((String)item.get("productPrice"))*vo.getProductCnt());
					vo.setProductSize(item.get("productSize").toString());
					System.out.println("userID : " + userID);
					System.out.println("productCode: " + item.get("productCode"));
					System.out.println("productName: " + item.get("productName"));
					System.out.println("productPrice: " + item.get("productPrice"));
					System.out.println("productCnt: " + item.get("productCnt"));
					System.out.println("productSize: " + item.get("productSize"));
					cartService.insertCart(vo);
				}
				
				return "success"; // 성공 시 응답
			} catch (Exception e) {
				e.printStackTrace();
				return "error"; // 실패 시 응답
			}
	    }
	}
	
	@ResponseBody
	@RequestMapping(value = "/getCartList.do", method = RequestMethod.POST, consumes = "application/json")
	public List<CartVO> getCartList(CartVO vo, HttpSession session, Model model) {
		String userID = (String) session.getAttribute("userID");
		vo.setUserID(userID);
		List<CartVO> cartList = cartService.getCartList(vo);
		model.addAttribute("cartList", cartList);
		return cartList;
	}
	
	@RequestMapping(value="/deleteCart.do")
	public String deleteCart(CartVO vo, HttpSession session, HttpServletRequest request) {
		String userID = (String) session.getAttribute("userID");
		vo.setUserID(userID);
		cartService.deleteCart(vo);
	    String referer = request.getHeader("Referer");
	    return "redirect:"+ referer;
	}
	
	@RequestMapping(value="/cartOrderInfo.do")
	public String cartOrderInfo(CartVO vo, HttpSession session, Model model) {
		String userID = (String) session.getAttribute("userID");
		vo.setUserID(userID);
		List<CartVO> cartList = cartService.getCartList(vo);
		model.addAttribute("cartList", cartList);
		UserVO userInfo = userService.getUserInfo(userID);
		model.addAttribute("userInfo", userInfo);
		return "orderInfo.jsp";
	}
}