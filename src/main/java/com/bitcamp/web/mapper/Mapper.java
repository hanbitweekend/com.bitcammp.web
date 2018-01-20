package com.bitcamp.web.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bitcamp.web.domain.Board;
import com.bitcamp.web.domain.Member;
@Repository
public interface Mapper {
	public Member selectMember(Member member);
	public List<Member> selectMembers();
	public List<Member> selectMemberByName(Member member);
	public String countMembers();
	public void insertMember(Member member);
	public void updateMember(Member member);
	public void deleteMember(Member member);
	public Board selectArticle(Board article);
	public List<Board> selectArticles();
	public List<Board> selectArticleByTitle(Board article);
	public String countArticles();
	public void insertArticle(Board article);
	public void updateArticle(Board article);
	public void deleteArticle(Board article);
	
	
}
