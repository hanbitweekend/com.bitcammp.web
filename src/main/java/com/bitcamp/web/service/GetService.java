package com.bitcamp.web.service;

import org.springframework.stereotype.Service;

@Service @FunctionalInterface
public interface GetService {
	public Object get(Object o);
}
