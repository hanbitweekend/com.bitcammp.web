package com.bitcamp.web.service;

import java.util.List;

import org.springframework.stereotype.Service;
@Service @FunctionalInterface
public interface ListService {
	public List<?> list();
}
