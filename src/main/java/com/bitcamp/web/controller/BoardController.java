package com.bitcamp.web.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bitcamp.web.domain.Board;
import com.bitcamp.web.mapper.Mapper;
import com.bitcamp.web.service.DeleteService;
import com.bitcamp.web.service.GetService;
import com.bitcamp.web.service.ListService;
import com.bitcamp.web.service.PostService;
import com.bitcamp.web.service.PutService;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired Board article;
	@Autowired Mapper mapper;
	@RequestMapping(value="/move/{dir}/{page}",method = RequestMethod.GET)
	public String move(@PathVariable("dir") String dir,
			@PathVariable("page") String page,
			Model model
			) {	
		logger.info("===move() ENTER===");
		
		return dir+"/"+page;
	}
	@RequestMapping(value="/board/search/{select}/{search-word}",method = RequestMethod.GET)
	public String search(@PathVariable("select")String select,
			@PathVariable("search-word")String searchWord,Model model) {
		System.out.println(">>>서치 페이지 이동");
		int iSeq = Integer.parseInt(searchWord);
		article.setSeq(iSeq);
		GetService gs = (Object o)->{return mapper.selectArticle(article);};
		article = (Board) gs.get(article);
		System.out.println("글 상세내역:"+article.toString());
		model.addAttribute("article",article);
		return "board/detail";
	}
	@RequestMapping(value="/board/delete/{seq}",method = RequestMethod.GET)
	public String delete(@PathVariable("seq")String seq) {
		System.out.println(">>>삭제 페이지 이동");
		int iSeq = Integer.parseInt(seq);
		article.setSeq(iSeq);
		DeleteService ds = (Object o)->{mapper.deleteArticle(article);};
		ds.delete(article);		
		return "redirect:/board/list";
	}
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/board/list",method = RequestMethod.GET)
	public String list(Model model) {
		System.out.println(">>>리스트 페이지 이동");
		ListService ls = ()->{return mapper.selectArticles();};
		List<Board> articles = (List<Board>) ls.list();
		GetService gs = (Object o)->{return mapper.countArticles();};
		String count = (String) gs.get("");
		System.out.println("게시글 수:"+count);
		model.addAttribute("articles",articles);
		model.addAttribute("count",count);
		return "board/list";
	}
	
	@RequestMapping(value="/move/board/update/{seq}",method = RequestMethod.GET)
	public String moveUpdate(@PathVariable("seq")String seq,
			Model model) {
		System.out.println(">>>업데이트로 페이지 이동");
		int iSeq = Integer.parseInt(seq);
		article.setSeq(iSeq);
		GetService gs = (Object o)->{return mapper.selectArticle(article);};
		article = (Board) gs.get(article);
		System.out.println("글 상세내역:"+article.toString());
		model.addAttribute("article",article);
		return "board/update";
	}
	
	
	@RequestMapping(value="/board/write",method = RequestMethod.POST)
	public String write(
			@RequestParam("title")String title,
			@RequestParam("name")String name,
			@RequestParam("message")String message, Model model) {
		logger.info("===TITLE IS {}===",title);
		logger.info("===NAME IS {}===",name);
		logger.info("===MESSAGE IS {}===",message);
		article.setTitle(title);
		article.setId(name);
		article.setContent(message);
		PostService ps = (Object o)-> { mapper.insertArticle(article);};
		ps.post(article);
		System.out.println("#####최근 seq:"+article.getSeq());
		GetService gs = (Object o)->{return mapper.selectArticle(article);};
		article = (Board) gs.get(article);
		System.out.println("글 상세내역:"+article.toString());
		model.addAttribute("article",article);
		return "board/detail";
		
		
	}
	@RequestMapping(value="/board/update",method=RequestMethod.POST)
	public String update(
			@RequestParam("title")String title,
			@RequestParam("name")String name,
			@RequestParam("message")String message,
			@RequestParam("seq")String seq,
			Model model) {
		article.setTitle(title);
		article.setId(name);
		article.setContent(message);
		int iSeq = Integer.parseInt(seq);
		article.setSeq(iSeq);
		PutService ps = (Object o)->{mapper.updateArticle(article);};
		ps.put(article);
		System.out.println("#####방금 수정한 seq:"+article.getSeq());
		GetService gs = (Object o)->{return mapper.selectArticle(article);};
		article = (Board) gs.get(article);
		System.out.println("글 상세내역:"+article.toString());
		model.addAttribute("article",article);
		return "board/detail";
	}
	
	
}
