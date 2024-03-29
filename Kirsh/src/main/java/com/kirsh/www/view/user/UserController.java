package com.kirsh.www.view.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kirsh.www.biz.user.UserVO;
import com.kirsh.www.biz.user.Impl.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	// 회원가입
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public String register(UserVO vo) {
		System.out.println("회원가입 처리");
		userService.insertUser(vo);
		return "redirect:login.jsp";
	}

	// 로그인
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(@ModelAttribute("user") UserVO vo, HttpSession session) {
		System.out.println("로그인 처리 실행");
		UserVO user = userService.getUser(vo);
		if (user != null) {
			session.setAttribute("userAuthority", user.getAuthority());
			session.setAttribute("userID", user.getUserID());
			System.out.println("로그인 완료");
			return "index.do";
		} else {
			session.invalidate();
			System.out.println("로그인 실패");
			return "redirect:login.jsp";
		}
	}

	@RequestMapping(value = "/index.do")
	public String showIndex() {

		return "redirect:index.jsp";
	}

	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index.jsp";
	}

	@RequestMapping("/userList.do")
	public String getUserList(UserVO vo, Model model) {
		if (vo.getSearchEmail() == null && vo.getSearchName() == null) {
			vo.setSearchEmail("");
			vo.setSearchName("");
		}
		List<UserVO> list = userService.getUserList(vo);
		model.addAttribute("userList", list);
		return "userList.jsp";
	}

	@RequestMapping(value = "/deleteUser.do", method = RequestMethod.POST)
	public String deleteUser(UserVO vo, @RequestParam(value = "user-check", required = false) List<String> list) {
		System.out.println("deleteUser 실행");
		for (String user : list) {
			System.out.println(user);
			userService.deleteUser(user);
		}
		return "userList.do";
	}

	@RequestMapping(value = "/mypage.do")
	public String myPage(UserVO vo, HttpSession session, Model model) {
		String userID = session.getAttribute("userID").toString();
		UserVO user = userService.getUserInfo(userID);
		int cnt = userService.getOrderCnt(userID);
		System.out.println(cnt);
		user.setOrderCnt(cnt);
		model.addAttribute("user", user);
		return "mypage.jsp";
	}
}
