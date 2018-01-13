package com.bitcamp.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bitcamp.web.domain.Member;
@Service @FunctionalInterface
public interface PostService {	
	public void post(Object o);
}
