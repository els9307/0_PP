package com.priject.Papp;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.priject.service.PJ_service;
import com.priject.util.pagingAction;
import com.priject.vo.P_BOARD;
import com.priject.vo.P_COMMENT;
import com.priject.vo.P_USERINFO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private PJ_service ps;
	
	@Autowired
	private pagingAction page;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "P_Index.c";
	}
	
	
	//메인페이지
	@GetMapping("P_Index")
	public String P_Index() {
		return "P_Index.c";
	}
	
	//로그인페이지
	@GetMapping("P_Login")
	public String P_Login() {
		return "P_Login.s";
	}
	//회원가입페이지
	@GetMapping("P_Join")
	public String P_Join() {
		return "P_Join.s";
	}
	//회원가입
	@PostMapping("Join_Post")
	public String P_Join(P_USERINFO user) {
		ps.P_Join_Post(user);
		
		return "P_Login";
	}
	

	
	//로그인페이지
	//jsp에서 value id pwd 값을 가지고 뽑은 데이터들과 비교해서 입력비밀번호 값이 맞으면 alert("회원") , 아닐경우 alert("회원이 아닙니다")
	//아이디만 맞을경우 alert("비밀번호가 틀렸습니다") 둘다 틀렸을경우 aler("회원가입해야됨")
	// ex> if(id != ${arr.U_ID}) < 이런식으로 되나 확인해보기 
	@PostMapping("Login_Post")
	public String P_Login(String id,String pwd,HttpSession session) {
		P_USERINFO user = new P_USERINFO();
		if(id !=null) {
			user = ps.P_Login_Post(id);
		}
		if(pwd.equals(user.getU_PWD())){
			session.setAttribute("session_id", id);
			return "P_Index.c";
		}
		return "P_Login";
		
	
	}
	
	//테이블리스트페이지
	@GetMapping("P_Tables")
	public String P_Tables(String pageNum,String word,Model model) {
		word = word == null ? "" : word;
		System.out.println("word=" +word);
		String pageHtml;
		if (pageNum == null)
			pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		int count = ps.getCount(word);
		int pageSize = 5;
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		if (endRow > count)
			endRow = count;
		int boardNum = ((currentPage - 1) * pageSize);

		List<P_BOARD> arr = ps.P_Tables_View(startRow, endRow,word);
		pageHtml = page.paging(count, pageSize, currentPage,word);
		model.addAttribute("arr", arr);
		model.addAttribute("boardNum",boardNum);
		model.addAttribute("pageHtml",pageHtml);
		return "P_Tables.c";
	}
	
	//로그아웃기능
	@GetMapping("P_Logout")
	public String P_Logout(HttpSession session) {
		session.invalidate();
		return "P_Index.c";
	}
	
	//게시글작성
	@GetMapping("P_Board_Insert")
	public String P_Board_Insert() {
		return "P_Board_Insert.c";
	}
	@PostMapping("P_Board_Insert_POST")
	public String P_Board_Insert_POST(P_BOARD pb) {
		ps.P_Board_Insert_POST(pb);
		
		return "redirect:P_Tables.c";
	}

	/*
	 * @GetMapping("P_ListView") public void P_ListView() {}
	 */
	@GetMapping("P_ListView")
	public String getView(String num,Model model) {
		System.out.println(num);
		P_BOARD pb =ps.getList(num);
		model.addAttribute("pb",pb);
		return "P_ListView";
	}

	@GetMapping("P_Comment")
	public String getComment_S(String b_NUM,Model model) {
		System.out.println("코맨ㅌ"+b_NUM);

		List<P_COMMENT> arr = ps.getComment(b_NUM);
		model.addAttribute("arr",arr);
		System.out.println("도착");
		return "P_Comment";
	}
}
